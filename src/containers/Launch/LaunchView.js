/**
 * Launch Screen
 *  - Shows a nice loading screen whilst:
 *    - Preloading any specified app content
 *    - Checking if user is logged in, and redirects from there
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React, { Component } from 'react';
import PropTypes from 'prop-types';
import {
  View,
  Image,
  Alert,
  StatusBar,
  StyleSheet,
  ActivityIndicator,
  AsyncStorage,
} from 'react-native';
import { Actions } from 'react-native-router-flux';

// Consts and Libs
import { AppStyles, AppSizes } from '@theme/';

/* Styles ==================================================================== */
const styles = StyleSheet.create({
  launchImage: {
    width: AppSizes.screen.width,
    height: AppSizes.screen.height,
  },
});

/* Component ==================================================================== */
class AppLaunch extends Component {
  static componentName = 'AppLaunch';


  gotoShopsetting() {
    Actions.shopscene();
  }


  componentDidMount = () => {
    // Show status bar on app launch
    StatusBar.setHidden(false, true);

 
    AsyncStorage.getItem("mode").then((value) => {
      
      if (value != null) {
        val = JSON.parse(value); 
        if (val.shopmode == 1) {
          this.gotoShopsetting();
        }
        else {
          Actions.app();
        }
      }
      else {
         Actions.app();
      }
    });


  }


  render = () => (
    <View style={[AppStyles.container]}>
      <Image
        source={require('../../images/launch.jpg')}
        style={[styles.launchImage, AppStyles.containerCentered]}
      >

      </Image>
    </View>
  );
}

/* Export Component ==================================================================== */
export default AppLaunch;
