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
  canvas: {
    width: 100,
    height: 100,
  },
  container: {
    margin: 10,
    padding: 10,
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
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
class Setpaymentmethod extends Component {

  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });
    this.state = {
      ds: [],
      loading: false,
      cashaccept: 0,
      bankaccept: 0,
      ks: 'false',
      scb: 'false',
      boa: 'false',
      tmb: 'false',
      tnc: 'false',
      ktb: 'false',
      gsb: 'false',
      promppay: 'false',
    }
  }




  componentWillReceiveProps(props) {

    console.log(props);
    if (props.isreload) {
      this.reload();
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
    this.reload();
  }

  reload() {
    this.state.shopdetail = this.props._shopdetail;
    this.setState(
      {
        cashaccept: this.props._shopdetail.cashaccept,
        bankaccept: this.props._shopdetail.bankaccept,
        ks: this.props._shopdetail.bankacc.ks == 0 ? 'false' : 'true',
        scb: this.props._shopdetail.bankacc.scb == 0 ? 'false' : 'true',
        boa: this.props._shopdetail.bankacc.boa == 0 ? 'false' : 'true',
        tmb: this.props._shopdetail.bankacc.tmb == 0 ? 'false' : 'true',
        tnc: this.props._shopdetail.bankacc.tnc == 0 ? 'false' : 'true',
        ktb: this.props._shopdetail.bankacc.ktb == 0 ? 'false' : 'true',
        gsb: this.props._shopdetail.bankacc.gsb == 0 ? 'false' : 'true',
        promppay: this.props._shopdetail.bankacc.promppay == 0 ? 'false' : 'true',
      }
    );
  }

  componentDidMount = () => {
  }


  save() {
    this.setState({ loading: true });


    var params = {
      id: this.state.shopdetail.id,
      cashaccept: this.state.cashaccept == true ? '1' : '0',
      bankaccept: this.state.bankaccept == true ? '1' : '0',
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

    console.log('formData', formData);

    fetch(AppConfig.api + 'api/updatepaymentmethod', request).then((response) => {
      this.setState({ loading: false });
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        this.setState({ loading: false });
        return responseData;
      })
      .then((data) => {
        this.updateshop();
      }).done();
  }

  updateshop() {
    var params = {
      shopid: this.state.shopdetail.id,
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


    fetch(AppConfig.api + 'api/getshopdetail', request).then((response) => {
      console.log(response);
      this.setState({ loading: false });
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        // console.log(responseData); 
        this.setState({ loading: false });
        return responseData;
      })
      .then((data) => {
        this
          .props
          .dispatch({
            type: 'SHOP', shopdetail: data.result
          });
        this.setState({ loading: false });
        Actions.pop({ refresh: { isreload: true } });
      }).done();
  }
  renderactive(isactiive) {
    if (isactiive == 'false') {
      return (
        <View style={{
          position: 'absolute', left: 0,
          top: 0, bottom: 0, right: 0
          , alignItems: 'center', flexDirection: 'row', justifyContent: 'center', backgroundColor: 'rgba(52, 52, 52, 0.5)',
        }}>
          <Text numberOfLines={1} style={{
            textAlign: 'center',
            color: '#fff',
            fontSize: 14,
            fontWeight: 'normal'
          }}>ไม่ใช้งาน</Text>
        </View>
      )
    }
    else {
      return (
        <View />
      )
    }
  }

  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'ตั้งค่าการชำระเงิน'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          backgroundColor={AppColors.brand.shopprimary}
          leftButtonTitleColor={'#fff'}
          leftButtonIcon={require('../../assets/images/ic_left-arrow.png')}
          leftButtonTitle={'back'}
          onLeftButtonPress={() => this.save()}
          leftButtonTitleColor={'#fff'}
        />
        <Spacer size={64} />

        <ScrollView
          automaticallyAdjustContentInsets={false}
          style={[AppStyles.container]}
        >
          <KeyboardAvoidingView behavior='padding' style={{ flexGrow: 1 }}>


            <View >
              <Spacer size={15} />
              <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 10, marginRight: 10, }}>
                <Spacer size={15} />
                <View style={{ flexDirection: 'row', justifyContent: 'space-between', paddingBottom: 10, }}>
                  <FormLabel>เงินสด (เก็บเงินปลายทาง / ชำระเงินที่ร้าน)</FormLabel>
                  <Switch
                    value={this.state.cashaccept == 1 ? true : false}
                    onValueChange={cashaccept => this.setState({ cashaccept: cashaccept })}
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

              <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 10, marginRight: 10, }}>
                <Spacer size={15} />
                <View style={{ flexDirection: 'row', justifyContent: 'space-between', paddingBottom: 10, }}>
                  <FormLabel>โอนผ่านบัญชีธนาคาร</FormLabel>
                  <Switch
                    value={this.state.bankaccept == 1 ? true : false}
                    onValueChange={bankaccept => this.setState({ bankaccept: bankaccept })}
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
              <View style={{ flex: 1, padding: 15, }}>
                <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'space-between' }}>
                  <TouchableWithoutFeedback onPress={() => Actions.setbankacc({ bankname: 'กสิกรไทย', img: require('../../assets/banklogo/ks.png') })}>
                    <View style={styles.container}>
                      <Image resizeMode="contain" style={styles.canvas} source={require('../../assets/banklogo/ks.png')} />
                      {this.renderactive(this.state.ks)}
                    </View>
                  </TouchableWithoutFeedback>
                  <TouchableWithoutFeedback onPress={() => Actions.setbankacc({ bankname: 'ไทยพานิชย์', img: require('../../assets/banklogo/scb.png') })}>
                    <View style={styles.container}>
                      <Image resizeMode="contain" style={styles.canvas} source={require('../../assets/banklogo/scb.png')} />
                      {this.renderactive(this.state.scb)}
                    </View>
                  </TouchableWithoutFeedback>
                  <TouchableWithoutFeedback onPress={() => Actions.setbankacc({ bankname: 'กรุงศรีอยุธยา', img: require('../../assets/banklogo/ay.png') })}>
                    <View style={styles.container}>
                      <Image resizeMode="contain" style={styles.canvas} source={require('../../assets/banklogo/ay.png')} />
                      {this.renderactive(this.state.boa)}
                    </View>
                  </TouchableWithoutFeedback>
                </View>


                <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'space-between' }}>
                  <TouchableWithoutFeedback onPress={() => Actions.setbankacc({ bankname: 'ทหารไทย', img: require('../../assets/banklogo/tmb.png') })}>
                    <View style={styles.container}>
                      <Image resizeMode="contain" style={styles.canvas} source={require('../../assets/banklogo/tmb.png')} />
                      {this.renderactive(this.state.tmb)}
                    </View>
                  </TouchableWithoutFeedback>
                  <TouchableWithoutFeedback onPress={() => Actions.setbankacc({ bankname: 'ธนชาติ', img: require('../../assets/banklogo/tc.png') })}>
                    <View style={styles.container}>
                      <Image resizeMode="contain" style={styles.canvas} source={require('../../assets/banklogo/tc.png')} />
                      {this.renderactive(this.state.tnc)}
                    </View>
                  </TouchableWithoutFeedback>
                  <TouchableWithoutFeedback onPress={() => Actions.setbankacc({ bankname: 'กรุงไทย', img: require('../../assets/banklogo/ktb.png') })}>
                    <View style={styles.container}>
                      <Image resizeMode="contain" style={styles.canvas} source={require('../../assets/banklogo/ktb.png')} />
                      {this.renderactive(this.state.ktb)}
                    </View>
                  </TouchableWithoutFeedback>
                </View>

                <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'space-between' }}>
                  <TouchableWithoutFeedback onPress={() => Actions.setbankacc({ bankname: 'ออมสิน', img: require('../../assets/banklogo/gsb.png') })}>
                    <View style={styles.container}>
                      <Image resizeMode="contain" style={styles.canvas} source={require('../../assets/banklogo/gsb.png')} />
                      {this.renderactive(this.state.gsb)}
                    </View>
                  </TouchableWithoutFeedback>
                  <TouchableWithoutFeedback onPress={() => Actions.setbankacc({ bankname: 'พร้อมเพย์', img: require('../../assets/banklogo/prompay.png') })}>
                    <View style={styles.container}>
                      <Image resizeMode="contain" style={styles.canvas} source={require('../../assets/banklogo/prompay.png')} />
                      {this.renderactive(this.state.promppay)}
                    </View>
                  </TouchableWithoutFeedback>
                  <View style={styles.container}>
                  </View>
                </View>
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

            <Spacer size={15} />


          </KeyboardAvoidingView>

        </ScrollView>

        <Spacer size={50} />
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>
    )
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Setpaymentmethod);
