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
  ActivityIndicator, RefreshControl,
  PushNotificationIOS
} from 'react-native';
import LoadingContainer from 'react-native-loading-container';
import NavigationBar from 'react-native-navigation-bar';
import { TabViewAnimated, TabBar } from 'react-native-tab-view';
import { SocialIcon } from 'react-native-elements';
import { Actions } from 'react-native-router-flux';
import { AppConfig } from '@constants/';
import moment from 'moment';
import { Grid, Col, Row } from 'react-native-easy-grid';
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
class Noti extends Component {
  static componentName = 'Noti';

  constructor(props) {
    super(props);

    // Setup ListViews
    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });


    this.state = {
      loading: false,
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


  componentWillMount() {
    this.setState({ userdetail: this.props._user });
  }

  componentDidMount() {
    if (Platform.OS === "ios") {
      PushNotificationIOS.setApplicationIconBadgeNumber(0)
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

  render = () => (
    <View style={{ marginTop: -65, flex: 1, }}>
      <NavigationBar
        title={'Order'}
        height={(Platform.OS === 'ios') ? 44 : 64}
        titleColor={'#fff'}
        backgroundColor={AppColors.brand.primary}
        leftButtonTitle={'Map'}
        leftButtonIcon={require('../../../assets/images/ic_compass.png')}
        onLeftButtonPress={Actions.map}
        leftButtonTitleColor={'#fff'}
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
    </View>


  )
  rendershop = () => {
    if (this.state.dataSource._dataBlob == null) {
      return (
        <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
          <Text style={{ textAlign: 'center', color: '#BFBFBF' }}>ไม่มีรายการสั่ง</Text>
        </View>
      )

    }
    else {
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

  }



  pressRow(rowData) {
    Actions.orderdetail({ order: rowData })
  }


  renderRow(rowData) {
    console.log(rowData);
    var createdate = moment.utc(rowData.ordercreatedate).local().format('DD MMM YYYY เวลา HH:mm');
    var status = "";
    var color = "#FF4F4F";
    switch (parseInt(rowData.status)) {
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

    return (
      <TouchableOpacity
        onPress={() => this.pressRow(rowData)}
        activeOpacity={90 / 100}>
        <View style={styles.row}>
          <Grid style={{ padding: 16, }}>
            <Row>
              <Text style={{
                color: "#000000",
                fontSize: 18,
                fontWeight: 'normal'
              }}>Order no. {rowData.orderno}</Text>
            </Row>
            <Row style={{ flexDirection: 'column' }}>

              <Text style={{
                color: "#6C7A89",
                fontSize: 14,
              }}>วันที่สั่งซื้อ {createdate}</Text>
              <View style={{ flexDirection: 'row' }}>
                <Icon style={{ fontSize: 14, color: color,paddingTop:5 }} name='bell-o' />
                <Text style={{
                  color: color,
                  fontSize: 14, 
                }}> {status}</Text>
              </View>
              <Spacer size={5} />
              {this.renderOrdertype(rowData)}

            </Row>
            <Icon
              name={'angle-right'}
              size={35}
              rot
              color={'#ddd'}
              style={{
                position: 'absolute',
                backgroundColor: 'rgba(0,0,0,0)',
                right: 10,
                top: 55
              }} />
          </Grid>
        </View>
      </TouchableOpacity>
    )
  }

  renderOrdertype(rowData) {
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
  async _loadInitialDataAsync() {
    if (this.state.userdetail.islogin != 0) {
      var userid = this.state.userdetail.id;
      var params = {
        buyerid: userid
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

      let response = await fetch(AppConfig.api + 'api/getorderbybuyerid', request);
      return response.json();
    }
    else {
      return;
    }

  }

  async _onReadyAsync(data) {
    return new Promise((resolve) => {
      if (data) {
        this.setState({
          dataSource: this.state.dataSource.cloneWithRows(data.result),
        }, resolve)
      }
      else {
        this.setState(resolve)
      }
    });
  }

}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Noti);

