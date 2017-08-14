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
class Otp extends Component {
  static componentName = 'Otp';


  constructor(props) {
    super(props);
    this.state = {
      userdetail: null,
      emailortel: '',
      password: '',
      loading: false,
      tel: '',
      name: '',
      gender: '',
      email: '',
      fbid: '',
    };
  }


  sendotp() { 
    var phoneno = /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/;
    var tel = this.state.tel;

    if (phoneno.test(tel)) {

      this.setState({ loading: true, });

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
      if (fromTime == undefined) {
        fromTime = new Date();
        this.props.dispatch({ type: 'OTP', otp: fromTime });
        intime = true;
      }
      else {
        this.setState({ loading:false, });
        var differenceTravel = toTime.getTime() - fromTime.getTime();
        var seconds = Math.floor((differenceTravel) / (1000));
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
          this.setState({ loading: false, });
          return response.json() // << This is the problem
        })
          .then((responseData) => { // responseData = undefined
            this.setState({ loading: false, });
            return responseData;
          })
          .then((data) => {
            if (data.result == true) {
              var fromTime = new Date();
              this.props.dispatch({ type: 'OTP', otp: fromTime });
              this.setState({ loading: false, });
              Actions.verifyotp({ tel: this.state.tel });
            }
          }).done();
      }


    }
    else {
      if (Platform.OS === "ios") {
        Alert.alert(
          'Warning!',
          'เบอร์โทรศัพท์ไม่ถูกต้อง'
        );
      }
      else {
        ToastAndroid.show('เบอร์โทรศัพท์ไม่ถูกต้อง', ToastAndroid.SHORT);
      }

    }
  }


  render = () => {
    return (
      <View style={{ flex: 1, backgroundColor: '#fff' }}>
        <NavigationBar
          title={'OTP'}
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
                  <FormLabel>เบอร์โทรศัพท์</FormLabel>
                  <FormInput autoCorrect={false} keyboardType="phone-pad"  placeholder='ระบุเบอร์โทรศัพท์' onChangeText={tel => this.setState({ tel })} />


                </View>
              </View>

              <TouchableOpacity onPress={() => this.sendotp()} >
                <View style={{ height: 40, backgroundColor: '#F3C42C', flexDirection: 'row', alignItems: 'center', justifyContent: 'center', marginTop: 24, padding: 10, width: 300, borderRadius: 25 }}>
                  <Text
                    style={{
                      color: "rgba(255,255,255,1)",
                      fontSize: 14,
                      fontWeight: "normal",
                      fontFamily: 'Helvetica Neue',
                    }}>ยืนยัน </Text>
                </View>
              </TouchableOpacity>

              <TouchableOpacity onPress={Actions.pop} >
                <Text
                  style={{
                    marginTop: 24,
                    textDecorationLine: 'underline',
                    color: 'black',
                    fontSize: 14,
                    fontWeight: 'normal',
                    fontFamily: 'Helvetica Neue',
                  }}>
                  ล๊อคอินเข้าสู่ระบบ
          </Text>
              </TouchableOpacity>


            </View>
          </View>
        </ScrollView>
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>
    );
  }
}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Otp);