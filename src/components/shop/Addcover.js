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
class Addcover extends Component {

  constructor(props) {
    super(props);

    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });
    this.mapCircle = null;
    this.mapRef = null;
    this.state = {
      loading: false,
      isimgchange:false,
      imgsrc: undefined,
      id: '',
      title: '',
      price: ''
    }
  }

  componentWillMount = () => {
    this.state.shopdetail = this.props._shopdetail;
    if (this.props.itemdetail != undefined) {
      console.log(this.props.itemdetail);
      this.setState({
        id: this.props.itemdetail.id,
        title: this.props.itemdetail.title,
        price: this.props.itemdetail.price,
        imgsrc: AppConfig.imgaddress + this.props.itemdetail.img
      });
    }
  }

  componentDidMount = () => {

  }


  save() {
 
      if (this.state.isimgchange == false) {
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
          imageData: this.state.imgsrc, 
        };

        var formData = new FormData();
        for (var k in params) {
          formData.append(k, params[k]);
        }

        console.log(formData);

        var request = {
          method: 'POST',
          headers: {
            'Accept': 'application/json',
          },
          body: formData
        };

        console.log(request);



        fetch(AppConfig.api + 'api/upload_images_shopv2', request).then((response) => {
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

  pickimage() {
    ImagePicker.openPicker({
      width: 800,
      height: 500,
      includeBase64: true,
      loadingLabelText: 'กำลังประมวลผลรูปภาพ',
      cropping: true
    }).then(image => {
      console.log(image);
      var src = 'data:image/png;base64,' + image.data;
      this.setState({ imgsrc: src,isimgchange:true });
    });
  }
  renderimg() {
    if (this.state.imgsrc != undefined) {
      return (
        <Image style={{ height: AppSizes.screen.width / 1.4, width: AppSizes.screen.width }} source={{ uri: this.state.imgsrc }} />
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
  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'เพิ่ม/แก้ไขรูปหน้าร้าน'}
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

            <View style={{ backgroundColor: '#fff', height: AppSizes.screen.width / 1.4, justifyContent: 'center', alignItems: 'center', }}>
              {this.renderimg()}
            </View>

            <View style={{ padding: 25, }}>
              <Button
                onPress={() => this.pickimage()}
                borderRadius={30}
                borderColor={'#1E8BC3'}
                color={'#1E8BC3'}
                small
                outlined
                title={'เลือกรูปภาพ'}
              />
            </View>

            <Spacer size={50} />
          </KeyboardAvoidingView>

        </ScrollView>
        <SleekLoadingIndicator loading={this.state.loading} />

      </View>
    )
  }


}

export default connect(mapStateToProps, mapDispatchToProps)(Addcover);
