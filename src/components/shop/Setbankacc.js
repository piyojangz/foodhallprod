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
class Setbankacc extends Component {

  constructor(props) {
    super(props);
    this.state = {
      loading: false,
      isactive: 0,
      bankaccno: '',
      bankaccname: '',
      bankname: '',
      idcard: '',
      taxno: '',
      tel: '',
    }
  }





  componentWillMount = () => {
    this.state.shopdetail = this.props._shopdetail;
    this.setState(
      {
        bankname: this.props.bankname
      }
    );
  }

  componentDidMount = () => {
    this.getbankacc();
  }


  save() {
    this.setState({ loading: true });


    var params = {
      shopid: this.state.shopdetail.id,
      bankname: this.state.bankname,
      bankaccname: this.state.bankaccname,
      bankaccno: this.state.bankaccno,
      idcard: this.state.idcard,
      taxno: this.state.taxno,
      tel: this.state.tel,
      isuse: this.state.isactive
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

    fetch(AppConfig.api + 'api/addbankacc', request).then((response) => {
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




  getbankacc() {
    this.setState({ loading: true });
    var params = {
      shopid: this.state.shopdetail.id,
      bankname: this.props.bankname,
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

    console.log(formData);


    fetch(AppConfig.api + 'api/getshoppaymentdetail', request).then((response) => {
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
        this.setState({ loading: false });
        console.log(data);
        if (data.result) {
          this.setState({
            bankaccname: data.result.bankaccname,
            bankaccno: data.result.bankaccno,
            idcard: data.result.idcard,
            taxno: data.result.taxno,
            tel: data.result.tel,
            isactive: data.result.isuse
          });
        }

      }).done();
  }


  renderfield() {
    if (this.props.bankname == 'พร้อมเพย์'){
      return (
        <View>
          <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
            <Spacer size={15} />
            <FormLabel>เบอร์โทรศัพท์</FormLabel>
            <FormInput keyboardType={'numeric'} placeholder={'Acc no.'} value={this.state.tel} onChangeText={tel => this.setState({ tel })} multiline={true} style={{ marginRight: 0, }} />
          </View>


          <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
            <Spacer size={15} />
            <FormLabel>บัตรประชาชน</FormLabel>
            <FormInput placeholder={'ID Card.'} value={this.state.idcard} onChangeText={idcard => this.setState({ idcard })} multiline={true} style={{ marginRight: 0, }} />
          </View>

          <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
            <Spacer size={15} />
            <FormLabel>เลขประจำตัวผู้เสียภาษี</FormLabel>
            <FormInput placeholder={'TAX no.'} value={this.state.taxno} onChangeText={taxno => this.setState({ taxno })} multiline={true} style={{ marginRight: 0, }} />
          </View>
        </View>
      );
    }
    else {
      return (
        <View>
          <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
            <Spacer size={15} />
            <FormLabel>เลขบัญชี <Text style={{ color: '#f00' }}>*</Text></FormLabel>
            <FormInput keyboardType={'numeric'} placeholder={'Acc no.'} value={this.state.bankaccno} onChangeText={bankaccno => this.setState({ bankaccno })} multiline={true} style={{ marginRight: 0, }} />
          </View>


          <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
            <Spacer size={15} />
            <FormLabel>ชื่อบัญชี <Text style={{ color: '#f00' }}>*</Text></FormLabel>
            <FormInput placeholder={'Acc name.'} value={this.state.bankaccname} onChangeText={bankaccname => this.setState({ bankaccname })} multiline={true} style={{ marginRight: 0, }} />
          </View>
        </View>
      );
    }
  }

  render = () => {

    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'ธนาคาร' + this.props.bankname}
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

            <View style={{
              marginTop: 20, flexDirection: 'column',
              justifyContent: 'center',
              alignItems: 'center',
            }}>
              <Image style={{
                height: 100,
                width: 100,
                borderRadius: 50
              }} resizeMode="cover" source={this.props.img} />
            </View>

            {this.renderfield()}




            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <View style={{ flexDirection: 'row', justifyContent: 'space-between', paddingBottom: 10, }}>
                <FormLabel>สถานะ ใช้งาน / ไม่ใช้งาน</FormLabel>
                <Switch
                  value={this.state.isactive == 1 ? true : false}
                  onValueChange={val => this.setState({ isactive: val ? '1' : '0' })}
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
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>
    )
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Setbankacc);
