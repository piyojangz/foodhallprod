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
  _user: state.appdataReducer.user,
});

// Any actions to map to the component?
const mapDispatchToProps = {
  user: appdataActions.user,
};




/* Component ==================================================================== */
class Login extends Component {
  static componentName = 'Login';


  constructor(props) {
    super(props);
    this.state = {
      userdetail: null,
      emailortel: '',
      password: '',
      userimg: '',
      loading: false,
      tel: '',
      name: '',
      gender: '',
      email: '',
      fbid: '',
      shopid: '',
    };
  }



  fblogin = () => {
    var _this = this;
    this.setState({ loading: true, });
    FBLoginManager.loginWithPermissions(["email", "user_friends", "public_profile"], function (error, data) {
      if (!error) {
        var user = data.credentials;
        var api = 'https://graph.facebook.com/v2.3/' + user.userId + '?fields=email,name,gender&edirect=false&access_token=' + user.token + '';
        fetch(api)
          .then((response) => response.json())
          .then((responseData) => {
            _this.setState({
              loading: false,
              fbid: responseData.id,
              name: responseData.name,
              gender: responseData.gender,
              email: responseData.email,
            });
            _this.registeruser();
          })
          .done();
      } else {
        _this.setState({ loading: false, });
        console.log("Error: ", error);
      }
    })
  }

