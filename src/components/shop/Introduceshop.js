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

function numberWithCommas(x) {
  return x
    .toString()
    .replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}



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

    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });
    this.mapCircle = null;
    this.mapRef = null;
    this.state = {
      loading: false,
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

  render = () => {
    return (
      <View style={[AppStyles.container]}>
        {/* <NavigationBar
          title={'แนะนำการเปิดร้านค้า'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          backgroundColor={AppColors.brand.shopprimary}
          leftButtonTitleColor={'#fff'}
          leftButtonIcon={require('../../assets/images/ic_left-arrow.png')}
          leftButtonTitle={'back'}
          onLeftButtonPress={Actions.pop}
          leftButtonTitleColor={'#fff'}
        />
        <Spacer size={64} /> */}


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
              <View level={-10}><Text style={styles.text}>Page 1</Text></View>
              <View level={-50}><Text style={styles.text}>Foodhall จะขายอะไรก็ง่ายนิดเดียว</Text></View>
            </View>
            <View style={[styles.slide, { backgroundColor: '#a4b602' }]}>
              <View level={-10}><Text style={styles.text}>Page 2</Text></View>
              <View level={-50}><Text style={styles.text}>รองรับบริการ รับ ส่ง สั่ง ภายในที่เดียว</Text></View>
            </View>
            <View style={[styles.slide, { backgroundColor: '#fa931d' }]}>
              <View level={-10}><Text style={styles.text}>Page 3</Text></View>
              <View level={-50}><Text style={styles.text}>เพิ่มฐานลูกค้าได้ง่ายๆเพียงใช้งาน Foodhall</Text></View>
            </View>
            <View style={[styles.slide, { backgroundColor: '#a4b602' }]}>
              <View level={-10}><Text style={styles.text}>Page 4</Text></View>
              <View level={-50}><Text style={styles.text}>ไม่ต้องมีหน้าร้านก็ขายของได้</Text></View>
            </View>
          </AppIntro>
        </LoadingContainer>

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
