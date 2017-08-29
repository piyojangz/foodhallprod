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
import GridView from 'react-native-easy-gridview';
import MapView from 'react-native-maps';
import Slider from "react-native-slider";
import DateTimePicker from 'react-native-modal-datetime-picker';
import moment from 'moment';
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
  Touchable,
  KeyboardAvoidingView,
  Switch
} from 'react-native';

import SleekLoadingIndicator from 'react-native-sleek-loading-indicator';
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
  _shop: state.appdataReducer.shop,
  _shopdetail: state.appdataReducer.shopdetail,
});

// Any actions to map to the component?
const mapDispatchToProps = {
  shop: appdataActions.shop,
  shopdetail: appdataActions.shopdetail,
};

/* Component ==================================================================== */
class Setting extends Component {

  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });
    this.mapCircle = null;
    this.mapRef = null;
    this.state = {
      ds: [],
      loading: false,
      refreshing: false,
      dataSource: ds,
      dataSourceItems: ds,
      shopid: undefined,
      radius: 0,
      title: '',
      description: '',
      timeopen: '',
      timeclose: '',
      minprice: 0,
      location: undefined,
      shopdetail: undefined,
      isDateTimePickerVisibleOpen: false,
      isDateTimePickerVisibleClose: false,
      isdelivery: false,
      ispickup: false,
      isimmediatedelivery: false,
      isonedaydelivery: false,
    }
  }

  _handleDatePickedOpen = (date) => {
    var d = new Date(date);
    var n = ('0' + d.getHours()).slice(-2) + ":"
      + ('0' + d.getMinutes()).slice(-2) + ":" + ('0' + d.getSeconds()).slice(-2);
    console.log(n);
    this.setState({ isDateTimePickerVisibleOpen: false, shopdetail: { ...this.state.shopdetail, timeopen: n }, timeopen: n })
  };

  _handleDatePickedClose = (date) => {
    var d = new Date(date);
    var n = ('0' + d.getHours()).slice(-2) + ":"
      + ('0' + d.getMinutes()).slice(-2) + ":" + ('0' + d.getSeconds()).slice(-2);
    console.log(n);
    this.setState({ isDateTimePickerVisibleClose: false, shopdetail: { ...this.state.shopdetail, timeclose: n }, timeclose: n })
  };

  _showDateTimePickerOpen = () => this.setState({ isDateTimePickerVisibleOpen: true });

  _hideDateTimePickerOpen = () => this.setState({ isDateTimePickerVisibleOpen: false });

  _showDateTimePickerClose = () => this.setState({ isDateTimePickerVisibleClose: true });

  _hideDateTimePickerClose = () => this.setState({ isDateTimePickerVisibleClose: false });


  _handleDatePicked = (date) => {
    console.log('A date has been picked: ', date);
    this._hideDateTimePicker();
  };


  componentWillReceiveProps(props) {

    if (props.locationReload) {
      this.setState({ location: props.location.coords });
      setTimeout(
        () => {
          this.setMap();
        },
        1500
      );
    }
  }



  _onRefresh() {
    this.setState({ refreshing: true });
    this._loadInitialDataAsync().then((data) => {
      this._onReadyAsync(data).then(() => {
        this.setState({ refreshing: false });
      });
    });

  }

  componentWillMount = () => {
    this.state.shopdetail = this.props._shopdetail;
    this.setState({
      isdelivery: this.props._shopdetail.isdelivery == '1' ? true : false,
      ispickup: this.props._shopdetail.ispickup == '1' ? true : false,
      isimmediatedelivery: this.props._shopdetail.isimmediatedelivery == '1' ? true : false,
      isonedaydelivery: this.props._shopdetail.isonedaydelivery == '1' ? true : false,
      location: {
        latitude: parseFloat(this.props._shopdetail.lat),
        longitude: parseFloat(this.props._shopdetail.lng),
      },
      radius: this.props._shopdetail.radius,
      title: this.props._shopdetail.title,
      description: this.props._shopdetail.description,
      timeopen: this.props._shopdetail.timeopen,
      timeclose: this.props._shopdetail.timeclose,
      minprice: this.props._shopdetail.minprice,
    });

  }

  componentDidMount = () => {
    setTimeout(
      () => {
        this.setMap();
      },
      500
    );

    console.log(this.state.isdelivery);
  }

  setMap = () => {
    this.mapRef.fitToCoordinates(this.findCoordinates(parseFloat(this.state.location.latitude), parseFloat(this.state.location.longitude), (this.state.radius / 100))
      , { edgePadding: { top: 10, right: 10, bottom: 10, left: 10 }, animated: true })
  }

  findCoordinates = (lat, long, range) => {
    // How many points do we want? (should probably be function param..)
    var numberOfPoints = 16;
    var degreesPerPoint = 360 / numberOfPoints;

    // Keep track of the angle from centre to radius
    var currentAngle = 0;

    // The points on the radius will be lat+x2, long+y2
    var x2;
    var y2;
    // Track the points we generate to return at the end
    var points = [];

    for (var i = 0; i < numberOfPoints; i++) {
      // X2 point will be cosine of angle * radius (range)
      x2 = Math.cos(currentAngle) * range;
      // Y2 point will be sin * range
      y2 = Math.sin(currentAngle) * range;

      // Assuming here you're using points for each x,y..             
      //var p = new Point(lat + x2, long + y2);

      // save to our results array
      points.push({
        latitude: lat + x2,
        longitude: long + y2
      });

      // Shift our angle around for the next point
      currentAngle += degreesPerPoint;
    }
    // Return the points we've generated
    return points;
  }

  save() {

    this.setState({ loading: true });


    var params = {
      id: this.state.shopdetail.id,
      title: this.state.title,
      description: this.state.description, // เพิ่ม
      lat: this.state.location.latitude,
      lng: this.state.location.longitude,
      radius: this.state.radius,
      minprice: this.state.minprice,
      timeopen: this.state.timeopen, // เพิ่ม
      timeclose: this.state.timeclose, // เพิ่ม
      isdelivery: this.state.isdelivery ? 1 : 0, // เพิ่ม
      ispickup: this.state.ispickup ? 1 : 0, // เพิ่ม
      isimmediatedelivery: this.state.isimmediatedelivery ? 1 : 0, // เพิ่ม
      isonedaydelivery: this.state.isonedaydelivery ? 1 : 0, // เพิ่ม
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

    console.log(request);



    fetch(AppConfig.api + 'api/updateshop', request).then((response) => {
      console.log(response);
      this.setState({ loading: false });
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        console.log(responseData);
        this.setState({ loading: false });
        return responseData;
      })
      .then((data) => {
        console.log(data);
        this.setState({ loading: false });

        Actions.pop({ refresh: { isreload: true } });
      }).done();




  }


  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'ตั้งค่าร้านค้า'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          backgroundColor={AppColors.brand.shopprimary}
          onRightButtonPress={() => this.save()}
          leftButtonTitleColor={'#fff'}
          rightButtonTitle={'บันทึก'}
          rightButtonTitleColor={'#fff'}

          leftButtonIcon={require('../../assets/images/ic_left-arrow.png')}
          leftButtonTitle={'back'}
          onLeftButtonPress={Actions.pop}
          leftButtonTitleColor={'#fff'}
        />
        <Spacer size={64} />

        <ScrollView
          automaticallyAdjustContentInsets={false}
          style={[AppStyles.container]}
        >
          <KeyboardAvoidingView behavior='padding' style={{ flexGrow: 1 }}>
            <MapView
              ref={(ref) => { this.mapRef = ref }}

              style={{
                height: 240,
              }}



              LatLng={{
                latitude: parseFloat(this.state.location.latitude),
                longitude: parseFloat(this.state.location.longitude),
              }}
            >
              <MapView.Marker coordinate={{
                latitude: parseFloat(this.state.location.latitude),
                longitude: parseFloat(this.state.location.longitude),
              }} />

              <MapView.Circle
                key={parseFloat(this.state.location.latitude) + parseFloat(this.state.location.longitude) * this.state.radius}
                center={{
                  latitude: parseFloat(this.state.location.latitude),
                  longitude: parseFloat(this.state.location.longitude),
                }} radius={this.state.radius * 1000} fillColor={'rgba(2,177,106,0.5)'} />

            </MapView>
            <View style={[AppStyles.paddingHorizontal]}>
              <Spacer size={15} />
              <Button
                borderRadius={30}
                borderColor={'#1E8BC3'}
                color={'#1E8BC3'}
                small
                outlined
                title={'ตั้งค่าตำแหน่งของคุณ'}
                onPress={Actions.map}
              />
            </View>

            <View style={[AppStyles.paddingHorizontal]}>
              <Spacer size={15} />
              <FormLabel>รัศมีการให้บริการ (กิโลเมตร) <Text style={{color:'#f00'}}>*</Text></FormLabel>
              <Text>
                {this.state.radius} กิโลเมตร
              </Text>
              <Slider
                minimumValue={0}
                maximumValue={50}
                onSlidingComplete={() => this.setMap()}
                value={parseFloat(this.state.radius)}
                onValueChange={radius => this.setState({ radius })}
              />

            </View>


            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <FormLabel>ชื่อร้านค้า <Text style={{color:'#f00'}}>*</Text></FormLabel>
              <FormInput placeholder={'ระบุชื่อร้านค้า'} value={this.state.title} onChangeText={title => this.setState({ title })} />
            </View>

            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <FormLabel>อธิบายรายละเอียดร้านค้า <Text style={{color:'#f00'}}>*</Text></FormLabel>
              <FormInput placeholder={'ระบุคำอธิบายร้านค้า'} value={this.state.description} onChangeText={description => this.setState({ description })} multiline={true} style={{ marginRight: 0, }} />
            </View>

            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <FormLabel>เวลาเปิด <Text style={{color:'#f00'}}>*</Text></FormLabel>
              <TouchableOpacity onPress={this._showDateTimePickerOpen}>
                <Text>{this.state.shopdetail.timeopen}</Text>
              </TouchableOpacity>
            </View>


            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <FormLabel>เวลาปิด <Text style={{color:'#f00'}}>*</Text></FormLabel>
              <TouchableOpacity onPress={this._showDateTimePickerClose}>
                <Text>{this.state.shopdetail.timeclose}</Text>
              </TouchableOpacity>
            </View>


            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <FormLabel>จำนวนสั่งขั้นต่ำ/บาท (ใส่ 0 กรณีไม่มีขั้นต่ำ) <Text style={{color:'#f00'}}>*</Text></FormLabel>
              <FormInput keyboardType={'numeric'} placeholder={'0'} value={this.state.minprice} onChangeText={minprice => this.setState({ minprice })} />
            </View>


            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <View style={{ flexDirection: 'row', justifyContent: 'space-between', paddingBottom: 10, }}>
                <FormLabel>มีบริการสั่งล่วงหน้า</FormLabel>
                <Switch
                  value={this.state.ispickup}
                  onValueChange={val => this.setState({ ispickup: val })}
                  disabled={false}
                  activeText={'On'}
                  inActiveText={'Off'}
                  backgroundActive={'green'}
                  backgroundInactive={'gray'}
                  circleActiveColor={'#30a566'}
                  circleInActiveColor={'#000000'}
                />
              </View>
            </View>

            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <View style={{ flexDirection: 'row', justifyContent: 'space-between', paddingBottom: 10, }}>
                <FormLabel>มีบริการจัดส่ง</FormLabel>
                <Switch
                  value={this.state.isdelivery}
                  onValueChange={val => this.setState({ isdelivery: val })}
                  disabled={false}
                  activeText={'On'}
                  inActiveText={'Off'}
                  backgroundActive={'green'}
                  backgroundInactive={'gray'}
                  circleActiveColor={'#30a566'}
                  circleInActiveColor={'#000000'}
                />
              </View>
            </View>
            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 50, marginRight: 25, }}>
              <Spacer size={15} />
              <View style={{ flexDirection: 'row', justifyContent: 'space-between', paddingBottom: 10, }}>
                <FormLabel>ส่งได้ทันที</FormLabel>
                <Switch
                  value={this.state.isimmediatedelivery}
                  onValueChange={(val) => this.setState({ isimmediatedelivery: val })}
                  disabled={!this.state.isdelivery}
                  activeText={'On'}
                  inActiveText={'Off'}
                  backgroundActive={'green'}
                  backgroundInactive={'gray'}
                  circleActiveColor={'#30a566'}
                  circleInActiveColor={'#000000'}
                />
              </View>
            </View>
            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 50, marginRight: 25, }}>
              <Spacer size={15} />
              <View style={{ flexDirection: 'row', justifyContent: 'space-between', paddingBottom: 10, }}>
                <FormLabel>สั่งล่วงหน้า 1 วัน</FormLabel>
                <Switch
                  value={this.state.isonedaydelivery}
                  onValueChange={(val) => this.setState({ isonedaydelivery: val })}
                  disabled={!this.state.isdelivery}
                  activeText={'On'}
                  inActiveText={'Off'}
                  backgroundActive={'green'}
                  backgroundInactive={'gray'}
                  circleActiveColor={'#30a566'}
                  circleInActiveColor={'#000000'}
                />
              </View>
            </View>

            <DateTimePicker
              is24Hour={true}
              date={new Date(moment().format('Y-MM-D ' + this.state.shopdetail.timeopen))}
              mode={'time'}
              titleIOS={'เลือกเวลาเปิดร้าน'}
              isVisible={this.state.isDateTimePickerVisibleOpen}
              onConfirm={this._handleDatePickedOpen}
              onCancel={this._hideDateTimePickerOpen}
            />

            <DateTimePicker
              is24Hour={true}
              date={new Date(moment().format('Y-MM-D ' + this.state.shopdetail.timeclose))}
              mode={'time'}
              titleIOS={'เลือกเวลาปิดร้าน'}
              isVisible={this.state.isDateTimePickerVisibleClose}
              onConfirm={this._handleDatePickedClose}
              onCancel={this._hideDateTimePickerClose}
            />


          </KeyboardAvoidingView>

        </ScrollView>

        <Spacer size={50} />
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>
    )
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Setting);
