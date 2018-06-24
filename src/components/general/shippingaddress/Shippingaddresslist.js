import React, { Component } from 'react';
import { connect } from 'react-redux';
import NavigationBar from 'react-native-navigation-bar';
import {
  View,
  Alert,
  ListView,
  ScrollView,
  StyleSheet,
  TouchableOpacity,
  Image,
  InteractionManager,
  Platform,
  KeyboardAvoidingView,
  RefreshControl,
  AsyncStorage,
  TouchableWithoutFeedback,
  TouchableHighlight
} from 'react-native';
import LoadingContainer from 'react-native-loading-container';
import MapView from 'react-native-maps';
import SleekLoadingIndicator from 'react-native-sleek-loading-indicator';
import { TabViewAnimated, TabBar } from 'react-native-tab-view';
import { SocialIcon } from 'react-native-elements';
import { Actions } from 'react-native-router-flux';
import { AppSizes } from '@theme/';
import * as appdataActions from '@redux/appdata/actions';
import { AppConfig } from '@constants/';
import { SwipeListView } from 'react-native-swipe-list-view';
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
import Icon from 'react-native-vector-icons/FontAwesome';
// Consts and Libs
import { AppColors, AppStyles } from '@theme/';

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5FCFF',
    justifyContent: 'center'
  },
  map: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
  },
  mapCenterMarker: {
    width: 32,
    height: 32,
    backgroundColor: 'black'
  },
  btn: {
    backgroundColor: '#F1C40F',
    paddingTop: 5,
    paddingBottom: 5,
    paddingLeft: 20,
    paddingRight: 20,
    marginTop: 20,
    marginBottom: 10,
    borderRadius: 50,
    alignItems: 'center'
  },
  standaloneRowFront: {
    alignItems: 'center',
    backgroundColor: '#FFF',
    justifyContent: 'center',
    height: 50,
  },
  standaloneRowBack: {
    alignItems: 'center',
    backgroundColor: '#FFF',
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'space-between',
    padding: 15
  },
  backTextWhite: {
    color: '#FFF',
  },
  rowFront: {
    flex: 1,
    backgroundColor: '#FFF',
    borderBottomColor: '#d7d7d7',
    borderBottomWidth: 1,
    justifyContent: 'center',
    height: 80,
    paddingLeft: 15,
    paddingRight: 15,
  },
  rowBack: {
    backgroundColor: '#FFF',
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
    paddingLeft: 15,
  },
  backRightBtn: {
    alignItems: 'center',
    bottom: 0,
    justifyContent: 'center',
    position: 'absolute',
    top: 0,
    width: 75
  },
  backRightBtnLeft: {
    backgroundColor: '#22A7F0',
    right: 75
  },
  backRightBtnRight: {
    backgroundColor: '#F22613',
    right: 0
  },
  controls: {
    alignItems: 'center',
    marginBottom: 30
  },
  switchContainer: {
    flexDirection: 'row',
    justifyContent: 'center',
    marginBottom: 5
  },
  switch: {
    alignItems: 'center',
    borderWidth: 1,
    borderColor: 'black',
    paddingVertical: 10,
    width: 100,
  }
});

const mapStateToProps = state => ({
  _shippingaddress: state.appdataReducer.shippingaddress,
  _user: state.appdataReducer.user,
  _location: state.appdataReducer.location,
});

const mapDispatchToProps = {
  shippingaddress: appdataActions.shippingaddress,
  user: appdataActions.user,
  location: appdataActions.location
};

class Shippingaddresslist extends Component {
  static componentName = 'Shippingaddresslist';

