import React, { Component } from 'react';
import { connect } from 'react-redux';
import NavigationBar from 'react-native-navigation-bar';
import {
  View,
  Alert,
  ListView,
  ScrollView,
  StyleSheet,
  TouchableOpacity,
  Image,
  InteractionManager,
  Platform,
  KeyboardAvoidingView,
  AsyncStorage,
  TouchableWithoutFeedback
} from 'react-native';
import MapView from 'react-native-maps';
import SleekLoadingIndicator from 'react-native-sleek-loading-indicator';
import { TabViewAnimated, TabBar } from 'react-native-tab-view';
import { SocialIcon } from 'react-native-elements';
import { Actions } from 'react-native-router-flux';
import { AppSizes } from '@theme/';
import * as appdataActions from '@redux/appdata/actions';
import { AppConfig } from '@constants/';
// Components
import {
  Alerts,
  Button,
  Card,
  Spacer,
  Text,
  List,
  ListItem,
  FormInput,
  FormLabel
} from '@components/ui/';
import Icon from 'react-native-vector-icons/Ionicons';
// Consts and Libs
import { AppColors, AppStyles } from '@theme/';

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5FCFF',
    justifyContent: 'center'
  },
  map: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
  },
  mapCenterMarker: {
    width: 32,
    height: 32,
    backgroundColor: 'black'
  },
  btn: {
    backgroundColor: '#F1C40F',
    paddingTop: 5,
    paddingBottom: 5,
    paddingLeft: 20,
    paddingRight: 20,
    marginTop: 20,
    marginBottom: 10,
    borderRadius: 50,
    alignItems: 'center'
  },
});

const mapStateToProps = state => ({
  _shippingaddress: state.appdataReducer.shippingaddress,
  _user: state.appdataReducer.user,
  _location: state.appdataReducer.location,
});

const mapDispatchToProps = {
  shippingaddress: appdataActions.shippingaddress,
  user: appdataActions.user,
  location: appdataActions.location
};

class Shippingaddress extends Component {
  static componentName = 'Shippingaddress';

  constructor(props) {
    super(props);
    this.state = {
      loading: false,
      isFollowuser: true,
      isFirstLoad: true,
      position: undefined,
      mapRegion: undefined,
      mapRegionInput: undefined,
      annotations: [],
      placename: null,
      city: undefined,
      subdistrict: undefined,
      didRegionchange: false,
      location: undefined,
      user: {
        tel: ''
        , address: ''
        , email: ''
        , fullname: ''
        , islogin: 0
        , id: ''
        , fbid: ''
      },
      loading: false,

      shippingaddress: undefined,
    }
  }

  componentWillMount = () => {
    this.setState({ user: this.props._user });
    if (this.props.rowData) {
      this.setState({ shippingaddress: this.props.rowData.address });
    }

  }

  componentDidMount = () => {
    this.setCurrentLoc();
  }


  setCurrentLoc() { 
    if (this.props.rowData != null) {
      this.setState({
        position: this.props._location,
        mapRegion: {
          longitude: parseFloat(this.props.rowData.lng), latitude: parseFloat(this.props.rowData.lat), latitudeDelta: 0.0043,
          longitudeDelta: 0.0034
        }
      });
    }
    else {
      navigator.geolocation.getCurrentPosition((position) => {

        this.setState({
          mapRegion: {
            longitude: position.coords.longitude, latitude: position.coords.latitude, latitudeDelta: 0.0043,
            longitudeDelta: 0.0034
          }
        });
      }, (error) => {
        alert(JSON.stringify(error))
      }, {
          enableHighAccuracy: Platform.OS != 'android',
          timeout: 20000,
          maximumAge: 1000
        });
    }
  }



  findmyLoc() {
    this.setState({ loading: true, });
    navigator.geolocation.getCurrentPosition((position) => {
      this.setState({ loading: false, });
      this.setState({
        position: position,
        mapRegion: {
          longitude: position.coords.longitude, latitude: position.coords.latitude, latitudeDelta: 0.0043,
          longitudeDelta: 0.0034
        }
      });
    }, (error) => {
      this.setState({ loading: false, });
      alert(JSON.stringify(error))
    }, {
        enableHighAccuracy: Platform.OS != 'android',
        timeout: 20000,
        maximumAge: 1000
      });

  }

