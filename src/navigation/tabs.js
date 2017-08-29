/**
 * Tabs Scenes
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React from 'react';
import { connect } from 'react-redux';
import { Scene } from 'react-native-router-flux';
import { Text } from 'react-native';
// Consts and Libs
import { AppConfig } from '@constants/';
import { AppStyles, AppSizes } from '@theme/';

// Components
import { TabIcon } from '@ui/';
import { NavbarMenuButton } from '@containers/ui/NavbarMenuButton/NavbarMenuButtonContainer';

// Scenes
import Placeholder from '@components/general/Placeholder';
import Privilege from '@components/general/Privilege';
import Profile from '@components/general/Profile';
import Home from '@components/general/Home';
import Error from '@components/general/Error';
import StyleGuide from '@containers/StyleGuideView';
import Recipes from '@containers/recipes/Browse/BrowseContainer';
import RecipeView from '@containers/recipes/RecipeView';
import Noti from '@components/general/noti/Noti';
const navbarPropsTabs = {
  ...AppConfig.navbarProps,
  renderLeftButton: () => <NavbarMenuButton />,
  sceneStyle: {
    ...AppConfig.navbarProps.sceneStyle,
    paddingBottom: AppSizes.tabbarHeight,
  },
};


const navbarPropsTabsNoneMenuButton = {
  ...AppConfig.navbarProps,
  sceneStyle: {
    ...AppConfig.navbarProps.sceneStyle,
    paddingBottom: AppSizes.tabbarHeight,
  },
};



/* Routes ==================================================================== */
const scenes = (
  <Scene
    key={'tabBar'}
    tabs
    tabBarIconContainerStyle={AppStyles.tabbar}
    pressOpacity={0.95}>

    <Scene
      {...navbarPropsTabs}
      key={'explore'}
      hideNavBar={true}
      title={'EXPLORE'}
      component={Home}
      icon={props => TabIcon({
        ...props,
        icon: 'explore',
        title: 'EXPLORE'
      })} />



    <Scene
      {...navbarPropsTabs}
      key={'noti'}
      hideNavBar={true}
      title={'Order'}
      component={Noti}
      icon={props => TabIcon({
        ...props,
        icon: 'alarm',
        title: 'ORDER'
      })} />


    {/* <Scene
      key={'error'}
      {...navbarPropsTabsNoneMenuButton}
      title={'Notification'}
      component={Placeholder}
      open={true}
      icon={props => TabIcon({
        ...props,
        icon: 'alarm-on',
        title: 'NOTIFICATION'
      })}
      analyticsDesc={'Error: Example Error'} /> */}


    <Scene
      {...navbarPropsTabs}
      key={'profile'}
      hideNavBar={true}
      title={'PROFILE'}
      component={Profile}
      icon={props => TabIcon({
        ...props,
        icon: 'face',
        title: 'PROFILE'
      })} />

  </Scene>
);

export default scenes; 