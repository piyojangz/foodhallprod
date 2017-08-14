/**
 * Style Guide
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React, { Component } from 'react';
import { connect } from 'react-redux';
import {
  View,
  Alert,
  ListView,
  ScrollView,
  StyleSheet,
  TouchableOpacity,
  Image,
  Platform, AsyncStorage,
  ActivityIndicator,
  RefreshControl,
  PushNotificationIOS,
  Dimensions,
} from 'react-native';
import MapView from 'react-native-maps';
import LoadingContainer from 'react-native-loading-container';
import NavigationBar from 'react-native-navigation-bar';
import { TabViewAnimated, TabBar } from 'react-native-tab-view';
import { SocialIcon } from 'react-native-elements';
import { Actions } from 'react-native-router-flux';
import { AppConfig } from '@constants/';
import moment from 'moment';
import { Grid, Col, Row } from 'react-native-easy-grid';
import getDirections from 'react-native-google-maps-directions'
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
  FormLabel
} from '@components/ui/';
import SleekLoadingIndicator from 'react-native-sleek-loading-indicator';
import { FBLoginManager } from 'react-native-facebook-login';
import Icon from 'react-native-vector-icons/FontAwesome';
// Consts and Libs
import { AppColors, AppStyles, AppSizes } from '@theme/';
import * as appdataActions from '@redux/appdata/actions';
// Actions
import * as RecipeActions from '@redux/recipes/actions';
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


const mapStateToProps = state => ({
  _address: state.appdataReducer.address,
  _user: state.appdataReducer.user
});

const mapDispatchToProps = {
  address: appdataActions.address,
  user: appdataActions.user
};

/* Component ==================================================================== */
class Orderdetail extends Component {
  static componentName = 'Orderdetail';

