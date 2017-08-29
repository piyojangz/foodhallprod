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
import SleekLoadingIndicator from 'react-native-sleek-loading-indicator';
import {
  Switch,
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
  Touchable
} from 'react-native';


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
  btn: {
    backgroundColor: '#ecf0f1',
    paddingTop: 5,
    paddingBottom: 5,
    paddingLeft: 20,
    paddingRight: 20,
    margin: 10,
    borderRadius: 50,
  },
  floatbutton: {
    width: 60,
    height: 60,
    borderRadius: 30,
    backgroundColor: '#F3C42C',
    position: 'absolute',
    flexDirection: 'column',
    justifyContent: 'center',
    alignItems: 'center',
    bottom: (Platform.OS === 'ios') ? 10 : 10,
    right: 10,
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
class Dashboard extends Component {

  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });

    this.state = {
      ds: [],
      refreshing: false,
      dataSource: ds,
      dataSourceItems: ds,
      shopid: undefined,
      shopstatus: false,
      loading: false
    }
  }



  // componentWillReceiveProps(props) {
  //   if (props.isreload) {

  //       setTimeout(
  //         () => { this._onRefresh(); },
  //         1500
  //       ); 
  //   } 
  // }


  _onRefresh() {
    this.setState({ refreshing: true });
    this._loadInitialDataAsync().then((data) => {
      this._onReadyAsync(data).then(() => {
        this.setState({ refreshing: false });
      });
    });

  }

  componentWillMount = () => {
    AsyncStorage.getItem("userdetail").then((value) => {
      if (value != null) {
        var val = JSON.parse(value);
        this
          .props
          .dispatch({
            type: 'SHOP', shop: val
          });
        this.setState({ shopid: val.shopid });
        this.getordercnt(val.shopid);
      }
    });
  }
  componentDidMount = () => {
    if (Platform.OS === "android") {
      StatusBar.setBackgroundColor(AppColors.brand.shopprimary, true);
    }
  }

  swaptoapp() {
    AsyncStorage.setItem("mode", JSON.stringify({
      shopmode: 0
    }));
    Actions.app();
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


  floatbutton = () => {

    return (<TouchableWithoutFeedback onPress={() => this.swaptoapp()} >
      <Animatable.View style={styles.floatbutton} animation="zoomIn" duration={200} easing="ease-out" >
        <Icon
          name={'exchange'}
          size={14}
          rot
          color={'#FFFFFF'} />
      </Animatable.View>
    </TouchableWithoutFeedback>)

  }

  additem = () => {
    Actions.additem({ itemdetail: undefined });
  }

  edititem = (data) => {
    Actions.additem({ itemdetail: data });
  }

  editcover = (data) => {
    Actions.addcover({ itemdetail: data });
  }


  unlock = () => {
    if (parseInt(this.props._shopdetail.coin) < 399) {
      Alert.alert(
        'Foodhall Message',
        'คุณมี coin น้อยกว่า 399',
        [
          { text: 'OK', onPress: () => console.log('OK Pressed') },
        ],
        { cancelable: false }
      )
    }
    else {
      Alert.alert(
        'Foodhall Message',
        'ใช้ 399 Coins เพื่อปลดล็อค',
        [
          { text: 'เอาไว้ที่หลัง', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
          {
            text: 'ยืนยัน', onPress: () => {
              this.setState({ loading: true });
              var params = {
                shopid: this.props._shopdetail.id,
                addslot: parseInt(this.props._shopdetail.addslot) + 1,
                deduct: '-399',
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



              fetch(AppConfig.api + 'api/unlockslot', request).then((response) => {
                console.log(response);
                this.setState({ loading: false });
                return response.json() // << This is the problem
              })
                .then((responseData) => { // responseData = undefined
                  console.log(responseData);
                  this.setState({ loading: false });
                  return responseData;
                })
                .then((data) => {
                  console.log(data);
                  this.setState({ loading: false });
                  this._onRefresh();
                }).done();
            }
          },
        ],
        { cancelable: false }
      )
    }

  }


  setshopstatus(status) {

    if (this.props._shopdetail.isapprove == 0) {
      Alert.alert(
        'FoodHall แจ้งเตือน',
        'กรณีเปิดร้านครั้งแรก กรุณารอทีมงานตรวจสอบร้านค้าสักครู่',
        [{
          text: 'เอาไว้ทีหลัง',
          onPress: null,
        },
        { text: 'ส่งข้อมูลเปิดร้าน', onPress: () => this.sendopenrequest() },
        ]
      );

      this.setState({ shopstatus: false });
    }
    else {
      if(this.state.shopstatus == false){
        if(parseInt(this.props._shopdetail.coin) > 50){
          this.sendshopstatus(status);
        }
        else{
          Alert.alert(
            'FoodHall แจ้งเตือน',
            'ไม่สามารถเปิดร้านได้เนื่องจากคุณมี coin น้อยกว่า 50',
            [{
              text: 'ปิด',
              onPress: null,
            } 
            ]
          );
        }
      }
      else{
        this.sendshopstatus(status);
      }
   
     
    }

  }

  sendopenrequest() {
    this.setState({ loading: true });
    var params = {
      shopid: this.state.shopid,
      userid: this.props._shopdetail.buyerid,
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

    fetch(AppConfig.api + 'api/requestshopopen', request).then((response) => {
      console.log(response);
      this.setState({ loading: false });
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        if (responseData.result == 'success') {
          Alert.alert(
            'FoodHall แจ้งเตือน',
            'ส่งข้อมูลเปิดร้านเรียบร้อย กรุณารอการตอบรับจาก Foodhall ค่ะ',
            [{
              text: 'ปิด',
              onPress: null,
            },
            ]
          );
        }
        this.setState({ loading: false });
      })
      .then((data) => {
        console.log(data);
      }).done();


  }

  sendshopstatus(status) {
    this.setState({ loading: true });
    var params = {
      id: this.state.shopid,
      isshopopen: status,
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

    fetch(AppConfig.api + 'api/setshopopen', request).then((response) => {
      console.log(response);
      this.setState({ loading: false });
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        console.log(responseData);
        if (responseData.result == 'success') {
          this.setState({ shopstatus: status });
        }

        this.setState({ loading: false });
        return responseData;
      })
      .then((data) => {
        console.log(data);
      }).done();
  }


  dopurchase() {
    Actions.dopurchase();
  }

  renderRow = (data, s, index) => {
    console.log(data);
    if (index == 0) {
      return (
        <View>
          <TouchableWithoutFeedback onPress={() => this.editcover(data)}>
            <Image
              style={{
                height: 250,
              }}
              resizeMode={"cover"}
              source={{
                uri: AppConfig.imgaddress + data.img
              }} />
          </TouchableWithoutFeedback>
          <View style={{ backgroundColor: '#fff', padding: 8, borderBottomColor: '#D7D7D7', borderBottomWidth: 1 }}>
            <Text style={{ fontSize: 18, fontWeight: 'normal', textAlign: 'center' }}>{data.title}</Text>
            <Text style={{ fontSize: 14, color: '#646464', fontWeight: 'normal', textAlign: 'center' }}>{data.description}</Text>
          </View>
          <View style={{ backgroundColor: '#fff', padding: 8, borderBottomColor: '#D7D7D7', borderBottomWidth: 1 }}>

            <View style={{ flexDirection: 'row', justifyContent: 'space-between', paddingLeft: 20, paddingRight: 20 }}>
              <Text style={{ fontSize: 14, fontWeight: 'normal', textAlign: 'center' }}>สถานะร้าน เปิด/ปิด</Text>
              <Switch
                size={20}
                value={this.state.shopstatus}
                onValueChange={(shopstatus) => this.setshopstatus(shopstatus)}
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
          <View style={{ backgroundColor: '#fff', padding: 8, paddingLeft: 20, paddingRight: 20, justifyContent: 'space-between', flexDirection: 'row', }}>
            <Text style={{ fontSize: 14, fontWeight: 'normal', textAlign: 'left', color: '#f00' }}>*** หาก Coin เหลือน้อยกว่า 50 จะไม่สามารถเปิดร้านได้</Text>
          </View>
          <View style={{ backgroundColor: '#fff', padding: 8, paddingLeft: 20, paddingRight: 20, justifyContent: 'space-between', flexDirection: 'row', }}>
            <View style={{ justifyContent: 'center' }}>
              <Text style={{ fontSize: 14, fontWeight: 'normal', textAlign: 'left' }}>ขณะนี้คุณมี Coin คงเหลือ : <Image style={{ width: (Platform.OS === 'ios') ? 20 : 60, height: (Platform.OS === 'ios') ? 20 : 60, }} source={require('../../assets/images/ic_coin.png')} /><Text style={{ fontWeight: 'bold' }}>  {numberWithCommas(data.coin)}</Text></Text>
            </View>
            <View>
              <Button
                style={{ width: 90 }} 
                borderColor={'#00B16A'}
                color={'#00B16A'}
                small
                outlined
                title={'ซื้อ'}
                onPress={() => this.dopurchase()}
              />
            </View>
          </View>
        </View>
      )
    }
    else {
      return (
        <View style={{ paddingTop: 10, }}>
          <GridView
            dataSource={this.state.dataSourceItems}
            renderRow={this._renderRow}
            numberOfItemsPerRow={3}
            removeClippedSubviews={false}
            initialListSize={1}
            pageSize={100}
          />
        </View>)
    }
  }

  _renderRow = (rowData, s, index) => {
    console.log(rowData);
    if (rowData.id != 0) {
      return (
        <TouchableWithoutFeedback onPress={() => this.edititem(rowData)}>
          <View style={{ backgroundColor: '#fff', height: 100, justifyContent: 'center', alignItems: 'center', margin: 10, borderRadius: 5, }}>
            <Image
              style={{
                flex: 1,
                aspectRatio: 1,
                resizeMode: 'cover',
                borderRadius: 5,
              }}
              source={{
                uri: AppConfig.imgaddress + rowData.img
              }} />
          </View>
        </TouchableWithoutFeedback>
      );
    }
    else {
      if (rowData.addable) {
        return (
          <TouchableWithoutFeedback onPress={() => this.additem()}>
            <View style={{ backgroundColor: '#fff', height: 100, justifyContent: 'center', alignItems: 'center', margin: 10, borderRadius: 5, }}>
              <Icon
                name={'plus'}
                size={35}
                rot
                color={'#DADFE1'} />
            </View>
          </TouchableWithoutFeedback>
        );
      }
      if (rowData.locked) {
        return (
          <TouchableWithoutFeedback onPress={() => this.unlock()}>
            <View style={{ backgroundColor: '#DADFE1', height: 100, justifyContent: 'center', alignItems: 'center', margin: 10, borderRadius: 5, }}>
              <Icon
                name={'lock'}
                size={35}
                rot
                color={'#FFFFFF'} />
            </View>
          </TouchableWithoutFeedback>
        );
      }
    }

  }


  renderpage = () => {
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

  renderLoading = () => {
    if (this.state.shopid != undefined) {
      return (
        <LoadingContainer
          onError={e => console.log(e)}
          onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
          onReadyAsync={this._onReadyAsync.bind(this)}>
          {this.renderpage()}
        </LoadingContainer>
      )
    }
    else {
      return (<View />)
    }
  }

  render = () => {
    return (
      <View style={{ marginTop: -65, flex: 1, backgroundColor: '#F7F9FB' }}>
        <NavigationBar
          title={'ภาพรวม'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          backgroundColor={AppColors.brand.shopprimary}
          rightButtonTitle={'ตั้งค่า'}
          onRightButtonPress={Actions.shopsetting}
          rightButtonTitleColor={'#fff'}
        />
        <View style={{ marginTop: 64, flex: 1, }}>
          {this.renderLoading()}
        </View>
        {this.floatbutton()}
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>
    )
  }

  async _loadInitialDataAsync() {
    var params = {
      shopid: this.state.shopid,
    };
    var formData = new FormData();
    for (var k in params) {
      formData.append(k, params[k]);
    }
    var request = {
      method: 'POST',
      body: formData
    };

    let response = await fetch(AppConfig.api + 'api/getshopdetail', request);
    return response.json();
  }

  async _onReadyAsync(data) {
    console.log(data);
    return new Promise((resolve) => {
      this
        .props
        .dispatch({
          type: 'SHOP', shopdetail: data.result
        });
      var shop = [];
      shop.splice(0, 0, data.result);
      shop.splice(1, 0, data.result);
      var n = parseInt(data.result.addslot); //ซื้อ slot เพิ่ม
      var basicitemrow = 3 + n;
      var freerow = basicitemrow - parseInt(data.result.items.length);
      //console.log('need', freerow);
      for (var i = 0; i < freerow; i++) {
        data.result.items.splice(data.result.items.length, 0, { id: 0, addable: true });
      }
      data.result.items.splice(data.result.items.length, 0, { id: 0, locked: true });

      this.setState({
        dataSource: this.state.dataSource.cloneWithRows(shop),
        dataSourceItems: this.state.dataSource.cloneWithRows(data.result.items),
        shopstatus: (data.result.isshopopen == 'true' && parseInt(data.result.coin) > 50 ? true : false)
      }, resolve);
    });
  }




}

export default connect(mapStateToProps, mapDispatchToProps)(Dashboard);