  constructor(props) {
    super(props);

    var ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 != r2
    });


    this.state = {
      loading: false,
      ds: [],
      addrlist: [],
      dataSource: ds,
      refreshing: false,
      isFollowuser: true,
      isFirstLoad: true,
      position: undefined,
      mapRegion: undefined,
      mapRegionInput: undefined,
      annotations: [],
      placename: null,
      city: undefined,
      subdistrict: undefined,
      didRegionchange: false,
      location: undefined,
      addressid: undefined,
      shippingaddress: {
        address: '',
        lat: 0,
        lng: 0
      },
      user: {
        tel: ''
        , address: ''
        , email: ''
        , fullname: ''
        , islogin: 0
        , id: ''
        , fbid: ''
      },
      loading: false,
    }
  }

  componentWillReceiveProps(props) {
    if (props.Reload) {
      setTimeout(
        () => { this._onRefresh(); },
        500
      );
    }
  }

  componentWillMount = () => {
    this.setState({ shippingaddress: this.props._user.address, user: this.props._user, addressid: this.props._user.activeaddress });
  }

  componentDidMount = () => {
    this.setCurrentLoc();
  }


  _onRefresh() {
    this.setState({ refreshing: true });
    this._loadInitialDataAsync().then((data) => {
      this._onReadyAsync(data).then(() => {
        this.setState({ refreshing: false });
      });
    });

  }




  setCurrentLoc() {
    if (this.props._location != undefined) {
      this.setState({
        position: this.props._location,
        mapRegion: {
          longitude: this.props._location.coords.longitude, latitude: this.props._location.coords.latitude, latitudeDelta: 0.0043,
          longitudeDelta: 0.0034
        }
      });
    }
    else {
      navigator.geolocation.getCurrentPosition((position) => {
        this.setState({
          mapRegion: {
            longitude: position.coords.longitude, latitude: position.coords.latitude, latitudeDelta: 0.0043,
            longitudeDelta: 0.0034
          }
        });
      }, (error) => {
        alert(JSON.stringify(error))
      }, {
          enableHighAccuracy: Platform.OS != 'android',
          timeout: 20000,
          maximumAge: 1000
        });
    }
  }


  activeAddress(rowData) {
    // set ค่า
    this.setState({
      addressid: rowData.id, shippingaddress: {
        address: rowData.address,
        lat: rowData.lat,
        lng: rowData.lng
      }
    }, () => {
      this.setAddress();
    });
  }

  renderChecked(rowData) {
    if (rowData.id == this.state.addressid) {
      //เก็บ active shipping address ในฐานข้อมูลก่อน
      // doActiveShippingAddress(rowData);
      //this.props.dispatch({ type: 'SHIPPINGADDRESS', shippingaddress: this.state.shippingaddress });

      return (<Icon
        style={{ top: 20, right: 10, backgroundColor: 'rgba(0,0,0,0)' }}
        name={'check'}
        size={16}
        color={'#2C3E50'} />)
    }
    else {
      return (<View />)

    }
  }

  editRow(rowData) {
    Actions.shippingaddress({ userdetail: this.props._user.id, editable: true, rowData: rowData })
  }

  deleteRow(rowData) {
    this.setState({ loading: true, });
    if (this.props._user.islogin == 0) return;
    var params = {
      id: rowData.id,
      lat: rowData.lat,
      lng: rowData.lng,
      address: rowData.address,
      isactive: 0,
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

    fetch(AppConfig.api + 'api/updatebuyeraddress', request).then((response) => {
      return response.json() // << This is the problem
    })
      .then((responseData) => { // responseData = undefined
        return responseData;
      })
      .then((data) => {
        console.log(data);
      }).done(() => {
        this.setState({ loading: false, });
        this._onRefresh()
      });
  }


  renderListView = () => {
    if (this.state.addrlist.length == 0) {
      return (
        <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
          <Text style={{ textAlign: 'center', color: '#BFBFBF' }}>ไม่มีรายการ</Text>
        </View>
      )

    }
    else {
      return (
        <View>
          <SwipeListView
            refreshControl={
              <RefreshControl
                refreshing={this.state.refreshing}
                onRefresh={this._onRefresh.bind(this)}
              />
            }
            stopLeftSwipe={1}
            dataSource={this.state.dataSource}
            renderRow={data => (
              <TouchableHighlight onPress={() => this.activeAddress(data)}>
                <View style={styles.rowFront}>
                  <View style={{ justifyContent: 'space-between', flexDirection: 'row' }}>
                    <Text>{data.address}</Text>
                    {this.renderChecked(data)}
                  </View>
                </View>
              </TouchableHighlight>
            )}
            renderHiddenRow={data => (
              <View style={styles.rowBack}>
               
                <TouchableOpacity style={[styles.backRightBtn, styles.backRightBtnLeft]} onPress={() => this.editRow(data)}>
                  <Text style={{ color: '#fff' }} >แก้ไข</Text>
                </TouchableOpacity>
                <TouchableOpacity style={[styles.backRightBtn, styles.backRightBtnRight]} onPress={() => this.deleteRow(data)}>
                  <Text style={{ color: '#fff' }}>ลบ</Text>
                </TouchableOpacity>
              </View>
            )}
            rightOpenValue={-150}
          />
          <View style={{ justifyContent: 'center',paddingTop:15, }}>  
            <Text style={{ color: '#BFBFBF',textAlign:'center' }}>ปัดซ้ายเพื่อลบ/แก้ไข</Text>
            </View>
        </View>
      )
    }

  }

  setAddress() {
    if (this.state.shippingaddress.address != null) {
      this.props.dispatch({ type: 'SHIPPINGADDRESS', shippingaddress: this.state.shippingaddress });
      this.state.user.address = this.state.shippingaddress.address;
      this.state.user.lat = this.state.shippingaddress.lat;
      this.state.user.lng = this.state.shippingaddress.lng;
      this.state.user.activeaddress = this.state.addressid;
      this.props.dispatch({ type: 'USER', user: this.state.user });

      AsyncStorage.setItem("userdetail", JSON.stringify({
        tel: this.props._user.tel
        , email: this.props._user.email
        , lat: this.state.shippingaddress.lat
        , lng: this.state.shippingaddress.lng
        , islogin: 1
        , userimg: this.props._user.userimg
        , name: this.props._user.name
        , id: this.props._user.id
        , address: this.state.shippingaddress.address
        , fbid: this.props._user.fbid
        , shopid: this.props._user.shopid,
        activeaddress: this.state.addressid
      }));


      Actions.pop({ refresh: { Reload: true, customshippingaddress: this.state.shippingaddress } })
    }
    else {
      Actions.pop({ refresh: { Reload: false, customshippingaddress: this.state.shippingaddress } })
    }
  }

  render = () => {
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={'รายการที่อยู่ของคุณ'}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          leftButtonIcon={require('../../../assets/images/ic_left-arrow.png')}
          backgroundColor={AppColors.brand.primary}
          leftButtonTitle={'ย้อนกลับ'}
          onLeftButtonPress={() => this.setAddress()}
          leftButtonTitleColor={'#fff'}
          rightButtonTitle={'เพิ่มที่อยู่'}
          rightButtonTitleColor={'#fff'}
          onRightButtonPress={() => Actions.shippingaddress({ userdetail: this.props._user.id })}
        />
        <Spacer size={64} />
        <View style={{ flex: 1, }}>
          <LoadingContainer
            onError={e => console.log(e)}
            onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
            onReadyAsync={this._onReadyAsync.bind(this)}>
            {this.renderListView()}

          </LoadingContainer>
        </View>
        <Spacer size={50} />
        <SleekLoadingIndicator loading={this.state.loading} />
      </View>

    )
  }

  async _loadInitialDataAsync() {

    var params = {
      buyerid: this.props._user.id,
    };
    var formData = new FormData();
    for (var k in params) {
      formData.append(k, params[k]);
    }
    var request = {
      method: 'POST',
      body: formData
    };

    let response = await fetch(AppConfig.api + 'api/getbuyeraddress', request);
    return response.json();
  }

  async _onReadyAsync(data) {
    return new Promise((resolve) => {
      console.log(data);
      this.setState({
        addrlist: data.result,
        dataSource: this.state.dataSource.cloneWithRows(data.result),
      }, resolve)
    });
  }

}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Shippingaddresslist);
