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
class Setworkingtime extends Component {

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
      open: '',
      close: '',
      isDateTimePickerVisibleOpen: false,
      isDateTimePickerVisibleClose: false,
    }
  }

  _handleDatePickedOpen = (date) => {
    var d = new Date(date);
    var n = ('0' + d.getHours()).slice(-2) + ":"
      + ('0' + d.getMinutes()).slice(-2) + ":" + '00';
    console.log(n);
    this.setState({ isDateTimePickerVisibleOpen: false, open: n })
  };

  _handleDatePickedClose = (date) => {
    var d = new Date(date);
    var n = ('0' + d.getHours()).slice(-2) + ":"
      + ('0' + d.getMinutes()).slice(-2) + ":" + '00';
    console.log(n);
    this.setState({ isDateTimePickerVisibleClose: false, close: n })
  };

  _showDateTimePickerOpen = () => this.setState({ isDateTimePickerVisibleOpen: true });

  _hideDateTimePickerOpen = () => this.setState({ isDateTimePickerVisibleOpen: false });

  _showDateTimePickerClose = () => this.setState({ isDateTimePickerVisibleClose: true });

  _hideDateTimePickerClose = () => this.setState({ isDateTimePickerVisibleClose: false });


  _handleDatePicked = (date) => {
    console.log('A date has been picked: ', date);
    this._hideDateTimePicker();
  };


  componentWillReceiveProps(props) {

    if (props.locationReload) {
      this.setState({ location: props.location.coords });
      setTimeout(
        () => {
          this.setMap();
        },
        1500
      );
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
        day: this.props.day,
        isactive: this.props.isactive,
        open: this.props.open,
        close: this.props.close,
      }
    );
  }

  componentDidMount = () => {
  }


  save() {
    Actions.pop({
      refresh: {
        workingdayreload: true,
        day: this.state.day,
        isactive: this.state.isactive,
        open: this.state.open,
        close: this.state.close,
      }
    });
  }

  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'ตั้งค่าร้านค้า'}
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
              <FormLabel>เวลาเปิด <Text style={{ color: '#f00' }}>*</Text></FormLabel>
              <TouchableOpacity onPress={this._showDateTimePickerOpen}>
                <Text>{this.state.open}</Text>
              </TouchableOpacity>
            </View>


            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <FormLabel>เวลาปิด <Text style={{ color: '#f00' }}>*</Text></FormLabel>
              <TouchableOpacity onPress={this._showDateTimePickerClose}>
                <Text>{this.state.close}</Text>
              </TouchableOpacity>
            </View>




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

            <DateTimePicker
              is24Hour={true}
              date={new Date()}
              mode={'time'}
              titleIOS={'เลือกเวลาเปิดร้าน'}
              isVisible={this.state.isDateTimePickerVisibleOpen}
              onConfirm={this._handleDatePickedOpen}
              onCancel={this._hideDateTimePickerOpen}
            />

            <DateTimePicker
              is24Hour={true}
              date={new Date()}
              mode={'time'}
              titleIOS={'เลือกเวลาปิดร้าน'}
              isVisible={this.state.isDateTimePickerVisibleClose}
              onConfirm={this._handleDatePickedClose}
              onCancel={this._hideDateTimePickerClose}
            />


          </KeyboardAvoidingView>

        </ScrollView>

        <Spacer size={50} />
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>
    )
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Setworkingtime);