  propAddress() {
    if (this.props.editable) {
      this.setState({ loading: true, });
      if (this.props._user.islogin == 0) return;
      var params = {
        id: this.props.rowData.id,
        lat: this.state.address.address.geometry.location.lat,
        lng: this.state.address.address.geometry.location.lng,
        address: this.state.shippingaddress,
        isactive: 1,
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

      fetch(AppConfig.api + 'api/updatebuyeraddress', request).then((response) => {
        return response.json() // << This is the problem
      })
        .then((responseData) => { // responseData = undefined
          return responseData;
        })
        .then((data) => {
          console.log(data);
        }).done(() => {
          this.setState({ loading: false, });
          Actions.pop({ refresh: {Reload:true} });
        });
    }
    else {
      // this.setState({ loading: true, });
      // if (this.props._user.islogin == 0) return;
      // var params = {
      //   userid: this.props._user.id,
      //   lat: this.state.address.address.geometry.location.lat,
      //   lng: this.state.address.address.geometry.location.lng,
      //   address: this.state.shippingaddress,
      // };
      // //console.log(params);
      // var formData = new FormData();

      // for (var k in params) {
      //   formData.append(k, params[k]);
      // }
      // var request = {
      //   method: 'POST',
      //   headers: {
      //     'Accept': 'application/json',
      //   },
      //   body: formData
      // };

      // fetch(AppConfig.api + 'api/updateshippingaddress', request).then((response) => {
      //   return response.json() // << This is the problem
      // })
      //   .then((responseData) => { // responseData = undefined
      //     return responseData;
      //   })
      //   .then((data) => {
      //     console.log(data);
      //   }).done(() => {


      //     AsyncStorage.setItem("userdetail", JSON.stringify({
      //       tel: this.props._user.tel
      //       , email: this.props._user.email
      //       , lat: this.state.address.address.geometry.location.lat
      //       , lng: this.state.address.address.geometry.location.lng
      //       , islogin: 1
      //       , name: this.props._user.name
      //       , id: this.props._user.id
      //       , address: this.state.shippingaddress
      //       , fbid: this.props._user.fbid
      //     }));



      //     this.props.dispatch({ type: 'SHIPPINGADDRESS', shippingaddress: this.state.shippingaddress });
      //     this.state.user.address = this.state.shippingaddress;
      //     this.props.dispatch({ type: 'USER', user: this.state.user });
      //     this.setState({ loading: false, });
      //     Actions.pop({ refresh: {} });
      //   });


      this.setState({ loading: true, });
      if (this.props._user.islogin == 0) return;
      var params = {
        buyerid: this.props._user.id,
        lat: this.state.address.address.geometry.location.lat,
        lng: this.state.address.address.geometry.location.lng,
        address: this.state.shippingaddress,
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

      fetch(AppConfig.api + 'api/setbuyeraddress', request).then((response) => {
        return response.json() // << This is the problem
      })
        .then((responseData) => { // responseData = undefined
          return responseData;
        })
        .then((data) => {
          console.log(data);
        }).done(() => {
          this.setState({ loading: false, });
          Actions.pop({ refresh: {Reload:true} });
        });


    }

  }



  _getAnnotations = (region) => {
    return [{
      longitude: region.longitude,
      latitude: region.latitude,
      title: 'ตำแหน่งปัจจุบันของคุณ',
    }];
  }

  _onRegionChangeComplete = (region) => {
    //if (this.state.isFirstLoad) {
    this.setState({
      location: region,
      didRegionchange: true,
      mapRegion: region,
      annotations: this._getAnnotations(region),
      isFirstLoad: false,
      placename: 'Loading...',
    });
    //} 


    this._getlocationfulladdress(region);
  };


  _getlocationfulladdress(region) {

    var url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=' + region.latitude + ',' + region.longitude + '&sensor=true';
    fetch(url)
      .then((response) => { return response.json() })
      .catch((error) => console.warn("fetch error:", error))
      .then((response) => {
        if (response.results.length > 0) {
          var formatted_address = response.results[0].formatted_address == undefined ? '' : response.results[0].formatted_address;
          var city = response.results[0].address_components[2].long_name == undefined ? '' : response.results[0].address_components[2].long_name;
          var subdistrict = response.results[0].address_components[0].long_name == undefined ? '' : response.results[0].address_components[0].long_name;
          this.setState({ address: { address: response.results[0], city: city, subdistrict: subdistrict, placename: formatted_address }, city: city, subdistrict: subdistrict, placename: formatted_address, });

        }

      })

  }

  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'ระบุตำแหน่งของคุณ'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          leftButtonIcon={require('../../../assets/images/ic_left-arrow.png')}
          backgroundColor={AppColors.brand.primary}
          leftButtonTitle={'ย้อนกลับ'}
          onLeftButtonPress={Actions.pop}
          leftButtonTitleColor={'#fff'}
        />

        <View style={{
          flex: 1,
          marginTop: 60,
          justifyContent: 'center',
          alignItems: 'center', backgroundColor: 'powderblue',
        }} >



          <MapView
            style={styles.map}
            onRegionChangeComplete={this._onRegionChangeComplete}
            showsUserLocation={true}
            followUserLocation={this.state.isFollowuser}
            showsCompass={true}
            showsMyLocationButton={true}
            toolbarEnabled={true}
            region={this.state.mapRegion}
          >

          </MapView>
          <TouchableWithoutFeedback
            onPress={() => this.findmyLoc()}
            activeOpacity={75 / 100} >
            <View style={{
              position: 'absolute',
              backgroundColor: 'rgba(255,255,255,0.9)',
              padding: 10,
              paddingTop: 5,
              paddingBottom: 5,
              right: 20,
              top: 20,
              borderRadius: 5,
              shadowColor: '#000000',
              shadowOffset: {
                width: 0,
                height: 1
              },
              shadowOpacity: .1,

            }}>
              <Icon
                name={'md-locate'}
                size={25}
                color={'#959da5'}
              />
            </View>
          </TouchableWithoutFeedback>

          <Image
            style={{
              width: 40,
              height: 40,
              top: -10
            }}

            resizeMode={"contain"}
            source={require('../../../assets/images/ic_setloc.png')}
          />





        </View>
        <KeyboardAvoidingView behavior='padding' style={{
          flex: 1,
          backgroundColor: '#FFFFFF',
          margin: 24,
          flexDirection: 'column',
          justifyContent: 'center',
          alignItems: 'center',
          padding: 8,
          borderRadius: 5

        }}>
          <View
          > 
          

            <FormInput  placeholder={'ระบุที่อยู่ของคุณที่นี่'} width={250} height={100} multiline={true} value={this.state.shippingaddress} fontSize={16} onChangeText={shippingaddress => this.setState({ shippingaddress })}
            />

            <TouchableOpacity
              style={styles.btn}
              onPress={() => this.propAddress()}
              activeOpacity={75 / 100}>
              <Text style={{ color: '#FFFFFF', fontSize: 18, fontWeight: 'normal', width: 70, textAlign: 'center', padding: 5, }}>บันทึก</Text>

            </TouchableOpacity>

          </View>

        </KeyboardAvoidingView >

        <Spacer size={50} />
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>

    )
  }
}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Shippingaddress);
