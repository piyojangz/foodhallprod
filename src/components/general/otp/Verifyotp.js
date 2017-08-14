/**
 * Web View
 *
 * <WebView url={"http://google.com"} />
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import {
  StyleSheet,
  InteractionManager,
  Image,
  View,
  Input,
  InputGroup,
  TouchableOpacity,
  ScrollView,
  AsyncStorage,
  Platform,
  Alert,
  ToastAndroid
} from 'react-native';
import SleekLoadingIndicator from 'react-native-sleek-loading-indicator';
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
  FormLabel,
} from '@components/ui/';
import { AppConfig } from '@constants/';
import NavigationBar from 'react-native-navigation-bar';
import { FBLoginManager } from 'react-native-facebook-login';
// Consts and Libs
import { AppColors, AppStyles, AppSizes } from '@theme/';
import { Grid, Col, Row } from 'react-native-easy-grid';
// Components
import Loading from '@components/general/Loading';
import Error from '@components/general/Error';
import Icon from 'react-native-vector-icons/Ionicons';
import * as appdataActions from '@redux/appdata/actions';
// Actions
import * as RecipeActions from '@redux/recipes/actions';

import { Actions } from 'react-native-router-flux';
/* Styles ==================================================================== */
const styles = StyleSheet.create({
  container: {
    backgroundColor: AppColors.background,
  },
  shadow: {
    flex: 1,
    width: null,
    height: null,
  }, row: {
    flex: 1,
    alignItems: 'center'
  },
  text: {
    fontSize: 20,
    color: '#fff',
    marginBottom: 15,
    alignItems: 'center'
  },
  canvas: {
    position: 'absolute',
    top: 0,
    left: 0,
    bottom: 0,
    right: 0,
  },
});


/* Redux ==================================================================== */
// What data from the store shall we send to the component?
const mapStateToProps = state => ({
  _otp: state.appdataReducer.otp,
});

// Any actions to map to the component?
const mapDispatchToProps = {
  otp: appdataActions.otp,
};




/* Component ==================================================================== */
class Verifyotp extends Component {
  static componentName = 'Verifyotp';


  constructor(props) {
    super(props);
    this.state = {
      tel: this.props.tel,
      id: '',
      email: '',
      fromTime: null,
      loading: false,
      fbid: '',
      otp: '',
    };
  }


  veryfyotp() {
    this.setState({ loading: true });
    var params = {
      tel: this.state.tel,
      fbid: '',
      otp: this.state.otp,
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
    fetch(AppConfig.api + 'api/verifyOtp', request).then((response) => {
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        return responseData;
      })
      .then((data) => {
        this.setState({ loading: false });
        if (data.result == true) {

          // do register step
          Actions.lastregister({ tel: this.state.tel });
        }
        else {
          if (Platform.OS === "ios") {
            Alert.alert(
              'Warning!',
              'รหัส OTP ไม่ถูกต้อง'
            );
          }
          else {
            ToastAndroid.show('รหัส OTP ไม่ถูกต้อง', ToastAndroid.SHORT);
          }
        }
      }).done();
  }


  resendsendotp() {

    var tel = this.state.tel;

    var params = {
      tel: tel,
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

    var fromTime = this.props._otp;
    var toTime = new Date();
    var intime = false;
    console.log(fromTime);
    if (fromTime == undefined) {
      fromTime = new Date();
      this.props.dispatch({ type: 'OTP', otp: fromTime });
      intime = true;
    }
    else {
      var differenceTravel = toTime.getTime() - fromTime.getTime();
      var seconds = Math.floor((differenceTravel) / (1000));
      console.log(seconds);
      if (seconds < 60) {
        intime = false;
        if (Platform.OS === "ios") {
          Alert.alert(
            'Warning!',
            'กรุณาลองใหม่อีกครั้งในอีก ' + (60 - seconds) + ' วินาที'
          );
        }
        else {
          ToastAndroid.show('กรุณาลองใหม่อีกครั้งในอีก ' + (60 - seconds) + ' วินาที', ToastAndroid.SHORT);
        }
      }
      else {
        intime = true;
      }
    }

    if (intime) {
      fetch(AppConfig.api + 'api/generateOtp', request).then((response) => {
        return response.json() // << This is the problem
      })
        .then((responseData) => { // responseData = undefined
          return responseData;
        })
        .then((data) => {
          if (data.result == true) {
            var fromTime = new Date();
            this.props.dispatch({ type: 'OTP', otp: fromTime });
          }
        }).done();
    }

  }


  render = () => {
    return (
      <View style={{ flex: 1, backgroundColor: '#fff' }}>
        <NavigationBar
          title={'Verifying OTP'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          leftButtonIcon={require('../../../assets/images/ic_left-arrow.png')}
          backgroundColor={AppColors.brand.primary}
          leftButtonTitle={'ย้อนกลับ'}
          onLeftButtonPress={Actions.pop}
          leftButtonTitleColor={'#fff'}
        />
        <Spacer size={64} />
        <ScrollView style={{ flexGrow: 1, height: AppSizes.screen.height, }}>
          <View style={{ flex: 1, backgroundColor: '#fff', flexDirection: 'column', justifyContent: 'center' }}>
            <View style={{ flexDirection: 'column', alignItems: 'center', }}>
              <View style={{ width: (AppSizes.screen.width - 60), }}>
                <View style={[AppStyles.paddingHorizontal]}>
                  <FormLabel>OTP</FormLabel>
                  <FormInput autoCorrect={false} keyboardType="numeric" maxLength={5} autoFocus={true} placeholder='ระบุรหัส OTP 5 หลัก' onChangeText={otp => this.setState({ otp })} />
                </View>
                <Text
                  style={{
                    width: 280,
                    color: "#000000",
                    textAlign: "center",
                    fontSize: 14,
                    fontWeight: "normal",
                    fontFamily: 'Helvetica Neue',
                  }}>พิมพ์รหัสที่ได้จาก SMS เบอร์ {this.props.tel} (รหัสใช้ได้เพียงครั้งเดียว)</Text>
              </View>
              <View style={{ flexDirection: 'row', }}>
                <TouchableOpacity onPress={() => this.resendsendotp()} >
                  <View style={{ backgroundColor: '#dddddd', flexDirection: 'row', alignItems: 'center', justifyContent: 'center', marginTop: 24, padding: 8, paddingLeft: 25, paddingRight: 25, borderRadius: 25, marginRight: 15, }}>
                    <Text
                      style={{
                        color: "#000000",
                        fontSize: 14,
                        fontWeight: "normal",
                        fontFamily: 'Helvetica Neue',
                      }}>ขอรหัสผ่านใหม่</Text>
                  </View>
                </TouchableOpacity>

                <TouchableOpacity onPress={() => this.veryfyotp()} >
                  <View style={{ backgroundColor: '#000000', flexDirection: 'row', alignItems: 'center', justifyContent: 'center', marginTop: 24, padding: 8, paddingLeft: 25, paddingRight: 25, borderRadius: 25, marginLeft: 15, }}>
                    <Text
                      style={{
                        color: "#FFFFFF",
                        fontSize: 14,
                        fontWeight: "normal",
                        fontFamily: 'Helvetica Neue',
                      }}>ยืนยันรหัส OTP</Text>
                  </View>
                </TouchableOpacity>

              </View>

            </View>

          </View>
        </ScrollView>
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>
    );
  }
}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Verifyotp);