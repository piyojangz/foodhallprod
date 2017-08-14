/**
 * Placeholder Scene
 *
    <Placeholder text={"Hello World"} />
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React, { Component } from 'react';
import { connect } from 'react-redux';
import * as Animatable from 'react-native-animatable';
import { AppConfig } from '@constants/';
import PropTypes from 'prop-types';
import ImageSlider from './../slider/ImageSlider';
import LoadingContainer from 'react-native-loading-container';
import NavigationBar from 'react-native-navigation-bar';
import Permissions from 'react-native-permissions-zic';

import {
  View,
  Alert,
  ListView,
  ScrollView,
  StyleSheet,
  TouchableOpacity,
  Image,
  TouchableWithoutFeedback,
  RefreshControl,
  ActivityIndicator,
  StatusBar,
  Platform,
  AsyncStorage,
  PushNotificationIOS,
  AlertIOS,
  Touchable
} from 'react-native';


import { TabViewAnimated, TabBar } from 'react-native-tab-view';
import Icon from 'react-native-vector-icons/FontAwesome';
// Consts and Libs
import { AppColors, AppStyles, AppSizes } from '@theme/';
//Action
import * as appdataActions from '@redux/appdata/actions';
// Components

import {
  Alerts,
  Card,
  Spacer,
  Text,
  List,
  ListItem,
  FormInput,
  Button,
  FormLabel,
} from '@components/ui/';
import { Actions } from 'react-native-router-flux';

var FCM;
if (Platform.OS === "android") {
  FCM = require('../general/FCM.android');
}
/* Styles ==================================================================== */
const styles = StyleSheet.create({
  btn: {
    backgroundColor: '#ecf0f1',
    paddingTop: 5,
    paddingBottom: 5,
    paddingLeft: 20,
    paddingRight: 20,
    margin: 10,
    borderRadius: 50,
  },
});

function numberWithCommas(x) {
  return x
    .toString()
    .replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}



// What data from the store shall we send to the component?
const mapStateToProps = state => ({
  stotal: numberWithCommas(state.appdataReducer.total),
  _address: state.appdataReducer.address,
  _user: state.appdataReducer.user,
  _location: state.appdataReducer.location,
});

// Any actions to map to the component?
const mapDispatchToProps = {
  total: appdataActions.total,
  address: appdataActions.address,
  user: appdataActions.user,
  location: appdataActions.location
};

