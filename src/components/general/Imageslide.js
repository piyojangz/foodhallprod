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
  Platform,
  Modal
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
import ImageViewer from 'react-native-image-zoom-viewer';
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









class Imageslide extends Component {
  static componentName = 'Imageslide';

  constructor(props) {
    super(props);


    this.state = {
      loading: false,
    }

  }







  render = () => {
    const images = [];
    images.push({
      url: this.props.img
    });
    return (
      <View style={[AppStyles.container]}>
        <NavigationBar
          title={''}
          height={(Platform.OS === 'ios') ? 44 : 64}
          titleColor={'#fff'}
          leftButtonIcon={require('../../assets/images/ic_left-arrow.png')}
          backgroundColor={AppColors.brand.primary}
          leftButtonTitle={'back'}
          onLeftButtonPress={Actions.pop}
          leftButtonTitleColor={'#fff'}
        />
        <Spacer size={64} />

        <View style={{ flex: 1, }}>
          {/* <Modal visible={true} transparent={true} style={{marginTop:100,}}> 
                <ImageViewer imageUrls={images}/>
            </Modal> */}

          <ImageViewer imageUrls={images} />
        </View>
      </View>

    )
  }


}
/* Export Component ==================================================================== */
export default connect(mapStateToProps, mapDispatchToProps)(Imageslide);