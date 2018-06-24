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
  RefreshControl,
  Image,
  Dimensions,
  TouchableWithoutFeedback,
  Platform, AsyncStorage
} from 'react-native';
import LoadingContainer from 'react-native-loading-container';
import NavigationBar from 'react-native-navigation-bar';
import { AppConfig } from '@constants/';
import GridView from 'react-native-easy-gridview';
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
class Shoplist extends Component {
  static componentName = 'Privilege';

  constructor(props) {
    super(props);

    // Setup ListViews
    const ds = new ListView.DataSource({
      rowHasChanged: (r1, r2) => r1 !== r2
    });

    this.state = {
      loading: false,
      userdetail: undefined,
      refreshing: false,
      ds: [],
      dataSource: ds,
      shippingaddress: undefined, 
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
    this.setState({ userdetail: this.props._user });
    this.setState({ shippingaddress: this.props._user.address });
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
    if (this.state.userdetail.islogin != 1) {
      Actions.profile();
    }
  }




  rendernavbar() {
    return (
      <NavigationBar
        title={'Shop lists'}
        height={(Platform.OS === 'ios') ? 44 : 64}
        titleColor={'#fff'}
        backgroundColor={AppColors.brand.primary}
        rightButtonTitle={'เพิ่มร้าน'}
        onRightButtonPress={() => this.addshop()}
        rightButtonTitleColor={'#fff'}
      />
    );
  }



  addshop() {
    Actions.introduceshop();
  }

  swaptoshop(shopid) {
    if (this.state.userdetail.shopid == null) {
      Actions.introduceshop();
    }
    else {
      AsyncStorage.setItem("userdetail", JSON.stringify({
        tel: this.state.userdetail.tel
        , email: this.state.userdetail.email
        , userimg: this.state.userdetail.userimg
        , activeaddress: this.state.userdetail.activeaddress
        , lat: this.state.userdetail.lat
        , lng: this.state.userdetail.lng
        , islogin: 1
        , name: this.state.userdetail.name
        , id: this.state.userdetail.id
        , address: this.state.userdetail.address
        , fbid: this.state.userdetail.fbid
        , shopid: shopid,
      })).then(() => {
        AsyncStorage.setItem("mode", JSON.stringify({
          shopmode: 1
        }));
        Actions.shopscene();
      });


    }

  }


  renderbadge(badge) {
    if (badge > 0) {
      return (
        <View style={{ position: 'absolute', top: 4, right: 4, backgroundColor: '#F00', paddingLeft: 10, paddingRight: 10, height: 26, borderRadius: 13, alignItems: 'center', flexDirection: 'row', justifyContent: 'center' }}>
          <Text style={{
            fontWeight: 'normal',
            lineHeight: 13,
            fontSize: 12, color: '#fff'
          }}>
            {badge}
          </Text>
        </View>
      )
    }
    else {
      return (
        <View />
      )
    }
  }
 
  rendershop(rowData) {
    console.log(rowData);

    return (
      <TouchableOpacity 
        onPress={() => this.swaptoshop(rowData.id)}
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
            height: 80,
            width: 80,
            borderRadius: 40
          }}
          resizeMode={"cover"}
          source={{
            uri: AppConfig.imgaddress + rowData.img
          }} />
        {this.renderbadge(parseInt(rowData.neworder) + parseInt(rowData.delivery))}

        <View style={{
          paddingTop: 10,
        }}>
          <Text numberOfLines={1} style={{
            textAlign: 'center',
            fontSize: 14,
            fontWeight: 'normal'
          }}>{rowData.title}</Text>

        </View>
        {this.renderactive(rowData.isactive)}
      </TouchableOpacity>
    )

  }

  renderactive(isactiive) {
    if (isactiive == 'false') {
      return (
        <View style={{
          position: 'absolute', left: 0,
          top: 0, bottom: 0, right: 0
          , alignItems: 'center', flexDirection: 'row', justifyContent: 'center', backgroundColor: 'rgba(52, 52, 52, 0.5)',
        }}>
          <Text numberOfLines={1} style={{
            textAlign: 'center',
            color: '#fff',
            fontSize: 14,
            fontWeight: 'normal'
          }}>ไม่ใช้งาน</Text>
        </View>
      )
    }
    else {
      return (
        <View />
      )
    }
  }

  renderGrid() {
    if (this.state.dataSource._dataBlob == null) {
      return (
        <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
          <Text style={{ textAlign: 'center', color: '#BFBFBF' }}>ไม่มีร้านค้า</Text>
        </View>
      )

    }
    else {
      if (this.state.dataSource._dataBlob.s1.length == 0) {
        return (
          <View style={{ flex: 1, flexDirection: 'column', justifyContent: 'center' }}>
            <Text style={{ textAlign: 'center', color: '#BFBFBF' }}>ไม่มีร้านค้า</Text>
          </View>
        )

      }
      else {
        return (
          <GridView
            enableEmptySections={true}
            refreshControl={
              <RefreshControl
                refreshing={this.state.refreshing}
                onRefresh={this._onRefresh.bind(this)}
              />
            }
            style={{ marginBottom: 20, height: AppSizes.screen.height - ((Platform.OS === 'ios') ? 44 : 64), }}
            dataSource={this.state.dataSource}
            renderRow={this
              .rendershop
              .bind(this)}
            numberOfItemsPerRow={3}
            removeClippedSubviews={false}
            initialListSize={1}
            pageSize={5} />
        )
      }
    }
  }

  loaddata() {
    if (this.props._user.islogin == 1) {
      return (
        <LoadingContainer
          onError={e => console.log(e)}
          onLoadStartAsync={this._loadInitialDataAsync.bind(this)}
          onReadyAsync={this._onReadyAsync.bind(this)}>
          {this.renderGrid()}

        </LoadingContainer>
      )
    }
    else {
      return (
        <View />
      )
    }
  }
  render = () => (
    <View style={{ marginTop: -65, flex: 1, }}>
      {this.rendernavbar()}
      <View style={{ marginTop: 64, flex: 1, }}>
        {this.loaddata()}
      </View>
    </View>

  )

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

    let response = await fetch(AppConfig.api + 'api/getshoplist', request);
    return response.json();
  }

  async _onReadyAsync(data) {
    return new Promise((resolve) => {
      this.setState({
        items: data.result,
        dataSource: this.state.dataSource.cloneWithRows(data.result)
      }, resolve);
    });
  }


}

/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Shoplist);

