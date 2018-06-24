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
import ImagePicker from 'react-native-image-crop-picker';
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
  ToastAndroid,
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
class Additem extends Component {

  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });
    this.mapCircle = null;
    this.mapRef = null;
    this.state = {
      loading: false,
      imgsrc: undefined,
      id: '',
      title: '',
      price: '',
      isactive: '',
      imgchange: false
    }
  }

  componentWillMount = () => {
    this.state.shopdetail = this.props._shopdetail;
    if (this.props.itemdetail != undefined) {
      console.log(this.props.itemdetail);
      this.setState({
        id: this.props.itemdetail.id,
        isactive: this.props.itemdetail.isactive,
        title: this.props.itemdetail.title,
        price: this.props.itemdetail.price,
        imgsrc: AppConfig.imgaddress + this.props.itemdetail.img
      });
    }
  }

  componentDidMount = () => {

  }

  delete() { 
    Alert.alert(
      'Foodhall Message',
      'คุณต้องการลบไอเท็มนี้?',
      [
        { text: 'Cancel', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
        {
          text: 'OK', onPress: () => {
            this.setState({ loading: true });


            var params = {
              shopid: this.state.shopdetail.id,
              itemid: this.state.id,
              isactive: this.state.isactive,
              txttitle: this.state.title,
              txtprice: this.state.price, // เพิ่ม 
              isdelete: 1,
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



            fetch(AppConfig.api + 'api/upload_images_item', request).then((response) => {
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

                Actions.pop({ refresh: { reload: true } });
              }).done();


          }
        },
      ],
      { cancelable: false }
    )


  }




  save() {
    if (this.state.title && this.state.price != '') {
      if (this.state.imgchange == false && this.state.id == "") {
        if (Platform.OS === "ios") {
          AlertIOS.alert(
            'FoodHall แจ้งเตือน',
            'กรุณาเพิ่มรูปภาพ',
            [{
              text: 'Dismiss',
              onPress: null,
            }]
          );
        }
        if (Platform.OS === "android") {
          ToastAndroid.show('กรุณาเพิ่มรูปภาพ', ToastAndroid.SHORT);
        }
      }
      else {
        // do action


        this.setState({ loading: true });



        var params = {
          shopid: this.state.shopdetail.id,
          itemid: this.state.id,
          isactive: this.state.isactive,
          txttitle: this.state.title,
          txtprice: this.state.price, // เพิ่ม  
          isdelete: 0,
        };



        var formData = new FormData();
        for (var k in params) {
          formData.append(k, params[k]);
        }

        if (this.state.imgchange) {
          formData.append('imageData', this.state.imgsrc);
        }


        var request = {
          method: 'POST',
          headers: {
            'Accept': 'application/json',
          },
          body: formData
        };

        console.log(request);



        fetch(AppConfig.api + 'api/upload_images_itemv2', request).then((response) => {
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

            Actions.pop({ refresh: { reload: true } });
          }).done();

      }
    }
    else {
      if (Platform.OS === "ios") {
        AlertIOS.alert(
          'FoodHall แจ้งเตือน',
          'กรุณาระบุข้อมูลให้ครบถ้วน',
          [{
            text: 'Dismiss',
            onPress: null,
          }]
        );
      }
      if (Platform.OS === "android") {
        ToastAndroid.show('กรุณาระบุข้อมูลให้ครบถ้วน', ToastAndroid.SHORT);
      }
    }
  }

  pickimage() {
    ImagePicker.openPicker({
      width: 800,
      height: 800,
      includeBase64: true,
      loadingLabelText: 'กำลังประมวลผลรูปภาพ',
      cropping: true
    }).then(image => {
      console.log(image);
      var src = 'data:image/png;base64,' + image.data;
      this.setState({ imgsrc: src, imgchange: true });
    });
  }
  renderimg() {
    if (this.state.imgsrc != undefined) {
      return (
        <Image style={{ height: AppSizes.screen.width, width: AppSizes.screen.width }} source={{ uri: this.state.imgsrc }} >
            <View style={{ backgroundColor: 'rgba(255,255,255,0.7)', borderTopLeftRadius: 5, paddingLeft: 10, paddingRight: 10, position: 'absolute', bottom: 0, right: 0 }}>
                <Text size={12}> <Icon name={'camera'}
                  size={12}
                  rot
                  color={'#000'} /> แก้ไข</Text>
              </View>
              </Image>
      )
    }
    else {
      return (
        <Icon
          name={'plus'}
          size={35}
          rot
          color={'#DADFE1'} />
      )
    }
  }

  deletebtn() {
    if (this.state.id != '') {
      return (<Button
        borderRadius={30}
        borderColor={'#FB6567'}
        color={'#FB6567'}
        outlined
        title={'ลบ'}
        onPress={() => this.delete()}
      />);
    }
    else {
      return (<View></View>);
    }
  }
  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'เพิ่ม/แก้ไขสินค้า'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          backgroundColor={AppColors.brand.shopprimary}
          onRightButtonPress={() => this.save()}
          leftButtonTitleColor={'#fff'}
          rightButtonTitle={'บันทึก'}
          rightButtonTitleColor={'#fff'}

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
            <TouchableWithoutFeedback onPress={() => this.pickimage()}>
              <View style={{ backgroundColor: '#fff', height: AppSizes.screen.width, justifyContent: 'center', alignItems: 'center', }}>
                {this.renderimg()}
              </View>
            </TouchableWithoutFeedback>
            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <FormLabel>ชื่อสินค้า</FormLabel>
              <FormInput placeholder={'เช่น คาปูชิโน่'} value={this.state.title} onChangeText={title => this.setState({ title })} />
            </View>

            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <FormLabel>ราคา</FormLabel>
              <FormInput placeholder={'120'} value={this.state.price} keyboardType={'numeric'} onChangeText={price => this.setState({ price })} />
            </View>

            <View style={{ borderBottomColor: '#C2CBCF', borderBottomWidth: 1, marginLeft: 25, marginRight: 25, }}>
              <Spacer size={15} />
              <View style={{ flexDirection: 'row', justifyContent: 'space-between', paddingBottom: 10, }}>
                <FormLabel>สถานะ ใช้งาน / ไม่ใช้งาน</FormLabel>
                <Switch
                  value={this.state.isactive == '1' ? true : false}
                  onValueChange={val => this.setState({ isactive: val ? '1' : 0 })}
                  disabled={false}
                  activeText={'On'}
                  inActiveText={'Off'}
                  backgroundActive={'green'}
                  backgroundInactive={'gray'}
                  circleActiveColor={'#30a566'}
                  circleInActiveColor={'#000000'}
                />
              </View>
              <Spacer size={35} />
              {this.deletebtn()}

              <Spacer size={15} />
            </View>
            <Spacer size={50} />
          </KeyboardAvoidingView>
        </ScrollView>
        <SleekLoadingIndicator loading={this.state.loading} />

      </View>
    )
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Additem);
