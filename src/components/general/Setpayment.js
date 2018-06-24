/**
 * Placeholder Scene
 *
    <Placeholder text={"Hello World"} />
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React, { Component } from 'react';
import { RadioGroup, RadioButton } from 'react-native-flexi-radio-button'
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
  ToastAndroid,
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
import { Grid, Col, Row } from 'react-native-easy-grid';
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
  row: {
    flex: 1,
    backgroundColor: '#FFF',
    borderBottomWidth: 1,
    borderColor: '#d7d7d7',
  },
  selectionText: {
    fontSize: 15,
    color: '#b5b5b5',
    textAlign: 'right',
    justifyContent: 'flex-end',
    flex: .2
  },

});

function numberWithCommas(x) {
  return x
    .toString()
    .replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}


const mapStateToProps = state => ({
  _address: state.appdataReducer.address,
  _user: state.appdataReducer.user
});

const mapDispatchToProps = {
  address: appdataActions.address,
  user: appdataActions.user
};

/* Component ==================================================================== */
class Setpayment extends Component {

  constructor(props) {
    super(props);

    this.state = {
      paymenttype: 'กรุณาเลือก',
      paymentmethod: '',
    }
  }

  onSelect(index, value) {
    switch (value) {
      case 'bank':
        this.setState({ paymentmethod: value, paymenttype: 'บัญชีธนาคาร', paymentindex: index });
        break;
      case 'cash':
        this.setState({ paymentmethod: value, paymenttype: 'เงินสด', paymentindex: index });
        break;
      case 'credit':
        this.setState({ paymentmethod: value, paymenttype: 'บัตรเครดิต', paymentindex: index });
        break;

      default:
        break;
    }


  }

  save() {
    if (this.state.paymentindex == 99) {
      this.alertmsg('กรุณาเลือก 1 รายการ');
    }
    else {
      Actions.pop({ refresh: { setpayment: true, type: this.state.paymenttype, method: this.state.paymentmethod, paymentindex: this.state.paymentindex } });
    }

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


  componentWillMount = () => {
    console.log('shopdetail', this.props);
    this.setState({ paymentindex: this.props.paymentindex });
  }

  componentDidMount = () => {
  }


  setpayment() {


  }



  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'วิธีการชำระเงิน'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          backgroundColor={AppColors.brand.shopprimary}
          leftButtonTitleColor={'#fff'}
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


            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <View style={{ flexDirection: 'row', justifyContent: 'space-between' }}>

                <RadioGroup
                  selectedIndex={this.props.paymentindex}
                  onSelect={(index, value) => this.onSelect(index, value)}
                >
                  <RadioButton disabled={this.props.shop.shopdetail.bankaccept == '1' ? false : true} value={'bank'} >
                    <Text>โอนผ่านบัญชีธนาคาร</Text>
                  </RadioButton>

                  <RadioButton disabled={this.props.shop.shopdetail.cashaccept == '1' ? false : true} value={'cash'}>
                    <Text>ชำระเงินสด (เก็บเงินปลายทาง/เก็บเงินหน้าร้าน)</Text>
                  </RadioButton>

                  <RadioButton disabled={true} value={'credit'}>
                    <Text>บัตรเครดิต</Text>
                  </RadioButton>

                </RadioGroup>
              </View>

            </View>



            <View style={{ marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <Button
                borderColor={'#00B16A'}
                color={'#00B16A'}
                small
                outlined
                title={'ยืนยัน'}
                onPress={() => this.save()}
              />
            </View>




          </KeyboardAvoidingView>

        </ScrollView>

        <Spacer size={50} />
      </View >
    )
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Setpayment);
