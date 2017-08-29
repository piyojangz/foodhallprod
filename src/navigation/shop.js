/**
 * Auth Scenes
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React from 'react';
import { connect } from 'react-redux';
import { Scene, ActionConst } from 'react-native-router-flux';
import { AppStyles, AppSizes } from '@theme/';
// Consts and Libs
import { AppConfig } from '@constants/';
// Scenes
import Authenticate from '@containers/auth/AuthenticateView';

import Dashboard from '@components/shop/Dashboard';
import Setting from '@components/shop/Setting';
import Order from '@components/shop/Order';
import Pendingorder from '@components/shop/Pendingorder';
import Shopnotification from '@components/shop/Shopnotification';
/* Routes ==================================================================== */
import { TabIconShop } from '@ui/';

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


const scenes = (
  <Scene key={'shopscene'} type={ActionConst.REPLACE} tabs>

    <Scene
      {...navbarPropsTabsNoneMenuButton}
      key={'shopdashboard'}
      hideNavBar={true}
      title={'ภาพรวม'}
      component={Dashboard}
      icon={props => TabIconShop({
        ...props,
        icon: 'home',
        title: 'Overview'
      })} />

    <Scene
      {...navbarPropsTabsNoneMenuButton}
      key={'order'}
      hideNavBar={true}
      title={'แจ้งเตือน'}
      component={Order}
      icon={props => TabIconShop({
        ...props,
        icon: 'shopping-basket',
        title: 'Order',
      })} />


    <Scene
      {...navbarPropsTabsNoneMenuButton}
      key={'pendingorder'}
      hideNavBar={true}
      title={'แจ้งเตือน'}
      component={Pendingorder}
      icon={props => TabIconShop({
        ...props,
        icon: 'spellcheck',
        title: 'Pending'
      })} />

      <Scene
      {...navbarPropsTabsNoneMenuButton}
      key={'shopnotification'}
      hideNavBar={true}
      title={'แจ้งเตือน'}
      component={Shopnotification}
      icon={props => TabIconShop({
        ...props,
        icon: 'query-builder',
        title: 'History'
      })} />

  </Scene>
);

export default scenes;
