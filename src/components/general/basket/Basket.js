import React, { Component } from 'react';
import { connect } from 'react-redux';
import NavigationBar from 'react-native-navigation-bar';
import LoadingContainer from 'react-native-loading-container';
import { AppConfig } from '@constants/';
import {
  View,
  Alert,
  ListView,
  ScrollView,
  StyleSheet,
  TouchableOpacity,
  Image,
  Dimensions,
  InteractionManager,
  TouchableWithoutFeedback,
  Platform,
  AsyncStorage,
  ToastAndroid,
  KeyboardAvoidingView,
  AlertIOS,
} from 'react-native';
import MapView from 'react-native-maps';
import SleekLoadingIndicator from 'react-native-sleek-loading-indicator';
import { TabViewAnimated, TabBar } from 'react-native-tab-view';
import { SocialIcon } from 'react-native-elements';
import { Actions } from 'react-native-router-flux';
import Carousel from 'react-native-looped-carousel';
import { AppSizes } from '@theme/';
import moment from 'moment';
import * as appdataActions from '@redux/appdata/actions';
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
import { Grid, Col, Row } from 'react-native-easy-grid';
import Icon from 'react-native-vector-icons/FontAwesome';
// Consts and Libs
import { AppColors, AppStyles } from '@theme/';

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5FCFF',
    justifyContent: 'center'
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
    paddingLeft: 5,
    paddingRight: 5,
    paddingTop: 5,
    paddingBottom: 5,
    alignItems: 'center',
    borderRadius: 25
  },
  texttime: {
    color: '#fff',
    fontSize: 14,
    fontWeight: 'normal'
  }
});

const mapStateToProps = state => ({
  _address: state.appdataReducer.address,
  _user: state.appdataReducer.user
});

const mapDispatchToProps = {
  address: appdataActions.address,
  user: appdataActions.user
};

class Basket extends Component {
  static componentName = 'Basket';

