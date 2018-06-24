import React, { Component } from 'react';
import { connect } from 'react-redux';
import * as Animatable from 'react-native-animatable';
import { AppConfig } from '@constants/';
import PropTypes from 'prop-types';
import LoadingContainer from 'react-native-loading-container';
import NavigationBar from 'react-native-navigation-bar';
import {
  View,
  Alert,
  ListView,
  ScrollView,
  StyleSheet,
  TouchableOpacity,
  Image,
  Dimensions,
  TouchableWithoutFeedback,
  RefreshControl,
  Platform
} from 'react-native';
import SleekLoadingIndicator from 'react-native-sleek-loading-indicator';
import { Grid, Col, Row } from 'react-native-easy-grid';
import Carousel from 'react-native-looped-carousel';
import { TabViewAnimated, TabBar } from 'react-native-tab-view';
import Icon from 'react-native-vector-icons/FontAwesome';
// Consts and Libs
import { AppColors, AppStyles, AppSizes } from '@theme/';
//Action
import * as appdataActions from '@redux/appdata/actions';
// Components
import getDirections from 'react-native-google-maps-directions'
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

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5FCFF',
    justifyContent: 'center'
  },
  row: {
    flex: 1,
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
  floatbutton: {
    width: 60,
    height: 60,
    borderRadius: 30,
    backgroundColor: '#F3C42C',
    position: 'absolute',
    flexDirection: 'column',
    justifyContent: 'center',
    alignItems: 'center',
    bottom: (Platform.OS === 'ios') ? 60 : 60,
    right: 10,
  },

});

const mapStateToProps = state => ({
  _address: state.appdataReducer.address
});

const mapDispatchToProps = {
  address: appdataActions.address
};

class Shopdetail extends Component {
  static componentName = 'Shopdetail';

  constructor(props) {
    super(props);

    var ds = new ListView.DataSource({
      rowHasChanged: (row1, row2) => row1 != row2,
    });

    this.state = {
      loading: false,
      ds: [],
      dataSource: ds,
      refreshing: false,
      numpadval: 0,
      floatshow: false,
      userdetail: null,
      items: []
    }

  }


  gobasket() {

    var basket = [];
    this.state.dataSource._dataBlob.s1.map((data) => {
      if (data.amount > 0) {
        basket.push(data);
      }
    });
    Actions.basket({ basket: basket, shopdetail: this.props.shopdetail });

    // var user = this.state.userdetail;
    // if(user != null){
    //   if(user.islogin == 1){
    //     var basket = [];
    //     this.state.dataSource._dataBlob.s1.map((data)=>{
    //       if(data.amount > 0){
    //         basket.push(data);
    //       }
    //     });
    //     this.props.setBasket(basket);
    //     this.replaceRoute('basket');
    //   }
    //   else{
    //     this.navigateTo('account');
    //   }
    // }else {
    //   this.navigateTo('account');
    // }
  }



  floatbutton = () => {
    if (this.state.floatshow) {
      return (<TouchableWithoutFeedback onPress={() => this.gobasket({ shopdetail: this.state.shopdetail })} >
        <Animatable.View style={styles.floatbutton} animation="zoomIn" duration={200} easing="ease-out" >
          <Icon
            name={'check'}
            size={35}
            rot
            color={'#FFFFFF'} />
        </Animatable.View>
      </TouchableWithoutFeedback>)
    }
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

    var newArray = this.state.dataSource._dataBlob.s1.slice();
    newArray[index] = {
      ...newArray[index],
      amount: num,
    };

    this.setState({
      dataSource: this.state.dataSource.cloneWithRows(newArray),
      items: newArray
    }, () => {
      this.checkAmoumt();
    })


  }

  checkAmoumt = () => {
    var amount = 0;
    this.state.dataSource._dataBlob.s1.map((data) => {
      amount += data.amount ? data.amount : 0;
    });
    console.log(amount);
    if (amount > 0) {
      this.setState({ floatshow: true });
    }
    else {
      this.setState({ floatshow: false });
    }

  }

  numberPad = (rowData, index) => {
    if (this.props.shopdetail.shopdetail.isshopopen != 'false') {
      return (
        <View style={{ width: 150, }}>
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
        </View>

      )
    }
    else {
      return (
        <View style={{ width: 170, }}>
          <View style={{
            justifyContent: 'center',
            alignItems: 'center', backgroundColor: '#ecf0f1', padding: 5, borderRadius: 50,
          }}>
            <Text style={{ color: '#aaa',fontSize:12, }}>{'ไม่สามารถสั่งอาหารได้'}</Text>
          </View>
        </View>
      )
    }
  }