/* Component ==================================================================== */
class Home extends Component {

  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });

    this.props._address.city = "Loading...";
    this.state = {
      ds: [],
      refreshing: false,
      hasloc: false,
      dataSource: ds,
      location: undefined
    }


  }

  onItemClicked(data) {
    Actions.shopdetail({ shopdetail: data });
  }
  _onRefresh() {
    this.setState({ refreshing: true });
    this._loadInitialDataAsync().then((data) => {
      this._onReadyAsync(data).then(() => {
        this.setState({ refreshing: false });
      });
    });

  }


  componentWillReceiveProps(props) {
    if (this.props._location != undefined) {
      this.setState({ location: this.props._location });
      if (props.locationReload) {
        setTimeout(
          () => { this._onRefresh(); },
          500
        );
      }
    }
  }





  _getlocationfulladdress(lat, lng) {
    var url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=' + lat + ',' + lng + '&sensor=true';
    fetch(url)
      .then((response) => { return response.json() })
      .catch((error) => console.warn("fetch error:", error))
      .then((response) => {
        if (response.results.length > 0) {
          var formatted_address = response.results[0].formatted_address == undefined ? '' : response.results[0].formatted_address;
          var city = response.results[0].address_components[2].long_name == undefined ? '' : response.results[0].address_components[2].long_name;
          var subdistrict = response.results[0].address_components[0].long_name == undefined ? '' : response.results[0].address_components[0].long_name;
          this.setState({ address: { address: response.results[0], city: city, subdistrict: subdistrict, placename: formatted_address }, city: city, subdistrict: subdistrict, placename: formatted_address, hasloc: true });
          this
            .props
            .dispatch({ type: 'ADDRESS', address: this.state.address });
        }

      })
  }

  setCurrentLoc() {
    if (this.state.location != undefined) {
      console.log("updateLoc = false");
      this._getlocationfulladdress(this.state.location.coords.latitude, this.state.location.coords.longitude);
      this.updateLoc(false);
    }
    else {
      this.updateLoc(true);
    }

  }

  updateLoc(isUpdate) {
    navigator.geolocation.getCurrentPosition((position) => {
      AsyncStorage.setItem("userlocation", JSON.stringify(position));
      this.props.dispatch({ type: 'LOCATION', location: position });
      if (isUpdate) {
        this._getlocationfulladdress(position.coords.latitude, position.coords.longitude);
      }
    }, (error) => {
      console.log(JSON.stringify(error))
    }, {
        enableHighAccuracy: Platform.OS != 'android',
        timeout: 20000,
        maximumAge: 1000
      });
  }

  componentWillMount() {
    AsyncStorage.getItem("userdetail").then((value) => {
      if (value != null) {
        this
          .props
          .dispatch({
            type: 'USER', user: JSON.parse(value)
          });
      }

      if (Platform.OS === "ios") {
        PushNotificationIOS.requestPermissions();
        PushNotificationIOS.addEventListener('register', function (token) {
          console.log('You are registered and the device token is:', token)
        });

        PushNotificationIOS.addEventListener('registrationError', function (error) {
          console.log(error); // {"NSLocalizedDescription":"no valid 'aps-environment' entitlement string found for application"}
        });
        PushNotificationIOS.addEventListener('register', this._onRegistered.bind(this));
        PushNotificationIOS.addEventListener('localNotification', this._onLocalNotification.bind(this));



      }
    }).done();

    AsyncStorage.getItem("userlocation").then((value) => {
      if (value != null) {
        this.state.location = JSON.parse(value);
        this.props.dispatch({ type: 'LOCATION', location: JSON.parse(value) });
      }
      this.setCurrentLoc();
    }).done();

  }


  componentDidMount = () => {
    // Show status bar on app launch
    StatusBar.setHidden(false);

    if (Platform.OS === "android") {
      StatusBar.setBackgroundColor(AppColors.brand.primary, true);
      Permissions.getPermissionStatus('location')
        .then(response => {
          //response is one of: 'authorized', 'denied', 'restricted', or 'undetermined' 
          console.log(response);
          if (response != 'authorized') {
            this._alertForLoacationPermission();
          }
          this.setState({ locationPermission: response })
        });
    }
    if (Platform.OS === "android") {
      FCM.FCM.getFCMToken().then(token => {
        this.updatetoken(token);
        // store fcm token in your server
      });
    }
  }


  updatetoken(token) {
    console.log('registerAndroidToken : ' + token);
    if (this.props._user.islogin == 0) return;
    var params = {
      userid: this.props._user.id,
      token: token,
    };
    //console.log(params);
    var formData = new FormData();

    for (var k in params) {
      formData.append(k, params[k]);
    }
    var request = {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
      },
      body: formData
    };

    fetch(AppConfig.api + 'api/setbuyertoken', request).then((response) => {
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        return responseData;
      })
      .then((data) => {
      }).done();
  }



  _alertForLoacationPermission() {
    Alert.alert(
      'Can we access your location?',
      'We need access for using show nerby shop around you.',
      [
        { text: 'No way', onPress: () => console.log('permission denied'), style: 'cancel' },
        this.state.locationPermission == 'undetermined' ?
          { text: 'OK', onPress: this._requestPermission.bind(this) }
          : { text: 'Open Settings', onPress: Permissions.openSettings }
      ]
    )
  }


  _requestPermission() {
    Permissions.requestPermission('location')
      .then(response => {
        //returns once the user has chosen to 'allow' or to 'not allow' access 
        //response is one of: 'authorized', 'denied', 'restricted', or 'undetermined' 
        this.setState({ locationPermission: response })
      });
  }


  _onRegistered(deviceToken) {
    console.log('_onRegistered');
    this.registeriOSToken(deviceToken);
  }

  registeriOSToken(token) {
    console.log('registeriOSToken : ' + token);
    if (this.props._user.islogin == 0) return;
    var params = {
      userid: this.props._user.id,
      iostoken: token,
    };
    //console.log(params);
    var formData = new FormData();

    for (var k in params) {
      formData.append(k, params[k]);
    }
    var request = {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
      },
      body: formData
    };

    fetch(AppConfig.api + 'api/setbuyertoken', request).then((response) => {
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        return responseData;
      })
      .then((data) => {
      }).done();
  }


  _onRegistrationError(error) {
    AlertIOS.alert(
      'Failed To Register For Remote Push',
      `Error (${error.code}): ${error.message}`,
      [{
        text: 'Dismiss',
        onPress: null,
      }]
    );
  }

  _onRemoteNotification(notification) {
    AlertIOS.alert(
      'Push Notification Received',
      'Alert message: ' + notification.getMessage(),
      [{
        text: 'Dismiss',
        onPress: null,
      }]
    );
  }

  _onLocalNotification(notification) {
    AlertIOS.alert(
      'Local Notification Received',
      'Alert message: ' + notification.getMessage(),
      [{
        text: 'Dismiss',
        onPress: null,
      }]
    );
  }

  renderShop = (data) => {
    return (
      <TouchableWithoutFeedback onPress={() => this.onItemClicked(data)} >
        <View style={{ justifyContent: 'space-between', flexDirection: 'row' }}>
          <Image
            style={{
              height: 130,
              width: 250,
              borderRadius: 3,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.shopdetail.img
            }} />

          <Image
            style={{
              height: 130,
              width: 130,
              borderRadius: 3,
              marginLeft: 15,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[0].img
            }} >
            <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View>
          </Image>

          <Image
            style={{
              height: 130,
              width: 130,
              borderRadius: 3,
              marginLeft: 15,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[1].img
            }}>
            <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View>
          </Image>

          <Image
            style={{
              height: 130,
              width: 130,
              borderRadius: 3,
              marginLeft: 15,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[2].img
            }} >
            <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View>
          </Image>

          <Image
            style={{
              height: 130,
              width: 130,
              borderRadius: 3,
              marginLeft: 15,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[3].img
            }} >
            <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View>
          </Image>
          <Image
            style={{
              height: 130,
              width: 130,
              borderRadius: 3,
              marginLeft: 10,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[4].img
            }}>
            <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View>
          </Image>
        </View>
      </TouchableWithoutFeedback>


    )
  }

  onBackHandle() {
    Actions.map;
  }

  renderRow = (data) => {
    console.log(data);
    if (data.id == 0) {
      return (
        <View style={{ marginBottom: 5, }}>
          <ImageSlider height={200} images={data.images} />
        </View>)
    }
    else {
      return (

        <View style={{ marginTop: 8, backgroundColor: '#fff' }}>
          <TouchableWithoutFeedback onPress={() => this.onItemClicked(data)} >
            <View>
              <View style={{ padding: 15, paddingBottom: 8, marginTop: 8, }}><Text style={{ color: '#464646', fontSize: 22, fontWeight: 'bold', textAlign: 'center' }}>{data.shopdetail.title}</Text></View>
              <View style={{ padding: 15, paddingTop: 0, paddingBottom: 8, flexDirection: 'row', justifyContent: 'space-between' }}>
                <Text style={{ color: '#E67E22', fontWeight: 'normal' }}>{data.shopdetail.catename}</Text>
                <Text style={{ color: '#BDC3C7', fontWeight: 'normal' }}><Icon name={'map-marker'} size={15} color={'#BDC3C7'} />  {data.shopdetail.distance_in_km + 'KM'}</Text>
              </View>
            </View>
          </TouchableWithoutFeedback>
          <ScrollView toc horizontal={true} showsHorizontalScrollIndicator={false} contentInset={{ left: 15, right: 15, }} contentOffset={{ x: -15 }} automaticallyAdjustContentInsets={false} >
            {this.renderShop(data)}
          </ScrollView>
          <TouchableWithoutFeedback onPress={() => this.onItemClicked(data)} >
            <View>
              <View style={{ padding: 15, paddingBottom: 5, }}>
                <Text style={{ color: '#464646', fontWeight: 'normal' }}>{data.shopdetail.description || '-'}</Text>
              </View>

              <View style={{ flex: 1, padding: 15, paddingTop: 10, paddingBottom: 10, flexDirection: 'row', backgroundColor: "#FFFFFF", alignItems: 'center' }}>
                <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'center', }}>
                  <Icon style={{ fontSize: 16, color: '#E67E22', paddingTop: 3, }} name='check-circle-o' />
                  <Text style={{ fontSize: 14, color: "#E67E22", }}> รับเงินสด</Text>

                  {this.renderDelivery(data.shopdetail.isdelivery)}
                  {this.renderPickup(data.shopdetail.ispickup)}


                </View>
              </View>
            </View>
          </TouchableWithoutFeedback>
        </View>

      )
    }
  }

  renderDelivery(isdelivery) {
    if (isdelivery == '1') {
      return (<View style={{ flexDirection: 'row' }}>
        <Icon style={{ fontSize: 16, color: '#E67E22', marginLeft: 15, paddingTop: 3, }} name='motorcycle' />
        <Text style={{ fontSize: 14, color: "#E67E22", }}> บริการส่งถึงที่</Text>
      </View>);
    }
  }

  renderPickup(ispickup) {
    if (ispickup == '1') {
      return (<View style={{ flexDirection: 'row' }}>
        <Icon style={{ fontSize: 16, color: '#E67E22', marginLeft: 15, paddingTop: 3, }} name='map-pin' />
        <Text style={{ fontSize: 14, color: "#E67E22", }}> รับกลับ</Text></View>);
    }
  }



  loading = () => {
    if (!this.state.hasloc) {
      return (<View style={{ flex: 1 }}>
        <ActivityIndicator
          style={{
            flex: 1, flexDirection: 'row',
            alignItems: 'center',
            justifyContent: 'center'
          }}
          animating
          size={'large'}
          color={'#AAA'}
        />
      </View>);
    } else {
      return (
        <LoadingContainer
          onError={e => console.log(e)}
          onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
          onReadyAsync={this._onReadyAsync.bind(this)}>
          {this.rendershop()}
        </LoadingContainer>
      );
    }
  }


  rendershop = () => {
    return (
      <List style={{ marginTop: 0, flex: 1, }}
        enableEmptySections={true}
      >
        <ListView
          refreshControl={
            <RefreshControl
              refreshing={this.state.refreshing}
              onRefresh={this._onRefresh.bind(this)}
            />
          }
          renderRow={this.renderRow.bind(this)}
          dataSource={this.state.dataSource}
        />
      </List>
    );

  }


  async _loadInitialDataAsync() {
    var params = {};
    if (this.props._location != undefined) {
      var params = {
        lat: this.props._location.coords.latitude,
        lng: this.props._location.coords.longitude,
      };
    }
    else {
      var params = {
        lat: this.state.address.address.geometry.location.lat,
        lng: this.state.address.address.geometry.location.lng,
      };
    }



    var formData = new FormData();
    for (var k in params) {
      formData.append(k, params[k]);
    }
    var request = {
      method: 'POST',
      body: formData
    };

    let response = await fetch(AppConfig.api + 'api/getshopV2', request);
    return response.json();
  }

  async _onReadyAsync(data) {
    return new Promise((resolve) => {
      console.log(data.result);
      this.setState({
        dataSource: this.state.dataSource.cloneWithRows(data.result)
      }, resolve);
    });
  }


  render = () => {
    return (
      <View style={{ marginTop: -65, flex: 1, backgroundColor: '#F2F1EF' }}>
        <NavigationBar
          title={this.props._address.city || ''}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          backgroundColor={AppColors.brand.primary}
          leftButtonTitle={'Map'}
          leftButtonIcon={require('../../assets/images/ic_compass.png')}
          onLeftButtonPress={Actions.map}
          leftButtonTitleColor={'#fff'}
        />
        <View style={{ marginTop: 64, flex: 1, }}>
          {this.loading()}
        </View>
      </View>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Home);
