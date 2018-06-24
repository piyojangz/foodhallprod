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
import ImagePicker from 'react-native-image-crop-picker';
import moment from 'moment';
import AppIntro from 'react-native-app-intro';
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
  ToastAndroid,
  Text,
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
  slide: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#9DD6EB',
    padding: 15,
  },
  text: {
    textAlign: 'center',
    color: '#fff',
    fontSize: 24,
    fontWeight: 'bold',
  },
});




// What data from the store shall we send to the component?
const mapStateToProps = state => ({
  _shop: state.appdataReducer.shop,
  _shopdetail: state.appdataReducer.shopdetail,
  _user: state.appdataReducer.user
});

// Any actions to map to the component?
const mapDispatchToProps = {
  shop: appdataActions.shop,
  shopdetail: appdataActions.shopdetail,
  user: appdataActions.user
};

/* Component ==================================================================== */
class Introduceshop extends Component {

  constructor(props) {
    super(props);
    this.state = {
      loading: false,
      showslide: false,
      userdetail: undefined,
    }
  }

  componentWillMount = () => {
    this.setState({ userdetail: this.props._user });
  }

  componentDidMount = () => {
    console.log(this.state.userdetail);
  }

  onSkipBtnHandle = (index) => {
    Actions.shopfirstsetting();
    //console.log(index);
  }
  doneBtnHandle = () => {
    //Alert.alert('Done');
    Actions.shopfirstsetting();
  }
  nextBtnHandle = (index) => {
    //Alert.alert('Next');
    console.log(index);
  }
  onSlideChangeHandle = (index, total) => {
    console.log(index, total);
  }

  renderslide = () => {
    this.setState({ showslide: true });
  }


  renderappintro = () => {
    if (this.state.showslide) {

      return (
        <LoadingContainer
        onError={e => console.log(e)}
        onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
        onReadyAsync={this._onReadyAsync.bind(this)}>
       
        <AppIntro
          onNextBtnClick={this.nextBtnHandle}
          onDoneBtnClick={this.doneBtnHandle}
          onSkipBtnClick={this.onSkipBtnHandle}
          onSlideChange={this.onSlideChangeHandle}>
          <View style={[AppStyles.container, { flex: 1, justifyContent: 'center', alignItems: 'center', backgroundColor: '#00B16A' }]}>
            <View level={-10}><Image source={require('../../assets/images/icfh1.png')} style={{ width: 110, height: 220 }} resizeMode={'contain'} /></View>
            <View level={-50}><Text style={styles.text}>Foodhall จะขายอะไรก็ง่ายนิดเดียว</Text></View>
          </View>
          <View style={[styles.slide, { backgroundColor: '#a4b602' }]}>
            <View level={-10}><Image source={require('../../assets/images/icfh2.png')} style={{ width: 110, height: 180 }} resizeMode={'contain'} /></View>
            <View level={-50}><Text style={styles.text}>รองรับบริการ รับ ส่ง สั่ง ภายในที่เดียว</Text></View>
          </View>
          <View style={[styles.slide, { backgroundColor: '#fa931d' }]}>
            <View level={-10}><Image source={require('../../assets/images/icfh3.png')} style={{ width: 110, height: 180 }} resizeMode={'contain'} /></View>
            <View level={-50}><Text style={styles.text}>เพิ่มฐานลูกค้าได้ง่ายๆเพียงใช้งาน Foodhall</Text></View>
          </View>
          <View style={[styles.slide, { backgroundColor: '#a4b602' }]}>
            <View level={-10}><Image source={require('../../assets/images/icfh4.png')} style={{ width: 110, height: 180 }} resizeMode={'contain'} /></View>
            <View level={-50}><Text style={styles.text}>ไม่ต้องมีหน้าร้านก็ขายของได้</Text></View>
          </View>
        </AppIntro>
        </LoadingContainer>
      )
    }
    else {
      <View ></View>
    }
  }

  render = () => {
    return (
      <View style={[AppStyles.container]}>
         <View style={{flex:1,justifyContent:'center',flexDirection:'row',alignItems:'center',backgroundColor:'#00B16A'}}>
            <Button
              onPress={() => this.renderslide()}
              style={{ width: 250 }}
              borderRadius={25} 
              borderColor={'#FFF'}
              color={'#FFF'}
              small
              outlined
              title={'เปิดร้านกับเราวันนี้รับทันที 1,000 coins >>>'}
            />
          </View>
          {this.renderappintro()}

  

      </View>
    )
  }


  async _loadInitialDataAsync() {
    return;
  }

  async _onReadyAsync(data) {
    return new Promise((resolve) => {
      setTimeout(
        () => {
          this.setState({
          }, resolve)
        },
        500
      );

    });
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Introduceshop);
