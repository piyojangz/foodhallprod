
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
import { Grid, Col, Row } from 'react-native-easy-grid';
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
  // Tab Styles
  tabContainer: {
    flex: 1,
    marginBottom: 15
  },
  tabbar: {
    backgroundColor: AppColors.brand.primary
  },
  tabbarIndicator: {
    backgroundColor: '#FFF'
  },
  tabbar_text: {
    color: '#FFF',
    fontSize: 14
  },
  backgroundImage: {
    flex: 1,
    width: AppSizes.screen.width,
    height: 120,
    resizeMode: 'cover', // or 'stretch'
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
class Order extends Component {

  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });

    this.state = {
      ds: [],
      items:[],
      refreshing: false,
      dataSource: ds,
      loading: false,
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

  componentWillReceiveProps(props) {

    if (props.isreload) {
      setTimeout(
        () => { this._onRefresh(); this.getordercnt(this.props._shopdetail.id); },
        500
      );
    }

  }

  getordercnt = (shopid) => {
    if (shopid != [] && shopid != undefined && shopid != null) {
      var params = {
        shopid: shopid,
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

      fetch(AppConfig.api + 'api/getordernoticount', request).then((response) => {
        return response.json() // << This is the problem
      })
        .then((responseData) => { // responseData = undefined 
          return responseData;
        })
        .then((data) => {
          if (data.result) {
            this.props.dispatch({ type: 'INCOMMINGCOUNT', incommingcount: data.result.neworder || 0 }); this.props.dispatch({ type: 'PENDINGCOUNT', pendingcount: data.result.delivery || 0 })
          }
        }).done();
    }
  }

  componentWillMount = () => {
    this.state.shopdetail = this.props._shopdetail;
  }

  componentDidMount = () => {

  }

  pressRow(rowData) {
    Actions.shoporderdetail({ order: rowData, status: 'ORDER' })
  }

  renderRow = (rowData, s, index) => {
    console.log(rowData);
    var createdate = moment.utc(rowData.ordercreatedate).local().format('DD MMM YYYY เวลา HH:mm');
    var status = "";
    var color = "#FF4F4F";
    switch (parseInt(rowData.status)) {
      case -1:
        status = "รายการถูกยกเลิก";
        color = "#FF4F4F";
        break;
      case 1:
        status = "รอร้านค้าตอบรับ";
        color = "#F3C42C";
        break;
      case 2:
        status = "รับออเดอร์เรียบร้อย";
        color = "#38C872";
        break;
      case 3:
        status = "จัดส่งเรียบร้อย";
        color = "#358EF7";
        break;
    }


    return (
      <TouchableOpacity
        onPress={() => this.pressRow(rowData)}
        activeOpacity={90 / 100}>
        <View style={styles.row}>
          <Grid style={{ padding: 16, }}>
            <Row>
              <Text style={{
                color: "#000000",
                fontSize: 18,
                fontWeight: 'normal'
              }}>Order no. {rowData.orderno}</Text>
            </Row>
            <Row style={{ flexDirection: 'column' }}>

              <Text style={{
                color: "#6C7A89",
                fontSize: 14,
              }}>วันที่สั่งซื้อ {createdate}</Text>
              <View style={{ flexDirection: 'row' }}>
                <Icon style={{ fontSize: 14, color: color, paddingTop: 5 }} name='bell-o' />
                <Text style={{
                  color: color,
                  fontSize: 14,
                }}> {status}</Text>
              </View>
              <Spacer size={5} />
              {this.renderOrdertype(rowData)}

            </Row>
            <Icon
              name={'angle-right'}
              size={35}
              rot
              color={'#ddd'}
              style={{
                position: 'absolute',
                backgroundColor: 'rgba(0,0,0,0)',
                right: 10,
                top: 55
              }} />
          </Grid>
        </View>
      </TouchableOpacity>
    );
  }

  renderOrdertype(rowData) {
    if (rowData.pickuptime > 0) {
      return (<View style={{ flexDirection: 'row' }}>
        <Icon style={{ fontSize: 16, color: '#E67E22', paddingTop: 3, }} name='check-circle-o' />
        <Text style={{ fontSize: 14, color: "#E67E22", }}> รับเงินสด</Text>
        <Icon style={{ fontSize: 16, color: '#E67E22', marginLeft: 15, paddingTop: 3, }} name='map-pin' />
        <Text style={{ fontSize: 14, color: "#E67E22", }}> รับกลับ</Text></View>)
    }
    else {
      return (<View style={{ flexDirection: 'row' }}>
        <Icon style={{ fontSize: 16, color: '#E67E22', paddingTop: 3, }} name='check-circle-o' />
        <Text style={{ fontSize: 14, color: "#E67E22", }}> รับเงินสด</Text>
        <Icon style={{ fontSize: 16, color: '#E67E22', marginLeft: 15, paddingTop: 3, }} name='motorcycle' />
        <Text style={{ fontSize: 14, color: "#E67E22", }}> บริการส่งถึงที่ {rowData.deriveryrange == 'NEXTDAY' ? '(ในวันถัดไป)' : '(ในวันนี้)'}</Text>
      </View>)
    }

  }


  renderpage = () => {
    console.log('this.state.dataSource._dataBlob',this.state.items);
    if (this.state.items.length == 0) {
      return (
        <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
          <Text style={{ textAlign: 'center', color: '#BFBFBF' }}>ไม่มีรายการ</Text>
        </View>
      )

    }
    else {
      return (
        <List style={{ marginTop: 0, flex: 1, }}
          enableEmptySections={true}
        >
          <ListView
            refreshControl={
              <RefreshControl
                refreshing={this.state.refreshing}
                onRefresh={this._onRefresh.bind(this)}
              />
            }
            renderRow={this.renderRow.bind(this)}
            dataSource={this.state.dataSource}
          />
        </List>
      );
    }
  }


  render = () => {
    return (
      <View style={{ marginTop: -65, flex: 1, backgroundColor: '#F7F9FB' }}>
        <NavigationBar
          title={'รายการสั่ง'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          backgroundColor={AppColors.brand.shopprimary}
        />
        <View style={{ marginTop: 64, flex: 1, }}>
          <LoadingContainer
            onError={e => console.log(e)}
            onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
            onReadyAsync={this._onReadyAsync.bind(this)}>
            {this.renderpage()}
          </LoadingContainer>
        </View>
        <SleekLoadingIndicator loading={this.state.loading} />

      </View>
    )
  }

  async _loadInitialDataAsync() {
    var params = {
      shopid: this.props._shopdetail.id,
    };
    var formData = new FormData();
    for (var k in params) {
      formData.append(k, params[k]);
    }
    var request = {
      method: 'POST',
      body: formData
    };

    let response = await fetch(AppConfig.api + 'api/getorderlist', request);
    return response.json();
  }

  async _onReadyAsync(data) {
    console.log(data);
    return new Promise((resolve) => {
      this.setState({
        items:data.result,
        dataSource: this.state.dataSource.cloneWithRows(data.result),
      }, resolve);
    });
  }



}

export default connect(mapStateToProps, mapDispatchToProps)(Order);