  constructor(props) {
    super(props);

    // Setup ListViews
    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });


    this.state = {
      loading: false,
      ds: [],
      dataSource: ds,
      refreshing: false,
      userdetail: {
        tel: ''
        , email: ''
        , address: ''
        , name: ''
        , islogin: 0
        , id: ''
        , fbid: ''
      },
    };
  }


  _onRefresh() {
    this.setState({ refreshing: true });
    this._loadInitialDataAsync().then((data) => {
      this._onReadyAsync(data).then(() => {
        this.setState({ refreshing: false });
      });
    });

  }

  componentDidMount() {
    console.log("Order", this.props.order);
    this.setState({ userdetail: this.props._user });
  }

  rendershop = () => {
    return (
      <ListView
        enableEmptySections={true}
        refreshControl={
          <RefreshControl
            refreshing={this.state.refreshing}
            onRefresh={this._onRefresh.bind(this)}
          />
        }
        dataSource={this.state.dataSource}
        renderRow={this.renderRow.bind(this)}>
      </ListView>
    )
  }


  renderRow(rowData, sec, i) {

    var status = "";
    var color = "#FF4F4F";
    switch (parseInt(this.props.order.status)) {
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

    if (rowData == null && i == 0) {
      return (
        <View>
          <MapView
            style={{
              height: 240,
            }}

            zoom={17}
            region={{
              latitude: parseFloat(this.props.order.shippinglat || this.props.order.lat),
              longitude: parseFloat(this.props.order.shippinglng || this.props.order.lng),
              latitudeDelta: 0.0043,
              longitudeDelta: 0.0034,
            }}
          >
            <MapView.Marker coordinate={{
              latitude: parseFloat(this.props.order.shippinglat || this.props.order.lat),
              longitude: parseFloat(this.props.order.shippinglng || this.props.order.lng),
            }} />
          </MapView>
          <View
            style={{
              flexGrow: 1,
              alignItems: 'flex-start',
              flexDirection: 'column',
              padding: 15,
              backgroundColor: '#fff',
              paddingTop: 25,
            }}>
            <View style={{ backgroundColor: color, padding: 5, paddingRight: 15, paddingLeft: 15, borderRadius: 25, marginBottom: 10, }}>
              <Text style={{ fontSize: 18, color: '#fff', fontWeight: 'normal' }}>{status}</Text>
            </View>
            <View style={{ flexDirection: 'row', justifyContent: 'space-between' }}>
              <Text style={{ fontSize: 16, color: "#E67E22", fontWeight: 'bold' }}>ORDER NO. {this.props.order.orderno}</Text>
            </View>


            <Text
              style={{
                fontSize: 16,
                paddingTop: 15,
                paddingBottom: 15,
                color: '#464646',
                fontWeight: 'normal'
              }}>
              <Icon
                name={'user-circle'}
                size={14}
                rot
                color={'#464646'}
              /> ชื่อผู้สั่ง : {this.props.order.fullname}</Text>
            <Text
              style={{
                fontSize: 16,
                paddingBottom: 15,
                color: '#464646',
                fontWeight: 'normal'
              }}>
              <Icon
                name={'phone'}
                size={14}
                rot
                color={'#464646'}
              /> เบอร์ติดต่อ : {this.props.order.tel}</Text>

            <Text
              style={{
                fontSize: 16,
                paddingBottom: 15,
                color: '#464646',
                fontWeight: 'normal'
              }}>
              <Icon
                name={'address-book-o'}
                size={14}
                rot
                color={'#464646'}
              /> ที่อยู่ : {this.props.order.shippingaddress}</Text>

            <Text
              style={{
                fontSize: 16,
                paddingBottom: 15,
                color: '#464646',
                fontWeight: 'normal'
              }}>
              <Icon
                name={'clock-o'}
                size={14}
                rot
                color={'#464646'}
              /> สั่งเมื่อ : {moment.utc(this.props.order.createdate).local().format('DD MMM YYYY เวลา HH:mm')}</Text>

<Text
              style={{
                fontSize: 16,
                paddingBottom: 15,
                color: '#F00',
                fontWeight: 'normal'
              }}>
              <Icon
                name={'plus'}
                size={14} 
                color={'#F00'}
              /> เพิ่มเติม : {this.props.order.additional || '-'}</Text>
            {this.renderOrdertype(this.props.order)}

          </View>
        </View>
      )
    }
    else if (rowData != null) {
      return (
        <View style={{
          borderTopWidth: 1,
          borderColor: '#d7d7d7', backgroundColor: '#FFF'
        }}>
          <Grid>
            <Col style={{ width: 96, }}>
              <Image
                style={{
                  height: 85,
                  width: 85,
                  margin: 8,
                  backgroundColor: '#ecf0f1',
                  borderRadius: 5
                }}
                resizeMode={"cover"}
                source={{ uri: AppConfig.imgaddress + rowData.img }}
              />
            </Col>
            <Col>
              <Row style={{ padding: 8, paddingTop: 0, paddingBottom: 0, }}>
                <Text style={{ color: '#464646', fontWeight: 'normal' }}>{rowData.title}</Text>
              </Row>
              <Row style={{ padding: 8, paddingTop: 0, paddingBottom: 8, }}>
                <Text style={{ color: '#464646', fontSize: 18, fontWeight: 'normal' }}>{rowData.price}฿</Text>
              </Row>
            </Col>
            <Col style={{
              justifyContent: 'center',
              alignItems: 'center', width: 50,
            }}>
              <Text style={{ color: '#000000', fontWeight: 'normal', fontSize: 24, }}>X{rowData.amount}</Text>
            </Col>
            <Col style={{
              justifyContent: 'center',
              alignItems: 'flex-end', marginRight: 8,
            }}>
              <Text style={{ color: '#000000', }}>{rowData.price * rowData.amount}฿</Text>
            </Col>
          </Grid>



        </View>
      )
    }
    else {
      return (
        <View style={{
          borderBottomWidth: 0,
          borderColor: '#d7d7d7',
        }}>

          <Grid>
            <Row style={{
              height: 50, borderBottomWidth: 1, borderTopWidth: 1,
              borderColor: '#d7d7d7',
            }}>
              <Col style={{ alignItems: 'flex-start', justifyContent: 'center', paddingLeft: 8, }}><Text style={{ color: '#464646', fontSize: 14, }}>ค่าบริการจัดส่ง</Text></Col>
              <Col style={{ alignItems: 'flex-end', justifyContent: 'center', paddingRight: 8, }}><Text style={{ color: '#464646', fontWeight: 'bold', fontSize: 14, }}>{this.props.order.shippingfee}฿</Text></Col>
            </Row>
            <Row style={{ height: 50, }}>
              <Col style={{ alignItems: 'flex-start', justifyContent: 'center', paddingLeft: 8, }}><Text style={{ color: '#464646', fontSize: 14, }}>ค่าอาหาร</Text></Col>
              <Col style={{ alignItems: 'flex-end', justifyContent: 'center', paddingRight: 8, }}><Text style={{ color: '#464646', fontWeight: 'bold', fontSize: 14, }}>{this.numberWithCommas(parseFloat(this.props.order.summary))}฿</Text></Col>
            </Row>

          </Grid>
        </View>
      )
    }

  }

  renderOrdertype(rowData) {
    console.log(rowData);
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
        <Text style={{ fontSize: 14, color: "#E67E22", }}> บริการส่งถึงที่</Text>
      </View>)
    }

  }

  numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  }

  handleGetDirections = () => {
    this.setState({ loading: true, });
    navigator.geolocation.getCurrentPosition((position) => {
      this.setState({ loading: false, });
      console.log(position);
      const data = {
        source: {
          latitude: parseFloat(position.coords.latitude),
          longitude: parseFloat(position.coords.longitude)
        },
        destination: {
          latitude: parseFloat(this.props.order.shoplat),
          longitude: parseFloat(this.props.order.shoplng)
        },
        params: [
          {
            key: "dirflg",
            value: "d"
          }
        ]
      }

      getDirections(data)
    }, (error) => {
      console.log(JSON.stringify(error))
    }, {
        enableHighAccuracy: Platform.OS != 'android',
        timeout: 20000,
        maximumAge: 1000
      });


  }

  render = () => {
    return (<View style={[AppStyles.container]}>
      <NavigationBar
        title={this.props.order.orderno}
        height={(Platform.OS === 'ios') ? 44 : 64}
        titleColor={'#fff'}
        leftButtonIcon={require('../../../assets/images/ic_left-arrow.png')}
        backgroundColor={AppColors.brand.primary}
        leftButtonTitle={'back'}
        onLeftButtonPress={Actions.pop}
        leftButtonTitleColor={'#fff'}
        rightButtonTitle={' นำทาง'}
        rightButtonTitleColor={'#fff'}
        onRightButtonPress={this.handleGetDirections}
        rightButtonIcon={require('../../../assets/images/ic_compass.png')}
      />

      <Spacer size={64} />

      <View style={{ flex: 1 }}>
        <LoadingContainer
          onError={e => console.log(e)}
          onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
          onReadyAsync={this._onReadyAsync.bind(this)}>
          {this.rendershop()}
        </LoadingContainer>
      </View>

      <Spacer size={50} />
      <SleekLoadingIndicator loading={this.state.loading} />
    </View>

    )
  }


  async _loadInitialDataAsync() {
    var params = {
      orderid: this.props.order.orderid,
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
    let response = await fetch(AppConfig.api + 'api/getorderdetail', request);

    return response.json();
  }

  async _onReadyAsync(data) {
    return new Promise((resolve) => {
      data.result.push(null);
      data.result.splice(0, 0, null);
      this.setState({
        dataSource: this.state.dataSource.cloneWithRows(data.result),
      }, resolve)
    });
  }

}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Orderdetail);