  registeruser = () => {
    var params = {
      tel: this.state.tel,
      name: this.state.name,
      gender: this.state.gender,
      email: this.state.email,
      fbid: this.state.fbid,
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

    fetch(AppConfig.api + 'api/buyer_register', request).then((response) => {
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        return responseData;
      })
      .then((data) => {
        console.log(data);
        if (data.result == 'success') {
          this.login();
        }
        else {
          this.alertmsg('อีเมลล์ซ้ำในระบบ');
        }
      }).done();

  }

  login = () => {
    this.setState({ loading: true, });
    var params = {
      email: this.state.emailortel,
      password: this.state.password,
      fbid: this.state.fbid,
    };

    if (this.state.emailortel == '' && this.state.fbid == '') {
      this.setState({ loading: false, });
      this.alertmsg('ไม่สามารถเข้าสู่ระบบได้');
      return;
    }

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

    fetch(AppConfig.api + 'api/buyer_login', request).then((response) => {
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        return responseData;
      })
      .then((data) => {
        if (data.result) {
          this.setState({ loading: false, });
          if (data.result.tel == '') {
            this
              .props
              .dispatch({
                type: 'USER', user: {
                  id: data.result.id,
                  email: data.result.email,
                  fbid: this.state.fbid,
                  name: this.state.name,
                  gender: this.state.gender,
                  shopid: data.result.shopid,
                }
              });

            Actions.otp();
          }
          else {
            AsyncStorage.setItem("userdetail", JSON.stringify({
              tel: data.result.tel
              , email: data.result.email
              , userimg: data.result.user_img
              , activeaddress: data.result.activeaddress
              , lat: data.result.lat
              , lng: data.result.lng
              , islogin: 1
              , name: data.result.fullname
              , id: data.result.id
              , address: data.result.address
              , fbid: data.result.fbid
              , shopid: data.result.shopid,
            }));

            AsyncStorage.setItem("mode", JSON.stringify({
              shopmode: 0
            }));


            AsyncStorage.getItem("userdetail").then((value) => {
              this
                .props
                .dispatch({
                  type: 'USER', user: JSON.parse(value)
                });
            }).done();
            this.setState({ loading: false, });
            console.log('refresh');
            Actions.pop({ refresh: {} });
          }
        }
        else {
          this.setState({ loading: false, });
          this.alertmsg('ไม่สามารถเข้าสู่ระบบได้');
        }
      }).done();
  }

  alertmsg(msg) {
    if (Platform.OS === "ios") {
      Alert.alert(
        'Warning!',
        msg
      );
    }
    else {
      ToastAndroid.show(msg, ToastAndroid.SHORT);
    }
  }

  popScreen() {
    Actions.pop({ refresh: {} });
  }


  logout = () => {
    FBLoginManager.logout(function (error, data) {
      if (!error) {
      } else {
        console.log(error, data);
      }
    });
    AsyncStorage.setItem("userdetail", JSON.stringify({
      tel: ''
      , lat: ''
      , lng: ''
      , email: ''
      , fullname: ''
      , islogin: 0
      , address: ''
      , userimg: ''
      , id: ''
      , fbid: ''
      , shopid: ''
    }));

    AsyncStorage.setItem("mode", JSON.stringify({
      shopmode: 0
    }));
    this.setState({ userdetail: null });

    this.navigateTo('account');
  }

  render = () => {
    return (
      <View style={{ flex: 1, backgroundColor: '#fff' }}>
        <NavigationBar
          title={'เข้าสู่ระบบ'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          leftButtonIcon={require('../../../assets/images/ic_left-arrow.png')}
          backgroundColor={AppColors.brand.primary}
          leftButtonTitle={'ย้อนกลับ'}
          onLeftButtonPress={this.popScreen}
          leftButtonTitleColor={'#fff'}
        />
        <Spacer size={64} />
        <ScrollView style={{ flexGrow: 1, height: AppSizes.screen.height, }}>
          <View style={{ flex: 1, backgroundColor: '#fff', flexDirection: 'column', justifyContent: 'center' }}>
            <View style={{ flexDirection: 'column', alignItems: 'center', }}>
              <Image
                style={{
                  height: 150,
                  width: 150,
                }}
                resizeMode={"cover"}
                source={require('../../../assets/images/ic_application.png')}
              />
              <Text
                style={{
                  color: '#000',
                  fontSize: 14,
                  lineHeight: 28,
                  fontWeight: "normal",
                  fontFamily: 'Helvetica Neue',
                }}>
                หิว...เมื่อไหร่ให้คิดถึง FoodHall
                  </Text>
              <Spacer size={20} />
              <View style={{ width: (AppSizes.screen.width - 60), }}>
                <View style={[AppStyles.paddingHorizontal]}>
                  <FormLabel>Username</FormLabel>
                  <FormInput autoCorrect={false} placeholder='อีเมลล์/เบอร์โทรศัพท์' onChangeText={emailortel => this.setState({ emailortel })} />

                  <Spacer size={10} />

                  <FormLabel>Password</FormLabel>
                  <FormInput placeholder='รหัสผ่าน' secureTextEntry={true} onChangeText={password => this.setState({ password })} />
                </View>
              </View>
              <View style={{ justifyContent:'space-between',flexDirection: 'row',}}>
                <TouchableOpacity onPress={() => this.login()} >
                  <View style={{ height: 40, backgroundColor: '#F3C42C', flexDirection: 'row', alignItems: 'center', justifyContent: 'center', marginTop: 24, padding: 10, width: AppSizes.screen.width / 2.8, borderRadius: 25,margin:5 }}>
                    <Text
                      style={{
                        color: "rgba(255,255,255,1)",
                        fontSize: 14,
                        fontWeight: "normal",
                        fontFamily: 'Helvetica Neue',
                      }}>เข้าสู่ระบบ </Text>
                  </View>
                </TouchableOpacity>

                <TouchableOpacity onPress={() => this.fblogin()} >
                  <View style={{ height: 40, backgroundColor: '#4267b2', flexDirection: 'row', alignItems: 'center', justifyContent: 'center', marginTop: 24, padding: 10, width: AppSizes.screen.width / 2.8, borderRadius: 25,margin:5 }}>
                    <Icon name="logo-facebook" style={{ color: "#FFF" }} />
                    <Text
                      style={{
                        color: "rgba(255,255,255,1)",
                        fontSize: 14,
                        fontWeight: "normal",
                        fontFamily: 'Helvetica Neue',
                      }}> Facebook login</Text>
                  </View>
                </TouchableOpacity>
              </View>

              <TouchableOpacity onPress={Actions.otp} >
                <Text
                  style={{
                    marginTop: 24,
                    textDecorationLine: 'underline',
                    color: 'black',
                    fontSize: 14,
                    fontWeight: 'normal',
                    fontFamily: 'Helvetica Neue',
                  }}>
                  สมัครสมาชิกเพื่อใช้บริการ
                  </Text>
              </TouchableOpacity>
            </View>
            <Spacer size={100} />
            <SleekLoadingIndicator loading={this.state.loading} />
          </View>
        </ScrollView>
      </View>
    );
  }
}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Login);