
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
import { Grid, Col, Row } from 'react-native-easy-grid';
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
  btn: {
    backgroundColor: '#ecf0f1',
    paddingTop: 5,
    paddingBottom: 5,
    paddingLeft: 20,
    paddingRight: 20,
    margin: 10,
    borderRadius: 50,

  },
  tabContainer: {
    flex: 1,
    backgroundColor: '#F7F9FB'
  },
  tabbar: {
    backgroundColor: '#FFF',
  },
  tabbarIndicator: {
    backgroundColor: AppColors.brand.primary,
  },
  tabbar_text: {
    color: '#3F3F3F',
    fontWeight: 'normal'
  },
  row: { 
    backgroundColor: '#FFF',
    borderBottomWidth: 1,
    borderColor: '#d7d7d7',
    justifyContent: 'center',
    flexDirection: 'column',
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
class Dopurchase extends Component {

  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });
    this.mapCircle = null;
    this.mapRef = null;
    this.state = {
      redeemno: '',
      refreshing: false,
      items: [],
      ds: [],
      dataSource: ds,
      loading: false,
      navigation: {
        index: 0,
        routes: [
          { key: '0', title: 'เติม Foodhall Coin' },
          { key: '1', title: 'ประวัติ' },
        ],
      },
    }
  }

  componentWillMount = () => {
    this.state.shopdetail = this.props._shopdetail;
  }

  componentDidMount = () => {

  }

  /**
     * Header Component
     */
  renderHeader = props => (
    <TabBar
      {...props}
      style={styles.tabbar}
      indicatorStyle={styles.tabbarIndicator}
      renderLabel={scene => (
        <Text style={[styles.tabbar_text]}>{scene.route.title}</Text>
      )}
    />
  )

  redeem() {
    if (this.state.redeemno == '') {
      Alert.alert(
        'Foodhall Message',
        'กรุณากรอกรหัสบัตรเงินสด',
        [
          { text: 'OK', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
        ],
        { cancelable: false }
      )
    }
    else {
      if (this.state.redeemno.length != 14) {
        Alert.alert(
          'Foodhall Message',
          'กรุณากรอกรหัสบัตรให้ครบ 14 หลัก',
          [
            { text: 'OK', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
          ],
          { cancelable: false }
        )
      }
      else { 
        this.setState({ loading: true }); 
        var params = {
          shopid: this.state.shopdetail.id,
          tmn: this.state.redeemno,
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

        console.log(request);



        fetch(AppConfig.api + 'api/tmnredeem', request).then((response) => {
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

            Actions.redeemsuccess();
          }).done();




      }

    }

  }

  renderScene = ({ route }) => {
    switch (route.key) {
      case '0':
        return (
          <View style={styles.tabContainer}>
            <ScrollView
              automaticallyAdjustContentInsets={false}
            >
              <KeyboardAvoidingView behavior='padding'  >
                <View style={{ height: AppSizes.screen.height - 30 }}>
                  <View style={[styles.row]}>
                    <View style={{ padding: 15, justifyContent: 'space-between', flexDirection: 'row' }}>
                      <Text style={{ fontSize: 24, fontWeight: 'normal', marginTop: 8, color: '#6C7A89' }}><Image style={{ width: (Platform.OS === 'ios') ? 20 : 60, height: (Platform.OS === 'ios') ? 20 : 60, }} source={require('../../assets/images/ic_coin.png')} /> 50</Text>
                      <Button
                        style={{ width: 140 }}
                        borderColor={'#f58300'}
                        color={'#f58300'}
                        small
                        outlined
                        title={'บัตรทรูมันนี่ 50 บาท'}
                      />

                    </View>
                  </View>

                  <View style={[styles.row]}>
                    <View style={{ padding: 15, justifyContent: 'space-between', flexDirection: 'row' }}>
                      <Text style={{ fontSize: 24, fontWeight: 'normal', marginTop: 8, color: '#6C7A89' }}><Image style={{ width: (Platform.OS === 'ios') ? 20 : 60, height: (Platform.OS === 'ios') ? 20 : 60, }} source={require('../../assets/images/ic_coin.png')} /> 90</Text>
                      <Button
                        style={{ width: 140 }}
                        borderColor={'#f58300'}
                        color={'#f58300'}
                        small
                        outlined
                        title={'บัตรทรูมันนี่ 90 บาท'}
                      />

                    </View>
                  </View>

                  <View style={[styles.row]}>
                    <View style={{ padding: 15, justifyContent: 'space-between', flexDirection: 'row' }}>
                      <Text style={{ fontSize: 24, fontWeight: 'normal', marginTop: 8, color: '#6C7A89' }}><Image style={{ width: (Platform.OS === 'ios') ? 20 : 60, height: (Platform.OS === 'ios') ? 20 : 60, }} source={require('../../assets/images/ic_coin.png')} /> 150</Text>
                      <Button
                        style={{ width: 140 }}
                        borderColor={'#f58300'}
                        color={'#f58300'}
                        small
                        outlined
                        title={'บัตรทรูมันนี่ 150 บาท'}
                      />

                    </View>
                  </View>

                  <View style={[styles.row]}>
                    <View style={{ padding: 15, justifyContent: 'space-between', flexDirection: 'row' }}>
                      <Text style={{ fontSize: 24, fontWeight: 'normal', marginTop: 8, color: '#6C7A89' }}><Image style={{ width: (Platform.OS === 'ios') ? 20 : 60, height: (Platform.OS === 'ios') ? 20 : 60, }} source={require('../../assets/images/ic_coin.png')} /> 300 <Text style={{ fontSize: 12, color: '#1E8BC3' }}>+ โบนัส  50</Text></Text>
                      <Button
                        style={{ width: 140 }}
                        borderColor={'#f58300'}
                        color={'#f58300'}
                        small
                        outlined
                        title={'บัตรทรูมันนี่ 300 บาท'}
                      />

                    </View>
                  </View>

                  <View style={[styles.row]}>
                    <View style={{ padding: 15, justifyContent: 'space-between', flexDirection: 'row' }}>
                      <Text style={{ fontSize: 24, fontWeight: 'normal', marginTop: 8, color: '#6C7A89' }}><Image style={{ width: (Platform.OS === 'ios') ? 20 : 60, height: (Platform.OS === 'ios') ? 20 : 60, }} source={require('../../assets/images/ic_coin.png')} /> 500 <Text style={{ fontSize: 12, color: '#1E8BC3' }}>+ โบนัส  150</Text></Text>
                      <Button
                        style={{ width: 140 }}
                        borderColor={'#f58300'}
                        color={'#f58300'}
                        small
                        outlined
                        title={'บัตรทรูมันนี่ 500 บาท'}
                      />

                    </View>
                  </View>

                  <View style={[styles.row]}>
                    <View style={{ padding: 15, justifyContent: 'space-between', flexDirection: 'row' }}>
                      <Text style={{ fontSize: 24, fontWeight: 'normal', marginTop: 8, color: '#6C7A89' }}><Image style={{ width: (Platform.OS === 'ios') ? 20 : 60, height: (Platform.OS === 'ios') ? 20 : 60, }} source={require('../../assets/images/ic_coin.png')} /> 1,000 <Text style={{ fontSize: 12, color: '#1E8BC3' }}>+ โบนัส  300</Text></Text>
                      <Button
                        style={{ width: 140 }}
                        borderColor={'#f58300'}
                        color={'#f58300'}
                        small
                        outlined
                        title={'บัตรทรูมันนี่ 1,000 บาท'}
                      />

                    </View>
                  </View>

                  <View style={{ flex: 1, backgroundColor: '#fff' }}>
                    <View style={{ padding: 15, flexDirection: 'column' }}>
                      <Text style={{ fontSize: 14, fontWeight: 'normal', marginTop: 8, color: '#6C7A89' }}>กรอกรหัสบัตรเงินสดทรูมันนี่ 14 หลักที่ด้านล่าง</Text>
                      <FormInput placeholder={'รหัสบัตร 14 หลัก'} borderBottomColor={'#ddd'}
                        keyboardType={'numeric'}
                        maxLength={14}
                        borderBottomWidth={1} height={40} multiline={false}
                        value={this.state.redeemno}
                        onChangeText={redeemno => this.setState({ redeemno })}
                      />
                      <Spacer size={20} />
                      <View style={{ alignItems: 'center' }}>
                      <Button 
                      onPress={()=>this.redeem()}
                      borderColor={'#f58300'}
                      backgroundColor={'#f58300'}
                      color={'#fff'}
                      small
                       
                      title={'ยืนยันการเติมบัตรเงินสดทรูมันนี่'}
                    />
                      </View>
                    </View>
                  </View>
                </View>
              </KeyboardAvoidingView>
            </ScrollView>
          </View>
        );
      case '1':
        return (
          <View style={styles.tabContainer}>
            <LoadingContainer
              onError={e => console.log(e)}
              onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
              onReadyAsync={this._onReadyAsync.bind(this)}>
              {this.renderpage()}
            </LoadingContainer>

          </View>
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
  renderpage = () => {
    if (this.state.items.length == 0) {
      return (
        <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
          <Text style={{ textAlign: 'center', color: '#BFBFBF' }}>ไม่มีรายการ</Text>
        </View>
      )

    }
    else {
      return (
        <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
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
          <Spacer size={50} />
        </View>
      );
    }
  }

  rendernotitxt(rowData) {
    switch (rowData.ways) {
      case 'SHOP_ORDER':
        return (
          <Text style={{
            color: "#6C7A89",
            fontSize: 14,
            fontWeight: 'normal'
          }}>ถูกหัก {rowData.unit} coins จากการสั่งซื้อสินค้าหมายเลข {rowData.orderno} </Text>
        )
        break;
      case 'SHOP_SLOT':
        return (
          <Text style={{
            color: "#6C7A89",
            fontSize: 14,
            fontWeight: 'normal'
          }}>ถูกหัก {rowData.unit} coins จากการปลดล๊อคช่องสินค้า</Text>
        )
        break;
      case 'FIRSTREGISTER':
        return (
          <Text style={{
            color: "#6C7A89",
            fontSize: 14,
            fontWeight: 'normal'
          }}>คุณได้รับ {rowData.unit} coins จากการเปิดร้านครั้งแรก</Text>
        )
        break;
      case 'MANUAL':
        return (
          <Text style={{
            color: "#6C7A89",
            fontSize: 14,
            fontWeight: 'normal'
          }}>คุณได้รับ {rowData.unit} coins จาก Foodhall</Text>
        )
        break;
      case 'TOPUP':
        return (
          <Text style={{
            color: "#6C7A89",
            fontSize: 14,
            fontWeight: 'normal'
          }}>คุณได้รับ {rowData.unit} coins จากการเติมเงิน</Text>
        )
        break;
      default:
        return (
          <View></View>
        )
        break;
    }

  }

  renderRow = (rowData, s, index) => {
    console.log(rowData);
    var createdate = moment.utc(rowData.ordercreatedate).local().format('DD MMM YYYY เวลา HH:mm');


    return (
      <View style={styles.row}>
        <Grid style={{ padding: 16, }}>
          <Row>
            {this.rendernotitxt(rowData)}
          </Row>
          <Row>
            <Text style={{ color: '#BDC3C7', fontSize: 12, }}> {createdate}</Text>
          </Row>
        </Grid>
      </View>
    );
  }


  handleChangeTab = (index) => {
    this.setState({
      navigation: { ...this.state.navigation, index },
    });
  }


  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'Foodhall Coin'}
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
        <TabViewAnimated
          style={[styles.tabContainer]}
          renderScene={this.renderScene}
          renderHeader={this.renderHeader}
          navigationState={this.state.navigation}
          onRequestChangeTab={this.handleChangeTab}
        />
        {/* <ScrollView
          automaticallyAdjustContentInsets={false}
          style={[AppStyles.container]}
        >


        </ScrollView> */}
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

    let response = await fetch(AppConfig.api + 'api/getshopredeem', request);
    return response.json();
  }

  async _onReadyAsync(data) {
    console.log(data);
    return new Promise((resolve) => {
      this.setState({
        items: data.result,
        dataSource: this.state.dataSource.cloneWithRows(data.result),
      }, resolve);
    });
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Dopurchase);