  renderPayment(data) {
    var payment = [];
    if (data.cashaccept == '1') {
      payment.push(<View key={data.id + 'cash'} style={{ flexDirection: 'row',marginRight: 15, }}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 5,   }} name='check-circle-o' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> รับเงินสด</Text>
      </View>);

    }
    if (data.bankaccept == '1') {
      payment.push(<View key={data.id + 'bank'} style={{ flexDirection: 'row',marginRight: 15, }}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF', paddingTop: 5,   }} name='check-circle-o' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> โอนเงิน</Text>
      </View>);
    }

    return payment;
  }
  renderDelivery(isdelivery) {
    if (isdelivery == '1') {
      return (<View style={{ flexDirection: 'row',marginRight: 15, }}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF',  paddingTop: 5, }} name='motorcycle' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> บริการส่งถึงที่</Text>
      </View>);
    }
  }

  renderPickup(ispickup) {
    if (ispickup == '1') {
      return (<View style={{ flexDirection: 'row' ,marginRight: 15,}}>
        <Icon style={{ fontSize: 14, color: '#BFBFBF',  paddingTop: 5, }} name='map-pin' />
        <Text style={{ fontSize: 14, color: "#8E8A8A", }}> รับกลับ</Text></View>);
    }
  }


  mapthaiday(day) {
    switch (day) {
      case 'MON':
        return 'จ.';
      case 'TUE':
        return 'อ.';
      case 'WED':
        return 'พ.';
      case 'THU':
        return 'พฤ.';
      case 'FRI':
        return 'ศ.';
      case 'SAT':
        return 'ส.';
      case 'SUN':
        return 'อา.';
      default:
        return '-';
    }
  }
  renderWorkingday(workingday) {
    var views = [];
    workingday.forEach(function (element) {
      views.push(
        <View key={'v_' + element.id} style={{ marginLeft: 10, marginRight: 10 }}>
          <Text key={element.id} style={{ color: '#525252', fontWeight: 'normal' }}>{this.mapthaiday(element.workingday)} {element.timeopen.substr(0, 5)} - {element.timeclose.substr(0, 5)}</Text>
        </View>
      );
    }, this);
    return (
      <ScrollView horizontal={true}  >
        <View style={{ flexDirection: 'row', padding: 10, }}>
          {views}
        </View>
      </ScrollView>
    )
  }

  renderRow(rowData, sec, i) {
    if (i == 0) {
      return (
        <View style={styles.row}>

          <Image
            style={{
              height: 240,
              width: null,
            }}
            resizeMode={"cover"}
            source={{ uri: AppConfig.imgaddress + rowData.shopdetail.img }}
          >
          </Image>

          <View style={{ flex: 1, padding: 15, paddingBottom: 0, flexDirection: 'row', backgroundColor: "#FFFFFF", alignItems: 'center' }}>
            <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
              <Text style={{ fontSize: 22, color: "#464646", fontWeight: 'bold', textAlign: 'center' }}>{rowData.shopdetail.title}</Text>
              <View style={{ flex: 1, flexDirection: 'row', justifyContent: 'center', paddingTop:10,paddingBottom:5 }}>
                  {this.renderPayment(rowData.shopdetail)}
                  {this.renderDelivery(rowData.shopdetail.isdelivery)}
                  {this.renderPickup(rowData.shopdetail.ispickup)}
                </View>
              <Text style={{ color: '#E67E22', textAlign: 'center', fontWeight: 'normal' }}>{rowData.shopdetail.catename}</Text>
            </View>
          </View> 
          <View style={{ flex: 1, padding: 15, paddingTop: 5, flexDirection: 'column', backgroundColor: "#FFFFFF", alignItems: 'center' }}>
            <View style={{ backgroundColor: '#ecf0f1', padding: 5, borderRadius: 25, paddingLeft: 20, paddingRight: 20, marginBottom: 5, }}>
              <Text style={{ fontSize: 18, color: rowData.shopdetail.isshopopen == 'true' ? "#525252" : "#AAA", fontWeight: 'normal' }}>{rowData.shopdetail.isshopopen == 'true' ? 'OPEN' : 'CLOSE'}</Text>
            </View>
            {this.renderWorkingday(rowData.workingdays)}
          </View>
          <View style={{ flex: 1, padding: 15, paddingTop: 0, paddingBottom: 0, flexDirection: 'row', backgroundColor: "#FFFFFF", alignItems: 'center' }}>
            <ScrollView horizontal={true}>
              <View style={{
                justifyContent: 'center',
                flexDirection: 'column',
                flex: 1,
              }}>
            
              </View>
            </ScrollView>
          </View>
        </View>
      )
    }
    else {
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

                {this.numberPad(rowData, i)}

              </Row>
            </Col>
          </Grid>

        </View>
      )
    }
  }


  // renderCarousel = (uri) => {
  //   return (
  //     <Image
  //       style={{ width: Dimensions.get('window').width, height: Dimensions.get('window').width }}
  //       resizeMode="contain"
  //       source={{
  //         uri: AppConfig.imgaddress + uri
  //       }}
  //     />
  //   );
  // }



  _onRefresh() {
    this.setState({ refreshing: true, floatshow: false, });
    this._loadInitialDataAsync().then((data) => {
      this._onReadyAsync(data).then(() => {
        this.setState({ refreshing: false });
      });
    });

  }

  rendershop = () => {
    return (
      <ListView
        enableEmptySections={false}
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

  async _loadInitialDataAsync() {

    var params = {
      shopid: this.props.shopdetail.shopdetail.id,
    };
    var formData = new FormData();
    for (var k in params) {
      formData.append(k, params[k]);
    }
    var request = {
      method: 'POST',
      body: formData
    };

    let response = await fetch(AppConfig.api + 'api/getitemlist', request);
    return response.json();
  }

  async _onReadyAsync(data) {
    return new Promise((resolve) => {
      var shops = [];
      data.result.splice(0, 0, this.props.shopdetail);
      console.log(data);
      this.setState({
        items: data.result,
        dataSource: this.state.dataSource.cloneWithRows(data.result),
      }, resolve)
    });
  }


  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={this.props.shopdetail.shopdetail.title}
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

        <View style={{ flex: 1, }}>
          <LoadingContainer
            onError={e => console.log(e)}
            onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
            onReadyAsync={this._onReadyAsync.bind(this)}>
            {this.rendershop()}
          </LoadingContainer>
        </View>
        {this.floatbutton()}
        <Spacer size={50} />
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>

    )
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
          latitude: parseFloat(this.props.shopdetail.shopdetail.lat),
          longitude: parseFloat(this.props.shopdetail.shopdetail.lng)
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

}
/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Shopdetail);