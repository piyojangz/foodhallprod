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
  TouchableWithoutFeedback,
  AsyncStorage
} from 'react-native';
import SleekLoadingIndicator from 'react-native-sleek-loading-indicator';
import MapView from 'react-native-maps';
import { TabViewAnimated, TabBar } from 'react-native-tab-view';
import { SocialIcon } from 'react-native-elements';
import { Actions } from 'react-native-router-flux';
import { AppSizes } from '@theme/';
import * as appdataActions from '@redux/appdata/actions';
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
});

const mapStateToProps = state => ({
  _address: state.appdataReducer.address,
  _location: state.appdataReducer.location,
});

const mapDispatchToProps = {
  address: appdataActions.address,
  location: appdataActions.location
};

class Map extends Component {
  static componentName = 'Map';

  constructor(props) {
    super(props);
    this.state = {
      loading: false,
      position: undefined,
      isFollowuser: true,
      isFirstLoad: true,
      mapRegion: undefined,
      mapRegionInput: undefined,
      annotations: [],
      placename: null,
      city: undefined,
      subdistrict: undefined,
      didRegionchange: false,
      address: []
    }
  }


  componentDidMount = () => {
    this.setCurrentLoc();
  }


  setCurrentLoc() {
    console.log("setCurrentLoc", this.props._location);
    if (this.props._location != undefined) {
      this.setState({
        position: this.props._location,
        mapRegion: {
          longitude: this.props._location.coords.longitude, latitude: this.props._location.coords.latitude, latitudeDelta: 0.0043,
          longitudeDelta: 0.0034
        }
      });
    }
    else {
      navigator.geolocation.getCurrentPosition((position) => {
        this.setState({
          position: position,
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
    AsyncStorage.setItem("userlocation", JSON.stringify(this.state.position));
    this.props.dispatch({ type: 'LOCATION', location: this.state.position });
    Actions.pop({ refresh: { locationReload: true, location: this.state.position } });
    this
      .props
      .dispatch({ type: 'ADDRESS', address: this.state.address });
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
    });
    //} 

    this.setState({
      position: {
        coords: {
          latitude: region.latitude,
          longitude: region.longitude,
        }
      },
      placename: 'Loading...',
    });

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
          leftButtonTitle={'เสร็จสิ้น'}
          onLeftButtonPress={() => this.propAddress()}
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
        <TouchableWithoutFeedback
          onPress={() => this.propAddress()}
          activeOpacity={75 / 100}>
          <View
            style={{
              position: 'absolute',
              bottom: (Platform.OS === 'ios') ? 54 : 84,
              left: 0,
              right: 0,
              flex: 1,
              backgroundColor: '#FFFFFF',
              margin: 24,
              flexDirection: 'row',
              justifyContent: 'center',
              alignItems: 'center',
              padding: 8,
              borderRadius: 5

            }}>
            <Text
              style={{
                flex: .8,
                alignItems: 'center',
                color: "rgba(56,200,114,1)",
                fontSize: 16,
                fontWeight: 'normal',
                fontFamily: 'Helvetica Neue',
              }}>
              {this.state.placename}
            </Text>
            <View
              style={{
                flex: .2,
                flexDirection: 'row',
                justifyContent: 'flex-end',
                alignItems: 'center',
              }}>
              <Image
                style={{
                  width: 20,
                  height: 20,
                }}

                resizeMode={"contain"}
                source={require('../../../assets/images/ic_next.png')}
              />
            </View>
          </View>
        </TouchableWithoutFeedback>
        <Spacer size={50} />
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>

    )
  }
}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Map);
