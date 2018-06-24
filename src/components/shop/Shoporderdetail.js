/**
 * Style Guide
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React, { Component } from 'react';
import { connect } from 'react-redux';
import * as Animatable from 'react-native-animatable';
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
  TouchableWithoutFeedback,
  Dimensions,
} from 'react-native';
import Communications from 'react-native-communications';
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
  btn: {
    backgroundColor: '#ecf0f1',
    paddingTop: 5,
    paddingBottom: 5,
    paddingLeft: 10,
    paddingRight: 10,
    margin: 10,
    borderRadius: 50,
  },
  btntime: {
    backgroundColor: '#F1C40F',
    margin: 5,
    paddingLeft: 15,
    paddingRight: 15,
    paddingTop: 5,
    paddingBottom: 5,
    alignItems: 'center',
    borderRadius: 25
  },
  texttime: {
    color: '#fff',
    fontSize: 14,
    fontWeight: 'normal'
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
class Shoporderdetail extends Component {
  static componentName = 'Shoporderdetail';

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
      if (this.props.order.user_img != '') {
        var profileimg = AppConfig.imgaddress + this.props.order.user_img;
      }
      else {
        var profileimg = (this.props.order.fbid == '' || this.props.order.fbid == '0' ? 'http://leafood.servewellsolution.com/public/uploads/shop_img/foodhallcover.png' : 'https://graph.facebook.com/' + this.props.order.fbid + '/picture?width=250&height=250');
      }
      return (
        <View>
          <MapView
            scrollEnabled={false}
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


            <View style={{ flexDirection: 'row', marginTop: 15, }}>
              <TouchableWithoutFeedback onPress={() => Actions.imageslide({ img: profileimg })} >
                <Image
                  ref={'profileimg'}
                  style={{ height: 30, width: 30, backgroundColor: '#fff', borderRadius: 15 }}
                  resizeMode={"cover"}
                  source={{
                    uri: profileimg
                  }} />
              </TouchableWithoutFeedback>
              <Text
                style={{
                  fontSize: 16,
                  paddingLeft: 5,
                  paddingTop: 0,
                  paddingBottom: 15,
                  color: '#464646',
                  fontWeight: 'normal'
                }}>
                ชื่อผู้สั่ง : {this.props.order.fullname == 0 || this.props.order.fullname == '' ? this.props.order.email : this.props.order.fullname}</Text>
            </View>


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
              /> เบอร์ติดต่อ : <TouchableWithoutFeedback onPress={() => Communications.phonecall(this.props.order.tel, true)} ><Text style={{ color: '#2574A9', fontWeight: 'normal', textDecorationLine: 'underline' }} >{this.props.order.tel}</Text></TouchableWithoutFeedback></Text>

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
              /> สั่งเมื่อ : {moment.utc(this.props.order.deriverydate).local().format('DD MMM YYYY เวลา HH:mm')}</Text>

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


            {this.renderimgslip(this.props.order)}
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
              <TouchableWithoutFeedback onPress={() => Actions.imageslide({ img: AppConfig.imgaddress + rowData.img })} >
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
              </TouchableWithoutFeedback>
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
            <View style={{
            borderTopWidth: 1,
            borderColor: '#d7d7d7',
          }}>
            <Row style={{ height: 50, backgroundColor: '#C3DFFF' }}>
              <Col style={{ alignItems: 'flex-start', justifyContent: 'center', paddingLeft: 8, }}><Text style={{ color: '#464646', fontSize: 14, }}>ยอดที่ต้องชำระ</Text></Col>
              <Col style={{ alignItems: 'flex-end', justifyContent: 'center', paddingRight: 8, }}><Text style={{ color: '#464646', fontWeight: 'bold', fontSize: 14, }}>{this.numberWithCommas(parseFloat(this.props.order.shippingfee) + parseFloat(this.props.order.summary))}฿</Text></Col>
            </Row>
          </View>
          </Grid>
        </View>
      )
    }

  }
  renderPayment(data) {
    var payment = [];
    if (data.paidtype.toUpperCase() == 'CASH') {
      payment.push(<View key={data.id + 'cash'} style={{ flexDirection: 'row', marginRight: 15 }}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 5 }} name='check-circle-o' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> รับเงินสด</Text>
      </View>);

    }
    if (data.paidtype.toUpperCase() == 'BANK') {
      payment.push(<View key={data.id + 'bank'} style={{ flexDirection: 'row', marginRight: 15 }}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 5 }} name='check-circle-o' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> โอนเงิน</Text>
      </View>);
    }

    return payment;
  }
  renderimgslip(rowData) {
    if (rowData.paidtype.toUpperCase() == 'BANK') {
      var imgslip = AppConfig.imgaddress + rowData.imgslip;
      return (
        <TouchableWithoutFeedback onPress={() => Actions.imageslide({ img: imgslip })} >
          <Text style={{ color: '#1F3A93', textDecorationLine: 'underline' }}>  <Icon style={{ fontSize: 14, color: '#1F3A93', paddingTop: 3 }} name='file-o' /> ไฟล์แนบ(slip)</Text>

        </TouchableWithoutFeedback>
      )
    }
    else {
      return (
        <View />
      )
    }
  }

  renderOrdertype(rowData) {
    if (rowData.pickuptime > 0) {
      return (<View style={{ flexDirection: 'row', marginRight: 15 }}>
        {this.renderPayment(rowData)}
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 3, }} name='map-pin' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> รับกลับ <Text style={{ fontSize: 18, color: "#F00", }}> ({rowData.pickuptime} นาที)</Text></Text></View>)
    }
    else {
      return (<View style={{ flexDirection: 'row', marginRight: 15 }}>
        {this.renderPayment(rowData)}
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 3, }} name='motorcycle' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> บริการส่งถึงที่ {rowData.deriveryrange == 'NEXTDAY' ? '(ในวันถัดไป)' : '(ในวันนี้)'}</Text>
      </View>)
    }

  }

  numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  }

  handleGetDirections = () => {
    console.log(this.props.order);
    this.setState({ loading: true, });
    navigator.geolocation.getCurrentPosition((position) => {
      this.setState({ loading: false, });

      const data = {
        source: {
          latitude: parseFloat(position.coords.latitude),
          longitude: parseFloat(position.coords.longitude)
        },
        destination: {
          latitude: parseFloat(this.props.order.shippinglat),
          longitude: parseFloat(this.props.order.shippinglng)
        },
        params: [
          {
            key: "dirflg",
            value: "d"
          }
        ]
      }
      console.log(data);
      getDirections(data)
    }, (error) => {
      console.log(JSON.stringify(error))
    }, {
        enableHighAccuracy: Platform.OS != 'android',
        timeout: 20000,
        maximumAge: 1000
      });


  }


  changeorderstatus(type) {
    switch (type) {
      case 'ACCEPT':
        this.accept();
        break;
      case 'REJECT':
        this.reject();
        break;
      case 'DONE':
        this.done();
        break;

      default:
        break;
    }
  }


  accept() {
    Alert.alert(
      'Foodhall Message',
      'ยืนยันการรับออเดอร์?',
      [
        { text: 'Cancel', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
        {
          text: 'OK', onPress: () => {
            this.setState({ loading: true });
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

            console.log(request);



            fetch(AppConfig.api + 'api/setacceptorder', request).then((response) => {
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

                Actions.pop({ refresh: { isreload: true } });
              }).done();
          }
        },
      ],
      { cancelable: false }
    )
  }

  reject() {
    Alert.alert(
      'Foodhall Message',
      'ยืนยันการปฏิเสธออเดอร์?',
      [
        { text: 'Cancel', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
        {
          text: 'OK', onPress: () => {
            this.setState({ loading: true });


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

            console.log(request);



            fetch(AppConfig.api + 'api/setrejectorder', request).then((response) => {
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

                Actions.pop({ refresh: { isreload: true } });
              }).done();
          }
        },
      ],
      { cancelable: false }
    )
  }

  done() {
    Alert.alert(
      'Foodhall Message',
      'ยืนยันการจบรายการ?',
      [
        { text: 'Cancel', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
        {
          text: 'OK', onPress: () => {
            this.setState({ loading: true });


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

            console.log(request);



            fetch(AppConfig.api + 'api/setcompletedorder', request).then((response) => {
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

                Actions.pop({ refresh: { isreload: true } });
              }).done();
          }
        },
      ],
      { cancelable: false }
    )
  }

  renderbtn() {
    if (this.props.status != 'HISTORY') {


      if (this.props.status == 'PENDING') {
        return (
          <View style={{ padding: 20, backgroundColor: '#FFFFFF', justifyContent: 'center', flexDirection: 'row' }}>
            <TouchableOpacity onPress={() => this.changeorderstatus('DONE')} >
              <View
                style={[styles.btntime, { backgroundColor: '#00B16A' }]}>

                <Text
                  style={{
                    color: '#fff',
                    fontSize: 14,
                    fontWeight: 'normal'
                  }}>  <Icon name={'check'} color={'#FFF'} /> จัดส่งสินค้า / ลูกค้ามารับ เรียบร้อยแล้ว</Text>
              </View>
            </TouchableOpacity>

          </View>
        )
      }
      else {
        return (
          <View style={{ padding: 20, backgroundColor: '#FFFFFF', justifyContent: 'space-between', flexDirection: 'row' }}>
            <TouchableOpacity onPress={() => this.changeorderstatus('REJECT')} >
              <View
                style={[styles.btntime, { backgroundColor: '#D64541' }]}>
                <Text
                  style={{
                    color: '#fff',
                    fontSize: 14,
                    fontWeight: 'normal'
                  }}><Icon name={'close'} color={'#FFF'} /> ปฏิเสธ</Text>
              </View>
            </TouchableOpacity>

            <TouchableOpacity onPress={() => this.changeorderstatus('ACCEPT')} >
              <View
                style={styles.btntime}>
                <Text
                  style={{
                    color: '#fff',
                    fontSize: 14,
                    fontWeight: 'normal'
                  }}><Icon name={'check'} color={'#FFF'} /> ตอบรับ</Text>
              </View>
            </TouchableOpacity>

          </View>
        )
      }
    }
    else {
      return (<View></View>);
    }
  }

  render = () => {
    return (<View style={[AppStyles.container]}>
      <NavigationBar
        title={this.props.order.orderno}
        height={(Platform.OS === 'ios') ? 44 : 64}
        titleColor={'#fff'}
        leftButtonIcon={require('../../assets/images/ic_left-arrow.png')}
        backgroundColor={AppColors.brand.shopprimary}
        leftButtonTitle={'back'}
        onLeftButtonPress={Actions.pop}
        leftButtonTitleColor={'#fff'}
        rightButtonTitle={' นำทาง'}
        rightButtonTitleColor={'#fff'}
        onRightButtonPress={this.handleGetDirections}
        rightButtonIcon={require('../../assets/images/ic_compass.png')}
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

      <View style={{
        backgroundColor: '#FFF', shadowColor: '#BDC3C7',
        shadowOffset: {
          width: 0,
          height: 3
        },
        shadowRadius: 5,
        shadowOpacity: 0.4
      }}>
        {this.renderbtn()}
      </View>
      <Spacer size={51} />


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
export default connect(mapStateToProps, mapDispatchToProps)(Shoporderdetail);

