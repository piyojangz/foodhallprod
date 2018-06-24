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
class Setshippingmethod extends Component {

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
      isactive: 0,
      isauto: false,
      ismanual: false,
      deriveryfee: 0,
    }
  }

  onSelect(index, value) {
    console.log(value);
    if (value == 'auto') {
      this.setState({
        isauto: true,
        ismanual: false,
      })
    }
    if (value == 'manual') {
      this.setState({
        isauto: false,
        ismanual: true,
      })
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
    this.setState(
      {
        deriveryfee: this.props._shopdetail.deriveryfee,
        isauto: this.props._shopdetail.manualshippingfee == 0 ? true : true,
        ismanual: this.props._shopdetail.manualshippingfee == 0 ? false : true,
      }
    );
  }

  componentDidMount = () => {
  }


  save() {
    this.setState({ loading: true });


    var params = {
      id: this.state.shopdetail.id,
      manualshippingfee: this.state.ismanual ? 1 : 0,
      deriveryfee: this.state.deriveryfee,
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
 

    fetch(AppConfig.api + 'api/updateshippingmethod', request).then((response) => {
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

  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'ตั้งค่าบริการจัดส่ง'}
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
                  selectedIndex={this.props._shopdetail.manualshippingfee}
                  onSelect={(index, value) => this.onSelect(index, value)}
                >
                  <RadioButton value={'auto'} >
                    <Text>คำนวณอัตโนมัติตามระยะทาง<Text style={{ color: '#f00' }}>(แนะนำ)</Text></Text>
                  </RadioButton>

                  <RadioButton value={'manual'}>
                    <Text>กำหนดราคาเอง</Text>
                  </RadioButton>

                </RadioGroup>
              </View>
              <View style={{ borderBottomColor: '#C2CBCF', marginLeft: 25, marginRight: 25, }}>
                <Text style={{ color: this.state.ismanual ? '#000' : '#ddd' }}>ค่าบริการจัดส่ง</Text>
                <FormInput     editable={this.state.ismanual} keyboardType={'numeric'} placeholder={'0'} value={this.state.deriveryfee} onChangeText={deriveryfee => this.setState({ deriveryfee })} />
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
      </View >
    )
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Setshippingmethod);
