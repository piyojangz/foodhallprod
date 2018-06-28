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
  TouchableWithoutFeedback,
  Platform, AsyncStorage
} from 'react-native';
import NavigationBar from 'react-native-navigation-bar';
import { AppConfig } from '@constants/';
import { TabViewAnimated, TabBar } from 'react-native-tab-view';
import { SocialIcon } from 'react-native-elements';
import { Actions } from 'react-native-router-flux';
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
import Icon from 'react-native-vector-icons/Ionicons';
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
  }
});


const mapStateToProps = state => ({
  _shippingaddress: state.appdataReducer.shippingaddress,
  _user: state.appdataReducer.user
});

const mapDispatchToProps = {
  shippingaddress: appdataActions.shippingaddress,
  user: appdataActions.user
};

/* Component ==================================================================== */
class Profile extends Component {
  static componentName = 'Privilege';

  constructor(props) {
    super(props);

    // Setup ListViews
    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });
    const dsFrienss = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });

    this.state = {
      loading: false,
      userdetail: undefined,
      shippingaddress: undefined
    };
  }

  componentWillReceiveProps(props) {

    console.log(this.state.userdetail);
    if (props.reload) {

      this.setState({ userdetail: { ...this.state.userdetail, userimg: props.image } });

      //this.props.dispatch({ type: 'USER', user: this.state.userdetail });

      AsyncStorage.setItem("userdetail", JSON.stringify({
        tel: this.state.userdetail.tel
        , email: this.state.userdetail.email
        , userimg: props.image
        , activeaddress: this.state.userdetail.activeaddress
        , lat: this.state.userdetail.lat
        , lng: this.state.userdetail.lng
        , islogin: 1
        , name: this.state.userdetail.name
        , id: this.state.userdetail.id
        , address: this.state.userdetail.address
        , fbid: this.state.userdetail.fbid
        , shopid: this.state.userdetail.shopid,
      }));



    }
    else {
      AsyncStorage.getItem("userdetail").then((value) => {
        if (value != null) {
          this.setState({ userdetail: JSON.parse(value) });
          this.setState({ shippingaddress: this.props._user.address });
        }
      }).done();
    }

  }

  componentWillMount() {
    console.log('this.props', this.props.name);
    this.setState({ userdetail: this.props._user });
    this.setState({ shippingaddress: this.props._user.address });
  }



  componentDidMount() {
    if (this.props.name == 'shop') {
      if (this.state.userdetail.islogin == 1) {
        if (this.state.userdetail.shopid == null) {
          Actions.introduceshop();
        }
        else {
          AsyncStorage.setItem("mode", JSON.stringify({
            shopmode: 1
          }));
          Actions.shopscene();
        }
      }
      else {
        Actions.login();
      }
    }
  }



  logout() {

    // Works on both iOS and Android
    Alert.alert(
      'Foodhall Message',
      'คุณต้องการออกจากระบบ?',
      [
        { text: 'Cancel', onPress: () => console.log('Cancel Pressed'), style: 'cancel' },
        {
          text: 'OK', onPress: () => {
            this.setState({ loading: true, });
            FBLoginManager.logout(function (error, data) {
              if (!error) {
              } else {
                console.log(error, data);
              }
            });
            AsyncStorage.setItem("userdetail", JSON.stringify({
              tel: ''
              , email: ''
              , name: ''
              , userimg: ''
              , islogin: 0
              , address: ''
              , id: ''
              , fbid: ''
            }));
            this.setState({
              loading: false,
              userdetail: {
                tel: ''
                , email: ''
                , name: ''
                , userimg: ''
                , address: ''
                , islogin: 0
                , id: ''
                , fbid: ''
              }
            });

            Actions.explore();
          }
        },
      ],
      { cancelable: false }
    )
  }

  renderRow = (data, sectionID) => (

    <TouchableOpacity
      onPress={Actions.comingSoon}
      style={{
        marginBottom: 5
      }}>
      <Image style={styles.backgroundImage} resizeMode={"cover"} source={data.img}>
        <View
          style={{
            flex: 1,
            flexDirection: 'column',
            justifyContent: 'center'
          }}>
          <Text
            style={{
              textAlign: 'center',
              fontSize: 18,
              color: '#ffffff',
              backgroundColor: 'rgba(0,0,0,0)'
            }}>{data.title}</Text>
          <Text
            style={{
              textAlign: 'center',
              fontSize: 16,
              color: '#ffffff',
              backgroundColor: 'rgba(0,0,0,0)'
            }}>{data.datetime}</Text>
          <Text
            style={{
              textAlign: 'center',
              fontSize: 24,
              color: '#ffffff',
              backgroundColor: 'rgba(0,0,0,0)'
            }}>{data.budget}</Text>
        </View>
        <Icon
          name={'ios-arrow-forward-outline'}
          size={35}
          rot
          color={'#FFFFFF'}
          style={{
            position: 'absolute',
            backgroundColor: 'rgba(0,0,0,0)',
            right: 10,
            top: 45
          }} />
      </Image>

    </TouchableOpacity>
  )

  /**
    * Which component to show
    */
  renderScene = ({ route }) => {
    switch (route.key) {
      case '0':
        return (
          <View style={styles.tabContainer}>
            <Spacer size={-20} />
            <List>
              <ListView
                renderRow={this
                  .renderRow
                  .bind(this)}
                dataSource={this.state.dataSource} />
            </List>
          </View>
        );
      case '1':
        return (
          <View style={styles.tabContainer}>

          </View>
        )
      default:
        return (<View />);
    }
  }

  renderFriends(rowData) {
    return (
      <TouchableOpacity
        onPress={Actions.comingSoon}
        style={{
          margin: 1,
          padding: 5,
          paddingTop: 20,
          paddingBottom: 20,
          flexDirection: 'column',
          justifyContent: 'center',
          alignItems: 'center',
          backgroundColor: '#FFFFFF'
        }}>
        <Image
          style={{
            height: 50,
            width: 50,
            borderRadius: 30
          }}
          resizeMode={"cover"}
          source={{
            uri: rowData.img
          }} />
        <View style={{
          paddingLeft: 10
        }}>
          <Text numberOfLines={1} style={{
            fontSize: 14
          }}>{rowData.name}</Text>
        </View>
      </TouchableOpacity>
    )
  }
  /**
    * Header Component
    */
  renderHeader = props => (<TabBar
    {...props}
    style={styles.tabbar}
    indicatorStyle={styles.tabbarIndicator}
    renderLabel={scene => (
      <Text style={[styles.tabbar_text]}>{scene.route.title}</Text>
    )} />)

  swaptoshop() {
    if (this.state.userdetail.shopid == null) {
      Actions.introduceshop();
    }
    else {
      AsyncStorage.setItem("mode", JSON.stringify({
        shopmode: 1
      }));
      Actions.shopscene();
    }

  }

  rendernavbar() {
    if (this.state.userdetail.islogin == 1) {
      return (<NavigationBar
        title={'Profile'}
        height={(Platform.OS === 'ios') ? 44 : 64}
        titleColor={'#fff'}
        backgroundColor={AppColors.brand.primary}
      />)
    }
    else {
      return (<NavigationBar
        title={'Profile'}
        height={(Platform.OS === 'ios') ? 44 : 64}
        titleColor={'#fff'}
        backgroundColor={AppColors.brand.primary}
      />)
    }
  }


  setaddress(prm) {
    Actions.shippingaddresslist({ userdetail: prm });
    // Actions.shippingaddress({ userdetail: prm });
  }

  editimgprofile = (userdetail) => {
    Actions.addimgprofile({ userdetail: userdetail });
  }



  renderprofile() {
    if (this.state.userdetail.islogin == 1) {
      if (this.state.userdetail.userimg != '') {
        var profileimg = AppConfig.imgaddress + this.state.userdetail.userimg;
      }
      else {
        var profileimg = (this.state.userdetail.fbid == '' || this.state.userdetail.fbid == '0' ? 'http://leafood.thaiwebdevelop.com/public/uploads/shop_img/foodhallcover.png' : 'https://graph.facebook.com/' + this.state.userdetail.fbid + '/picture?width=250&height=250');
      }

      console.log(profileimg);
      return (
        <View>
          <TouchableWithoutFeedback onPress={() => this.editimgprofile(this.state.userdetail)}>
            <Image
              ref={'profileimg'}
              style={{
                height: 250,
              }}
              resizeMode={"cover"}
              source={{
                uri: profileimg
              }} >
              <View style={{ backgroundColor: 'rgba(255,255,255,0.7)', borderTopLeftRadius: 5, paddingLeft: 10, paddingRight: 10, position: 'absolute', bottom: 0, right: 0 }}>
                <Text size={12}> <Icon name={'md-camera'}
                  size={12}
                  rot
                  color={'#000'} /> แก้ไข</Text>
              </View>
            </Image>
          </TouchableWithoutFeedback>
          <View
            style={{
              flexGrow: 1,
              alignItems: 'flex-start',
              flexDirection: 'column',
              padding: 15,
              paddingTop: 25,
            }}>

            <Text
              style={{
                fontSize: 24,
                color: '#464646',
                paddingTop: 4,
                fontWeight: 'normal'
              }}>สวัสดี {this.state.userdetail.name == '0' ? this.state.userdetail.email : this.state.userdetail.name}</Text>

            <Text
              style={{
                fontSize: 16,
                paddingTop: 15,
                color: '#464646',
                fontWeight: 'normal'
              }}>
              <Icon
                name={'md-phone-portrait'}
                size={20}
                rot
                color={'#464646'}
              />  {this.state.userdetail.tel}</Text>

            <Text
              style={{
                fontSize: 16,
                paddingTop: 15,
                paddingBottom: 15,
                color: '#464646',
                fontWeight: 'normal'
              }}>
              <Icon
                name={'md-pin'}
                size={20}
                rot
                color={'#464646'}
              />  {this.state.shippingaddress || '* กรุณาเพิ่มที่อยู่'}</Text>


            <TouchableOpacity onPress={() => this.setaddress(this.state.userdetail)}  >
              <View
                style={{
                  backgroundColor: '#F1C40F',
                  paddingLeft: 35,
                  paddingRight: 35,
                  paddingTop: 10,
                  paddingBottom: 10,
                  alignItems: 'center',
                  borderRadius: 25
                }}>
                <Text
                  style={{
                    color: '#fff',
                    fontSize: 18,
                    fontWeight: 'normal'
                  }}>เพิ่ม/แก้ไขที่อยู่สำหรับจัดส่ง</Text>
              </View>
            </TouchableOpacity>

            <Spacer size={10} />

            <View
              style={{

                paddingTop: 30,
                paddingBottom: 10,
              }}>
              <Text
                style={{
                  color: '#000',
                  fontSize: 18,
                  fontWeight: 'normal'
                }}>ติดต่อเรา</Text>


              <View
                style={{
                  width: AppSizes.screen.width,
                  flexDirection: 'row',
                  justifyContent: 'space-between',
                  paddingRight: 50,
                  paddingLeft: 10,
                  paddingBottom: 10,
                }}>



                <View
                  style={{
                    flexDirection: 'column',
                    paddingTop: 10,
                    paddingBottom: 10,
                  }}>

                  <Text
                    style={{
                      color: '#BDC3C7',
                      fontSize: 14,
                      fontWeight: 'normal'
                    }}>LINE</Text>
                  <Text
                    style={{
                      color: '#000',
                      fontSize: 14,
                      fontWeight: 'normal'
                    }}>@foodhall</Text>

                </View>


                <View
                  style={{
                    flexDirection: 'column',
                    paddingTop: 10,
                    paddingBottom: 10,
                  }}>

                  <Text
                    style={{
                      color: '#BDC3C7',
                      fontSize: 14,
                      fontWeight: 'normal'
                    }}>เบอร์โทร</Text>
                  <Text
                    style={{
                      color: '#000',
                      fontSize: 14,
                      fontWeight: 'normal'
                    }}>086-364-7397</Text>

                </View>



              </View>
            </View>
            <TouchableOpacity onPress={() => this.logout()}  >
              <View
                style={{
                  backgroundColor: '#F64747',
                  paddingLeft: 35,
                  paddingRight: 35,
                  paddingTop: 10,
                  paddingBottom: 10,
                  alignItems: 'center',
                  borderRadius: 25
                }}>
                <Text
                  style={{
                    color: '#fff',
                    fontSize: 18,
                    fontWeight: 'normal'
                  }}>ออกจากระบบ</Text>
              </View>
            </TouchableOpacity>
          </View>
        </View>
      )
    }
    else {
      return (
        <View
          style={{
            flex: 1,
            alignItems: 'center',
            justifyContent: 'center',
            flexDirection: 'column',
            padding: 15,
            paddingTop: 90,
          }}>
          <Image
            style={{
              height: 150,
              width: 150,
            }}
            resizeMode={"cover"}
            source={require('../../assets/images/ic_application.png')}
          />
          <Text
            style={{
              color: '#000',
              fontSize: 14,
              lineHeight: 28,
              fontWeight: "normal",
              fontFamily: 'Helvetica Neue',
            }}>
            หิว...เมื่อไหร่ให้คิดถึง FoodHall
                  </Text>
          <TouchableOpacity onPress={Actions.login} multiline={true}>
            <View
              style={{
                marginTop: (25),
                backgroundColor: '#F1C40F',
                paddingLeft: 35,
                paddingRight: 35,
                paddingTop: 10,
                paddingBottom: 10,
                borderRadius: 25
              }}>
              <Text
                style={{
                  color: '#fff',
                  fontSize: 18
                }}>เข้าสู่ระบบ / สมัครสมาชิก</Text>
            </View>
          </TouchableOpacity>
        </View>
      )
    }
  }


  render = () => (
    <View style={{ marginTop: -65 }}>
      {this.rendernavbar()}
      <Spacer size={64} />

      <ScrollView style={{ flexGrow: 1, height: (AppSizes.screen.height - 115), }}>
        {this.renderprofile()}
        <Spacer size={20} />
      </ScrollView>

      <SleekLoadingIndicator loading={this.state.loading} />
    </View>

  )
}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Profile);

