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
// import ImageSlider from './../slider/ImageSlider';
import LoadingContainer from 'react-native-loading-container';
import NavigationBar from 'react-native-navigation-bar';
import Permissions from 'react-native-permissions-zic';
import moment from 'moment';
import { Grid, Col, Row } from 'react-native-easy-grid';
import ImageSlider from 'react-native-elastic-image-slider';

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
      location: undefined,
      items: [],
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
        console.log('userdetail', value);
        var val = JSON.parse(value);
        this
          .props
          .dispatch({
            type: 'USER', user: val
          });
        if (val.id != "") {
          this.getordercnt(val.id);
        }

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


  getordercnt = (buyerid) => {

    var params = {
      buyerid: buyerid,
    };
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

    fetch(AppConfig.api + 'api/getallnotificationwithbuyerid', request).then((response) => {
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined 
        return responseData;
      })
      .then((data) => {
        console.log(data);
        if (data.result) {
          this.props.dispatch({ type: 'SHOPNOTI', shopnoti: data.result.neworder || 0 })
        }
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
        <View style={{ justifyContent: 'space-between', flexDirection: 'row', paddingLeft: 15, paddingRight: 15, }}>
          <Image
            style={{
              height: 100,
              width: 170,
              borderRadius: 3,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.shopdetail.img
            }} />

          <Image
            style={{
              height: 100,
              width: 100,
              borderRadius: 3,
              marginLeft: 15,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[0].img
            }} >
            {/* <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View> */}
          </Image>

          <Image
            style={{
              height: 100,
              width: 100,
              borderRadius: 3,
              marginLeft: 15,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[1].img
            }}>
            {/* <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View> */}
          </Image>

          <Image
            style={{
              height: 100,
              width: 100,
              borderRadius: 3,
              marginLeft: 15,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[2].img
            }} >
            {/* <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View> */}
          </Image>

          <Image
            style={{
              height: 100,
              width: 100,
              borderRadius: 3,
              marginLeft: 15,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[3].img
            }} >
            {/* <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View> */}
          </Image>
          <Image
            style={{
              height: 100,
              width: 100,
              borderRadius: 3,
              marginLeft: 10,
            }}
            resizeMode={"cover"}
            source={{
              uri: AppConfig.imgaddress + data.items[4].img
            }}>
            {/* <View style={{ position: 'absolute', bottom: 5, right: 5, backgroundColor: '#000', opacity: 0.5, paddingLeft: 10, paddingRight: 10, borderRadius: 8, }}><Text style={{ color: '#fff', textAlign: 'center', fontWeight: 'normal' }}>{numberWithCommas(data.items[0].price) + ' ฿'}</Text></View> */}
          </Image>
        </View>
      </TouchableWithoutFeedback>


    )
  }

  onBackHandle() {
    Actions.map;
  }

  renderblank = () => {
    console.log(this.state.items.length);
    if (this.state.items.length == 2) {
      return (
        <View style={{ height: 200, flex: 1, justifyContent: 'center' }}>
          <View style={{ alignItems: 'center' }}>
            <Icon name={'exclamation-circle'} size={35} color={'#BDC3C7'} />
          </View>
          <Text style={{ fontSize: 14, color: "#BDC3C7", textAlign: 'center' }}>เรายังไม่มีบริการในบริเวณพื้นที่ของท่าน</Text>
        </View>
      )
    }
  }

  renderRow(data, sec, i) {
    if (i == 0) {
      // let images = [
      //   {
      //     width: 150,
      //     height: 180,
      //     uri: 'http://chuantu.biz/t5/152/1501134247x2890173753.jpg'
      //   },
      //   {
      //     width: 200,
      //     height: 320,
      //     uri: 'http://chuantu.biz/t5/152/1501135055x3394041611.jpg'
      //   },
      //   {
      //     width: 200,
      //     height: 160,
      //     uri: 'http://chuantu.biz/t5/152/1501134194x2890173753.jpg'
      //   }
      // ];

      var images = [];
      data.images.forEach(function (element) {
        console.log(element);
        images.push({
          width: 800,
          height: 380,
          uri: element
        });
      }, this);
      return (
        <View>
          {/* <ImageSlider height={210} images={data.images} /> */}
          <ImageSlider
            images={images}
            initialPosition={0}
          />

        </View>)
    }
    else if (i == 1) {
      // var cates = [];

      // for (let i = 0; i < data.length; i++) {

      //   cates.push(
      //     <View key={i} style={{ backgroundColor: '#F1C40F', alignSelf: 'flex-start', padding: 5, paddingLeft: 15, paddingRight: 15, margin: 5, borderRadius: 50 }}>
      //       <Text style={{ color: '#FFF', fontWeight: 'normal' }}>{data[i].title}</Text>
      //     </View>
      //   )
      // }


      return (
        <View style={{ backgroundColor: '#FFF',borderBottomColor:'#ECF0F1',borderBottomWidth:1 }}>
          <Text style={{ color: '#3E3E3E', fontWeight: 'normal', fontSize: 18, textAlign: 'left', fontWeight: 'bold',margin:15,marginBottom:5, }}>หมวดหมู่</Text>
          <View style={{ padding: 5, flexDirection: 'row', alignSelf: 'flex-start', flexWrap: 'wrap' }}>

            <Grid>
              <Row>
                <TouchableWithoutFeedback onPress={() => Actions.cate({ cateid: 0, catetitle: 'ทั่วไป' })}>
                  <Col style={{ padding: 5 }}>
                    <View style={{ backgroundColor: '#F3F6F6', borderRadius: 5, flex: 1, justifyContent: 'center', alignContent: 'center', alignItems: 'center', padding: 15, }}>
                      <Image style={{ width: 50, height: 50 }} source={require('../../assets/cate/icfh5.png')} />
                    </View>
                    <Text style={{ color: '#3E3E3E', fontWeight: 'normal', fontSize: 12, textAlign: 'center' }}>ทั่วไป</Text>
                  </Col>
                </TouchableWithoutFeedback>
                <TouchableWithoutFeedback onPress={() => Actions.cate({ cateid: 2, catetitle: 'กาแฟ/เครื่องดื่ม' })}>
                  <Col style={{ padding: 5 }}>
                    <View style={{ backgroundColor: '#F3F6F6', borderRadius: 5, flex: 1, justifyContent: 'center', alignContent: 'center', alignItems: 'center', padding: 15, }}>
                      <Image style={{ width: 50, height: 50 }} source={require('../../assets/cate/icfh7.png')} />
                    </View>
                    <Text style={{ color: '#3E3E3E', fontWeight: 'normal', fontSize: 12, textAlign: 'center' }}>กาแฟ/เครื่องดื่ม</Text>
                  </Col>
                </TouchableWithoutFeedback>
                <TouchableWithoutFeedback onPress={() => Actions.cate({ cateid: 1, catetitle: 'อาหารคลีน' })}>
                  <Col style={{ padding: 5 }}>
                    <View style={{ backgroundColor: '#F3F6F6', borderRadius: 5, flex: 1, justifyContent: 'center', alignContent: 'center', alignItems: 'center', padding: 15, }}>
                      <Image style={{ width: 50, height: 50 }} source={require('../../assets/cate/icfh6.png')} />
                    </View>
                    <Text style={{ color: '#3E3E3E', fontWeight: 'normal', fontSize: 12, textAlign: 'center' }}>อาหารคลีน</Text>
                  </Col>
                </TouchableWithoutFeedback>
              </Row>
              <Row>
                <TouchableWithoutFeedback onPress={() => Actions.cate({ cateid: 3, catetitle: 'ทานเล่น' })}>
                  <Col style={{ padding: 5 }}>
                    <View style={{ backgroundColor: '#F3F6F6', borderRadius: 5, flex: 1, justifyContent: 'center', alignContent: 'center', alignItems: 'center', padding: 15, }}>
                      <Image style={{ width: 50, height: 50 }} source={require('../../assets/cate/icfh8.png')} />
                    </View>
                    <Text style={{ color: '#3E3E3E', fontWeight: 'normal', fontSize: 12, textAlign: 'center' }}>ทานเล่น</Text>
                  </Col>
                </TouchableWithoutFeedback>
                <TouchableWithoutFeedback onPress={() => Actions.cate({ cateid: 4, catetitle: 'ขนม/เบเกอรี่' })}>
                  <Col style={{ padding: 5 }}>
                    <View style={{ backgroundColor: '#F3F6F6', borderRadius: 5, flex: 1, justifyContent: 'center', alignContent: 'center', alignItems: 'center', padding: 15, }}>
                      <Image style={{ width: 50, height: 50 }} source={require('../../assets/cate/icfh9.png')} />
                    </View>
                    <Text style={{ color: '#3E3E3E', fontWeight: 'normal', fontSize: 12, textAlign: 'center' }}>ขนม/เบเกอรี่</Text>
                  </Col>
                </TouchableWithoutFeedback>
                <TouchableWithoutFeedback onPress={() => Actions.cate({ cateid: 5, catetitle: 'อาหารตามสั่ง' })}>
                  <Col style={{ padding: 5 }}>
                    <View style={{ backgroundColor: '#F3F6F6', borderRadius: 5, flex: 1, justifyContent: 'center', alignContent: 'center', alignItems: 'center', padding: 15, }}>
                      <Image style={{ width: 50, height: 50 }} source={require('../../assets/cate/icfh10.png')} />
                    </View>
                    <Text style={{ color: '#3E3E3E', fontWeight: 'normal', fontSize: 12, textAlign: 'center' }}>อาหารตามสั่ง</Text>
                  </Col>
                </TouchableWithoutFeedback>
              </Row>
            </Grid>

          </View>
          {this.renderblank()}
        </View>
      )
    }
    else {
      return (

        <View style={{ marginTop: 8, backgroundColor: '#fff',borderBottomColor:'#ECF0F1',borderBottomWidth:1 }}>
          <TouchableWithoutFeedback onPress={() => this.onItemClicked(data)} >
            <View>
              <View style={{ padding: 15, paddingBottom: 8, marginTop: 0, }}><Text style={{ color: '#464646', fontSize: 18, fontWeight: 'bold', textAlign: 'left' }}>{data.shopdetail.title}</Text></View>
              <View style={{ padding: 15, paddingTop: 0, paddingBottom: 8, flexDirection: 'row', justifyContent: 'space-between' }}>
                <Text style={{ color: '#BDC3C7', fontWeight: 'normal' }}>{data.shopdetail.catename}</Text>
                <Text style={{ color: '#BDC3C7', fontWeight: 'normal' }}><Icon name={'map-marker'} size={15} color={'#BDC3C7'} />  {data.shopdetail.distance_in_km + 'KM'}</Text>
              </View>
            </View>
          </TouchableWithoutFeedback>
          <ScrollView horizontal={true} showsHorizontalScrollIndicator={false} automaticallyAdjustContentInsets={false} >
            {this.renderShop(data)}
          </ScrollView>

          <View>
            <TouchableWithoutFeedback onPress={() => this.onItemClicked(data)} >
              <View style={{ padding: 15, paddingBottom: 5, }}>
                <Text numberOfLines={3} ellipsizeMode={'tail'} style={{ color: '#464646', fontWeight: 'normal' }}>{data.shopdetail.description || '-'}</Text>
              </View>
            </TouchableWithoutFeedback>
            <View style={{ flex: 1, padding: 15, paddingTop: 10, paddingBottom: 10, flexDirection: 'row', backgroundColor: "#FFFFFF", alignItems: 'center' }}>

              <ScrollView horizontal={true}>
                <View style={{
                  justifyContent: 'center',
                  flexDirection: 'column',
                  flex: 1,
                }}>
                  <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'center', }}>

                    {this.renderPayment(data.shopdetail)}
                    {this.renderDelivery(data.shopdetail.isdelivery)}
                    {this.renderPickup(data.shopdetail.ispickup)}

                  </View>
                </View>
              </ScrollView>
            </View>
          </View>

        </View>

      )
    }
  }

  renderPayment(data) {
    var payment = [];
    if (data.cashaccept == '1') {
      payment.push(<View key={data.id + 'cash'} style={{ flexDirection: 'row', marginRight: 15, }}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 5, }} name='check-circle-o' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> รับเงินสด</Text>
      </View>);

    }
    if (data.bankaccept == '1') {
      payment.push(<View key={data.id + 'bank'} style={{ flexDirection: 'row', marginRight: 15, }}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 5, }} name='check-circle-o' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> โอนเงิน</Text>
      </View>);
    }

    return payment;
  }


  renderDelivery(isdelivery) {
    if (isdelivery == '1') {
      return (<View style={{ flexDirection: 'row', marginRight: 15, }}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 5, }} name='motorcycle' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> บริการส่งถึงที่</Text>
      </View>);
    }
  }

  renderPickup(ispickup) {
    if (ispickup == '1') {
      return (<View style={{ flexDirection: 'row', marginRight: 15, }}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 5, }} name='map-pin' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> รับกลับ</Text></View>);
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
    var weekday = moment().format('ddd').toUpperCase();
    var time = moment().format('H:mm:ss');
    if (this.props._location != undefined) {
      var params = {
        day: weekday,
        time: time,
        lat: this.props._location.coords.latitude,
        lng: this.props._location.coords.longitude,
      };
    }
    else {
      var params = {
        day: weekday,
        time: time,
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

    let response = await fetch(AppConfig.api + 'api/getshopV3', request);
    return response.json();
  }

  async _onReadyAsync(data) {
    return new Promise((resolve) => {
      console.log(data.result);
      this.setState({
        items: data.result,
        dataSource: this.state.dataSource.cloneWithRows(data.result)
      }, resolve);
    });
  }


  render = () => {
    return (
      <View style={{ marginTop: -65, flex: 1, backgroundColor: '#FFF' }}>
        <NavigationBar
          title={this.props._address.city || ''}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#FFF'}
          backgroundColor={AppColors.brand.primary}
          leftButtonTitle={'Map'}
          leftButtonIcon={require('../../assets/images/ic_compass.png')}
          onLeftButtonPress={Actions.map}
          leftButtonTitleColor={'#FFF'}
        />
        <View style={{ marginTop: 64, flex: 1, }}>
          {this.loading()}
        </View>
      </View>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Home);
