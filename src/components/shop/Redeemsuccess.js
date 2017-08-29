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
class Redeemsuccess extends Component {

  constructor(props) {
    super(props);

    this.state = {
    }
  }

  componentWillMount = () => {
    this.state.shopdetail = this.props._shopdetail;
  }

  componentDidMount = () => {
  }


  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'Redeem'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          backgroundColor={AppColors.brand.shopprimary}
          onRightButtonPress={() => Actions.shopdashboard()}
          rightButtonTitle={'ปิด'}
          rightButtonTitleColor={'#fff'}
        />
        <Spacer size={64} />



        <View style={{ alignContent: 'center' }}>
          <Spacer size={15} />
          <View
            style={{
              flex: 1,
              alignItems: 'center',
              justifyContent: 'center',
              flexDirection: 'column',
              padding: 15,
              paddingTop: 90,
            }}>
            <Image
              style={{
                height: 150,
                width: 150,
              }}
              resizeMode={"cover"}
              source={require('../../assets/images/ic_application.png')}
            />
          </View>
          <Spacer size={115} />
          <Text style={{ color: '#6C7A89', fontSize: 18, fontWeight: 'normal', textAlign: 'center' }}>เราได้รับข้อมูลของคุณแล้ว</Text>
          <Text style={{ color: '#6C7A89', fontSize: 18, fontWeight: 'normal', textAlign: 'center' }}>ระบบจะใช้เวลาตรวจสอบ 5 - 10 นาที</Text>
          <Text style={{ color: '#6C7A89', fontSize: 18, fontWeight: 'normal', textAlign: 'center' }}>ขอบคุณคะ</Text>

        </View>


        <Spacer size={50} />
      </View>
    )
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Redeemsuccess);