  constructor(props) {
    super(props);

    var ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 != r2
    });


    this.state = {
      ds: [],
      items: [],
      pickuptime: 0,
      btntimetoogle: false,
      loading: false,
      date: new Date(),
      shippingaddress: undefined,
      shippinglat: undefined,
      shippinglng: undefined,
      dataSource: ds,
      refreshing: false,
      numpadval: 0,
      userdetail: {
        tel: ''
        , email: ''
        , address: ''
        , name: ''
        , islogin: 0
        , id: ''
        , fbid: ''
      },
      summary: 0,
      total: 0,
      strtitle: '',
      orderrange: '08:00น. - 11:00น.',
      orderadditional: '',
      shop: [],
      modalVisible: false,
      modalRangeVisible: false,
      date: new Date(),
      timeZoneOffsetInHours: (-1) * (new Date()).getTimezoneOffset() / 60,
    };

  }

  componentWillReceiveProps(props) {
    console.log(props);
    AsyncStorage.getItem("userdetail").then((value) => {
      if (value != null) {
        if (props.Reload) {
          this.setState({ shippingaddress: props.customshippingaddress.address, shippinglat: props.customshippingaddress.lat, shippinglng: props.customshippingaddress.lng });
        }
        else {
          this.setState({ userdetail: JSON.parse(value) });
          this.setState({ shippingaddress: props._shippingaddress || this.props._user.address });
        }

      }
    }).done();
  }

  componentWillMount() {
    this.setState({ userdetail: this.props._user, shop: this.props.shopdetail });
    this.setState({ shippingaddress: this.props._user.address, shippinglat: this.props._user.lat, shippinglng: this.props._user.lng });
  }

  componentDidMount() {
    console.log("this.state.shippingaddress", this.state.shippingaddress);
  }

  onnumpadChange = (rowData, index, type) => {
    var amount = rowData.amount ? rowData.amount : 0;
    if (type == 'minute') {
      var num = parseInt(amount) - 1;
    }
    else {
      var num = parseInt(amount) + 1;
    }
    if (num < 0) {
      num = 0;
    }



    var newArray = this.state.items.slice();

    newArray[index] = {
      ...newArray[index],
      amount: num,
    };

    newArray[newArray.length - 1] = {
      timestamp: Date.now()
    }


    this.checkAmount(newArray);


  }


  numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  }

  setaddress(prm) {
    Actions.shippingaddresslist({ userdetail: prm, issave: true, });
  }

  checkAmount = (newArray) => {

    var summary = 0;
    var total = 0;

    newArray.forEach(function (element) {
      if (element.timestamp == null) {
        summary += parseFloat(element.price) * parseFloat(element.amount);
      }
    }, this);


    total = summary + parseInt(this.state.shop.shopdetail.deriveryfee);


    this.setState({
      items: newArray,
      summary: summary, total: total
    }, () => {
      this.setState({
        dataSource: this.state.dataSource.cloneWithRows(newArray),
      });
    });



  }

  onItemClicked(ordertype) {
    var user = this.state.userdetail;
    if (user.islogin == 1) {
      if (this.state.shippingaddress == '') {
        Alert.alert(
          'Warning',
          'กรุณาเพิ่มที่อยู่ก่อนคะ',
          [
            { text: 'เอาไว้ที่หลัง', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
            { text: 'เพิ่มเดี๋ยวนี้เลย', onPress: () => this.setaddress(this.state.userdetail) },
          ],
          { cancelable: false }
        )
      }
      else {
        console.log(parseInt(parseInt(this.state.shop.shopdetail.minprice)));
        if (parseInt(this.state.summary) < parseInt(this.state.shop.shopdetail.minprice)) {
          if (Platform.OS === "ios") {
            AlertIOS.alert(
              'FoodHall แจ้งเตือน',
              'ค่าอาหารต้องมากกว่า ' + this.numberWithCommas(this.state.shop.shopdetail.minprice) + ' บาท',
              [{
                text: 'Dismiss',
                onPress: null,
              }]
            );
          }
          if (Platform.OS === "android") {
            ToastAndroid.show('ค่าอาหารต้องมากกว่า ' + this.numberWithCommas(this.state.shop.shopdetail.minprice) + ' บาท', ToastAndroid.SHORT);
          }


        }
        else {
          switch (ordertype) {
            case 'DELIVERY':
              Alert.alert(
                'Warning',
                'คุณต้องการสั่งอาหารให้มาส่งใช่ไหม?',
                [
                  { text: 'ไม่ใช่', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
                  { text: 'ใช่', onPress: () => this.sendOrder('NOW') },
                ],
                { cancelable: false }
              )


              break;
            case 'NEXTDAY':
              Alert.alert(
                'Warning',
                'ออเดอร์จะจัดส่งในวันถัดไป คุณต้องการสั่งใช่ไหม?',
                [
                  { text: 'ไม่ใช่', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
                  { text: 'ใช่', onPress: () => this.sendOrder('NEXTDAY') },
                ],
                { cancelable: false }
              )


              break;
            case 'PICKUP':
              this.toogleTime();
              break;

            default:
              break;
          }
        }

        // this.navigateTo('basket');
      }
    }
    else {
      Actions.login();
    }

  }

  setpickuptime = (strmin) => {
    this.setState({ pickuptime: strmin });
    Alert.alert(
      'Warning',
      'อีก ' + strmin + ' นาที คุณจะไปรับอาหาร?',
      [
        { text: 'ยกเลิก', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
        { text: 'ยืนยัน', onPress: () => this.sendOrder('PICKUP') },
      ],
      { cancelable: false }
    )

  }

  sendOrder = (ordertype) => {
    this.setState({ loading: true });

    var orderlist = [];
    var amountlist = []


    var params = {
      // orderlist: JSON.stringify(orderlist),
      // amountlist:JSON.stringify(amountlist),
      userid: this.state.userdetail.id,
      shopid: this.state.shop.shopdetail.id,
      shippingfee: this.state.shop.shopdetail.deriveryfee,
      additional: this.state.orderadditional,
      deliverytime: moment.utc().format('YYYY-MM-DD HH:mm:ss'),
      summary: this.state.summary,
      pickuptime: this.state.pickuptime,
      paidtype: 'CASH',
      deriveryrange: ordertype,
      lat: this.state.userdetail.lat,
      lng: this.state.userdetail.lng,
      address: this.state.shippingaddress,
    };

    var formData = new FormData();
    this.state.dataSource._dataBlob.s1.map((data) => {
      console.log(data);
      if (data != null) {
        if (!data.timestamp) {
          var strid = data.id;
          var orderamount = data.amount;
          formData.append('orderlist[]', strid);
          formData.append('amountlist[]', orderamount);
        }

      }

    });


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
    fetch(AppConfig.api + 'api/submitorder', request).then((response) => {
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
        Actions.noti({ forceloading: true });
      }).done();
  }

  numberPad = (rowData, index) => {
    if (this.props.shopdetail.isshopopen != 'false') {
      return (
        <Grid style={{ margin: 0, marginBottom: 16, }}>
          <Col>
            <TouchableOpacity
              onPress={() => this.onnumpadChange(rowData, index, 'minute')}
              activeOpacity={70 / 100}>
              <View style={{
                justifyContent: 'center',
                alignItems: 'center', backgroundColor: '#ecf0f1', padding: 8, borderRadius: 50,
              }}>
                <Icon style={{ fontSize: 14, color: '#000000', }} name='minus' />
              </View>
            </TouchableOpacity>
          </Col>

          <Col style={{
            width: 50, justifyContent: 'center',
            alignItems: 'center',
          }}>
            <Text style={{ fontSize: 18, color: "#E67E22", lineHeight: 22, fontWeight: 'normal' }}>{rowData.amount ? rowData.amount : '0'}</Text>
          </Col>

          <Col>
            <TouchableOpacity
              onPress={() => this.onnumpadChange(rowData, index, 'plus')}
              activeOpacity={70 / 100}>
              <View style={{
                justifyContent: 'center',
                alignItems: 'center', backgroundColor: '#ecf0f1', padding: 8, borderRadius: 50,
              }}>
                <Icon style={{ fontSize: 14, color: '#000000', }} name='plus' />
              </View>
            </TouchableOpacity>
          </Col>

        </Grid>

      )
    }
  }

  renderCarousel = (uri) => {
    return (
      <Image
        style={{ width: Dimensions.get('window').width, height: Dimensions.get('window').width }}
        resizeMode="contain"
        source={{
          uri: AppConfig.imgaddress + uri
        }}
      />
    );
  }

  rendershop = () => {
    return (
      <ListView
        dataSource={this.state.dataSource}
        renderRow={this.renderRow.bind(this)}>
      </ListView>
    )
  }

  renderShippingAddress = () => {
    var user = this.state.userdetail;
    if (user.islogin == 1) {
      return (
        <View>
          <Row style={{ paddingTop: 20, }}>
            <Col style={{ alignItems: 'flex-start', justifyContent: 'center', paddingLeft: 8, }}>
              <Text style={{ color: '#464646', fontSize: 14, fontWeight: 'bold', textDecorationLine: 'underline' }}>ชื่อผู้สั่ง</Text>
              <Text style={{ color: '#464646', fontSize: 14, }}>{this.state.userdetail.name}</Text>
            </Col>
            <Col style={{ alignItems: 'flex-end', justifyContent: 'center', paddingRight: 28 }}>
              <Text style={{ color: '#464646', fontSize: 14, fontWeight: 'bold', textDecorationLine: 'underline', textAlign: 'left' }}>เบอร์โทรติดต่อ</Text>
              <Text style={{ color: '#464646', fontSize: 14 }}>{this.state.userdetail.tel}</Text>
            </Col>
          </Row>
          <Row style={{ paddingTop: 10, paddingBottom: 20, }}>
            <Col style={{ alignItems: 'flex-start', justifyContent: 'center', paddingLeft: 8 }}>
              <View style={{ justifyContent: 'space-between', flexDirection: 'row', width: (Dimensions.get('window').width - 50), }}>
                <Text style={{ color: '#464646', fontSize: 14, fontWeight: 'bold', textDecorationLine: 'underline' }}>ที่อยู่สำหรับจัดส่ง</Text>
                <TouchableOpacity onPress={() => this.setaddress(this.state.userdetail)}  >
                  <Text style={{ color: '#0E62C3', fontSize: 14, fontWeight: 'bold', textDecorationLine: 'underline', textAlign: 'left' }}>เพิ่ม/แก้ไข</Text>
                </TouchableOpacity>
              </View>
              <Text style={{ color: '#464646', fontSize: 14, }}>{this.state.shippingaddress}</Text>
            </Col>
          </Row>
        </View>
      )
    }
    else {
      return (<View></View>)
    }
  }

  renderRow(rowData, sec, i) {
    if (rowData.timestamp == null) {
      return (
        <View style={{
          borderBottomWidth: 1,
          paddingTop: 20,
          paddingBottom: 20,
          borderColor: '#d7d7d7', backgroundColor: '#FFF'
        }}>
          <Grid>
            <Col style={{ width: 120, paddingLeft: 25, }}>
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
            <Col style={{ paddingLeft: 25, }}>
              <Row style={{ padding: 8, paddingTop: 0, paddingBottom: 0, }}>
                <Text style={{ color: '#464646', fontWeight: 'normal' }}>{rowData.title}</Text>
              </Row>
              <Row style={{ padding: 8, paddingTop: 0, paddingBottom: 8, }}>
                <Text style={{ color: '#464646', fontSize: 18, fontWeight: 'normal' }}>{rowData.price}฿</Text>
              </Row>
              <Row>
                <View style={{ width: 150, }}>
                  {this.numberPad(rowData, i)}
                </View>
              </Row>
            </Col>
          </Grid>

        </View>
      )
    }
    else {
      return (
        <KeyboardAvoidingView behavior='padding'  >
          <Grid>
            <Row style={{ height: 50, }}>
              <Col style={{ alignItems: 'flex-start', justifyContent: 'center', paddingLeft: 8, }}><Text style={{ color: '#464646', fontSize: 14, }}>ค่าบริการจัดส่ง</Text></Col>
              <Col style={{ alignItems: 'flex-end', justifyContent: 'center', paddingRight: 8, }}><Text style={{ color: '#464646', fontWeight: 'bold', fontSize: 14, }}>{this.state.shop.shopdetail.deriveryfee}฿</Text></Col>
            </Row>
            <Row style={{
              height: 50, borderBottomWidth: 1,
              borderColor: '#d7d7d7',
            }}>
              <Col style={{ alignItems: 'flex-start', justifyContent: 'center', paddingLeft: 8, }}><Text style={{ color: '#464646', fontSize: 14, }}>ค่าอาหาร</Text></Col>
              <Col style={{ alignItems: 'flex-end', justifyContent: 'center', paddingRight: 8, }}><Text style={{ color: '#464646', fontWeight: 'bold', fontSize: 14, }}>{this.numberWithCommas(this.state.summary)}฿</Text></Col>
            </Row>
            <Row>
              <Col style={{ alignItems: 'flex-start', justifyContent: 'center', paddingLeft: 8, }}>
                <Text style={{ color: '#464646', fontSize: 14, }}>เพิ่มเติม (เช่น.หวานน้อย ,ขอซอสพริกเยอะๆ)</Text>
                <FormInput placeholder={'ระบุรายละเอียดเพิ่มเติม'} borderBottomColor={'#ddd'}
                  borderBottomWidth={1} height={40} multiline={true}
                  value={this.state.orderadditional}
                  onChangeText={orderadditional => this.setState({ orderadditional })}
                />
              </Col>

            </Row>
            {this.renderShippingAddress()}
          </Grid>

        </KeyboardAvoidingView>
      )
    }
  }

  golaststep() {
    if (parseInt(this.state.summary) <= parseInt(this.state.shopdetail.minprice)) {
      this.alertmsg('ค่าอาหารต้องมากกว่า ' + this.state.shopdetail.minprice + ' บาท')
    }
    else {
      //show celendar
      var strtitle = "";
      // var deliverydate = new Date();//.addHours(parseInt(this.state.shopdetail.ordertime)).toString("dd-mm-yyyy");
      // var TimezoneOffset =  (-1) * (new Date()).getTimezoneOffset() / 60;
      //console.log(deliverydate.getTime() + (parseInt(this.state.shopdetail.ordertime)*60*60*1000));
      let today = moment(new Date());
      var deliverydate = moment().add(parseInt(this.state.shopdetail.ordertime), 'hours');
      // console.log(today);
      // console.log(deliverydate);
      if (deliverydate.diff(today, 'days') == 0) {
        strtitle = "ต้องการให้ส่งวันนี้เวลา?";
        this.props.basket.istoday = true;
        this.setState({ modalVisible: true, strtitle: strtitle, date: deliverydate.toDate() });
      }
      if (deliverydate.diff(today, 'days') == 1) {
        strtitle = "ต้องการให้ส่งพรุ่งนี้เวลา?";
        this.props.basket.istoday = false;
        this.setState({ modalRangeVisible: true, strtitle: strtitle, date: deliverydate.toDate() });
      }
      if (deliverydate.diff(today, 'days') > 1) {
        strtitle = "ต้องการให้ส่งหลังวันที่ " + deliverydate.format('DD/MM/YYYY') + " เวลา?";
        this.props.basket.istoday = false;
        this.setState({ modalRangeVisible: true, strtitle: strtitle, date: deliverydate.toDate() });
      }


    }
  }

  confirmorder(visible) {
    this.setState({ modalVisible: visible });
    this.setState({ modalRangeVisible: visible });
    let today = moment(new Date());
    let setdate = moment(this.state.date);
    var deliverydate = today.add(parseInt(this.state.shopdetail.ordertime), 'hours');
    console.log(deliverydate.diff(setdate, 'hours'));
    if (deliverydate.diff(setdate, 'hours') <= 0) {
      this.props.basket.settime = setdate;
      this.props.basket.setrange = this.state.orderrange;
      //console.log(this.props.basket);
      //console.log(moment.utc(setdate).format('YYYY-DD-MM HH:mm:ss'));
      this.props.setBasket(this.props.basket);
      this.replaceRoute('confirmorder');
    }
    else {
      if (this.state.shopdetail.ordertime < 0) {
        this.alertmsg('ต้องสั่งล่วงหน้าอย่างน้อย ' + this.state.shopdetail.ordertime + ' ชั่วโมง');
      }
      else {
        this.alertmsg('ไม่สามารถตั้งเวลาส่งน้อยกว่าเวลาปัจจุบัน');
      }
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

  renminprice() {
    if (parseInt(this.state.summary) < parseInt(this.state.shop.shopdetail.minprice)) {
      return (
        <View style={{ backgroundColor: '#F64747', padding: 8, justifyContent: 'center', alignItems: 'center', flexDirection: 'row' }}>
          <Icon name="warning" style={{ color: '#fff' }} />
          <Text style={{ color: '#fff', fontSize: 14, lineHeight: 24, fontWeight: 'normal' }}> คุณต้องมีค่าอาหารมากกว่า {this.numberWithCommas(this.state.shop.shopdetail.minprice)} บาทขึ้นไป</Text>
        </View>
      )
    }
    else {
      return;
    }
  }

  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'รายการอาหาร'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          leftButtonIcon={require('../../../assets/images/ic_left-arrow.png')}
          backgroundColor={AppColors.brand.primary}
          leftButtonTitle={'ย้อนกลับ'}
          onLeftButtonPress={Actions.pop}
          leftButtonTitleColor={'#fff'}
        />

        <Spacer size={64} />

        <View style={{ flex: 1, }}>


          <LoadingContainer
            onError={e => console.log(e)}
            onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
            onReadyAsync={this._onReadyAsync.bind(this)}>

            {this.renminprice()}
            {this.rendershop()}

            <View style={{ backgroundColor: '#FFF', marginBottom: 50, }}>
              <View style={{ height: 50, width: null, backgroundColor: '#FFFFFF', }}>
                <Grid>
                  <Col style={{ alignItems: 'flex-start', justifyContent: 'center', paddingLeft: 8, }}><Text style={{ color: '#000', fontSize: 14 }}>ยอดที่ต้องชำระ</Text></Col>
                  <Col style={{ alignItems: 'flex-end', justifyContent: 'center', paddingRight: 8, }}><Text style={{ color: '#000', fontWeight: 'bold', fontSize: 14, }}>{this.numberWithCommas(this.state.total)}฿</Text></Col>
                </Grid>
              </View>
              <View style={{ padding: 10, flexDirection: 'row', justifyContent: 'space-between', alignSelf: 'center', borderTopColor: '#ddd', borderTopWidth: 1, }}>

                <TouchableOpacity onPress={() => this.onItemClicked('PICKUP')} disabled={(this.state.shop.shopdetail.ispickup == 0)}>
                  <View style={styles.btn}>
                    <Text style={{ color: (this.state.shop.shopdetail.ispickup == 0 ? '#ddd' : '#22313F'), fontSize: 14, fontWeight: 'normal', width: 70, textAlign: 'center' }}>รับกลับ</Text>
                  </View>
                </TouchableOpacity>
                <TouchableOpacity onPress={() => this.onItemClicked('DELIVERY')} disabled={(this.state.shop.shopdetail.isdelivery == 0 || this.state.shop.shopdetail.isimmediatedelivery == 0)}>
                  <View style={styles.btn}>
                    <Text style={{ color: ((this.state.shop.shopdetail.isdelivery == 0 || this.state.shop.shopdetail.isimmediatedelivery == 0) ? '#ddd' : '#22313F'), fontSize: 14, fontWeight: 'normal', width: 70, textAlign: 'center' }}>ส่งวันนี้</Text>
                  </View>
                </TouchableOpacity>

                <TouchableOpacity onPress={() => this.onItemClicked('NEXTDAY')} disabled={(this.state.shop.shopdetail.isdelivery == 0 || this.state.shop.shopdetail.isonedaydelivery == 0)}>
                  <View style={styles.btn}>
                    <Text style={{ color: ((this.state.shop.shopdetail.isdelivery == 0 || this.state.shop.shopdetail.isonedaydelivery == 0) ? '#ddd' : '#22313F'), fontSize: 14, fontWeight: 'normal', width: 70, textAlign: 'center' }}>ส่งพรุ่งนี้</Text>
                  </View>
                </TouchableOpacity>


              </View>
              <View style={{
                position: 'absolute',
                left: 0,
                right: 0,
                top: this.state.btntimetoogle == true ? 0 : 200,
                bottom: this.state.btntimetoogle == true ? 0 : -200,
                backgroundColor: '#fff',
                paddingTop: 25,
                alignContent: 'center',
              }}>
                <Text style={{
                  textAlign: 'center'
                }}>เลือกเวลาที่ต้องการไปรับ</Text>
                <ScrollView horizontal={true}>
                  <View style={{
                    justifyContent: 'center',
                    flexDirection: 'column',
                    flex: 1,
                  }}>
                    <View style={{
                      flexDirection: 'row',
                    }}>
                      <TouchableOpacity onPress={() => this.setpickuptime('5')}  >
                        <View
                          style={styles.btntime}>
                          <Text
                            style={{
                              color: '#fff',
                              fontSize: 14,
                              fontWeight: 'normal'
                            }}>ล่วงหน้า 5 นาที</Text>
                        </View>
                      </TouchableOpacity>

                      <TouchableOpacity onPress={() => this.setpickuptime('10')}  >
                        <View
                          style={styles.btntime}>
                          <Text
                            style={{
                              color: '#fff',
                              fontSize: 14,
                              fontWeight: 'normal'
                            }}>ล่วงหน้า 10 นาที</Text>
                        </View>
                      </TouchableOpacity>

                      <TouchableOpacity onPress={() => this.setpickuptime('15')}  >
                        <View
                          style={styles.btntime}>
                          <Text
                            style={{
                              color: '#fff',
                              fontSize: 14,
                              fontWeight: 'normal'
                            }}>ล่วงหน้า 15 นาที</Text>
                        </View>
                      </TouchableOpacity>

                      <TouchableOpacity onPress={() => this.setpickuptime('20')}  >
                        <View
                          style={styles.btntime}>
                          <Text
                            style={{
                              color: '#fff',
                              fontSize: 14,
                              fontWeight: 'normal'
                            }}>ล่วงหน้า 20 นาที</Text>
                        </View>
                      </TouchableOpacity>

                      <TouchableOpacity onPress={() => this.setpickuptime('25')}  >
                        <View
                          style={styles.btntime}>
                          <Text
                            style={{
                              color: '#fff',
                              fontSize: 14,
                              fontWeight: 'normal'
                            }}>ล่วงหน้า 25 นาที</Text>
                        </View>
                      </TouchableOpacity>

                      <TouchableOpacity onPress={() => this.setpickuptime('30')}  >
                        <View
                          style={styles.btntime}>
                          <Text
                            style={{
                              color: '#fff',
                              fontSize: 14,
                              fontWeight: 'normal'
                            }}>ล่วงหน้า 30 นาที</Text>
                        </View>
                      </TouchableOpacity>
                    </View>
                  </View>
                </ScrollView>
                <TouchableWithoutFeedback onPress={() => this.toogleTime()}>
                  <View style={{
                    position: 'absolute',
                    width: 50,
                    height: 50,
                    top: 0,
                    right: 15,
                    backgroundColor: '#FFF',
                    justifyContent: 'center',
                    alignContent: 'center',
                    alignItems: 'center',
                  }}>
                    <Icon style={{ fontSize: 28, color: '#C2CBCF', fontWeight: '100' }} name='chevron-down'></Icon>
                  </View>
                </TouchableWithoutFeedback>
              </View>

            </View>
          </LoadingContainer>

        </View>
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>
    )
  }


  toogleTime = () => {
    if (this.state.btntimetoogle) {
      this.setState({ btntimetoogle: false });
    }
    else {
      this.setState({ btntimetoogle: true });
    }
    console.log(this.state.btntimetoogle);
  }


  async _loadInitialDataAsync() {
    return;
  }

  async _onReadyAsync(data) {
    return new Promise((resolve) => {
      this.props.basket.push({ timestamp: Date.now() });
      setTimeout(
        () => {
          this.setState({
            items: this.props.basket,
            dataSource: this.state.dataSource.cloneWithRows(this.props.basket),
          }, resolve)

          var newArray = this.props.basket.slice(); 
          newArray[newArray.length - 1] = {
            timestamp: Date.now()
          }

          this.checkAmount(newArray);
        },
        500
      );

    });
  }
}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Basket);