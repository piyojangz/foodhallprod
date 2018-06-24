/**
 * App Navigation
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React from 'react';
import { Actions, Scene, ActionConst } from 'react-native-router-flux';
import { connect } from 'react-redux';
// Consts and Libs
import { AppConfig } from '@constants/';

// Components
import Drawer from '@containers/ui/DrawerContainer';

// Scenes
import AppLaunch from '@containers/Launch/LaunchContainer';
import Placeholder from '@components/general/Placeholder';
import Map from '@components/general/map/Map';
import Cate from '@components/general/Cate';
import WebView from '@components/general/WebView';
import Shopdetail from '@components/general/shopdetail/Shopdetail';
import Basket from '@components/general/basket/Basket';
import Login from '@components/general/login/Login';
import Otp from '@components/general/otp/Otp';
import Verifyotp from '@components/general/otp/Verifyotp';
import Profile from '@components/general/Profile';
import Lastregister from '@components/general/otp/Lastregister';
import Shippingaddress from '@components/general/shippingaddress/Shippingaddress';
import Shippingaddresslist from '@components/general/shippingaddress/Shippingaddresslist';
import Orderdetail from '@components/general/order/Orderdetail';
import Imageslide from '@components/general/Imageslide';
import Addimgprofile from '@components/general/Addimgprofile';
import Setpayment from  '@components/general/Setpayment';
import Setting from '@components/shop/Setting';

import Setshippingmethod from '@components/shop/Setshippingmethod';
import Setpaymentmethod from '@components/shop/Setpaymentmethod';
import Setbankacc from '@components/shop/Setbankacc';
import AuthScenes from './auth';
import TabsScenes from './tabs';
import ShopScenes from './shop';
import Additem from '@components/shop/Additem';
import Addcover from '@components/shop/Addcover';
import Introduceshop from '@components/shop/Introduceshop';
import Shopfirstsetting from '@components/shop/Shopfirstsetting';
import Dopurchase from '@components/shop/Dopurchase';
import Shoporderdetail from '@components/shop/Shoporderdetail';
import Redeemsuccess from '@components/shop/Redeemsuccess';
import Setworkingtime from '@components/shop/Setworkingtime';


/* Routes ==================================================================== */
export default Actions.create(
  <Scene key={'root'} {...AppConfig.navbarProps}>
    {/* <Scene
      hideNavBar
      key={'splash'}
      component={Lastregister}
      analyticsDesc={'AppLaunch: Launching App'}
    />     */}

    {/* Auth */}
    {/* {AuthScenes}   */}
    <Scene
      hideNavBar
      key={'splash'}
      component={AppLaunch}
      analyticsDesc={'AppLaunch: Launching App'}
    />


    {/* Main App */}
    <Scene key={'app'} {...AppConfig.navbarProps} title={AppConfig.appName} hideNavBar={false} type={ActionConst.RESET} >
      {/* Drawer Side Menu */}
      <Scene key={'home'} component={Drawer}   >
        {/* Tabbar */}
        {TabsScenes}

        {/* General */}
        <Scene
          clone
          key={'comingSoon'}
          title={'Coming Soon'}
          component={Placeholder}
          analyticsDesc={'Placeholder: Coming Soon'}
        />



        <Scene
          clone
          key={'login'}
          component={Login}
          analyticsDesc={'Login'}
        />

        <Scene
          clone
          key={'otp'}
          component={Otp}
          analyticsDesc={'Otp'}
        />


        <Scene
          clone
          key={'lastregister'}
          component={Lastregister}
          analyticsDesc={'Lastregister'}
        />


        <Scene
          clone
          key={'verifyotp'}
          component={Verifyotp}
          analyticsDesc={'Verifyotp'}
        />


        <Scene
          clone
          key={'shopdetail'}
          component={Shopdetail}
          analyticsDesc={'Shopdetail'}
        />

        <Scene
          clone
          key={'imageslide'}
          component={Imageslide}
          analyticsDesc={'imageslide'}
        />




        <Scene
          clone
          key={'map'}
          title={'ระบุตำแหน่งจัดส่ง'}
          component={Map}
          analyticsDesc={'Map'}
        />



        <Scene
          clone
          key={'orderdetail'}
          component={Orderdetail}
          analyticsDesc={'Orderdetail'}
        />


        <Scene
          clone
          key={'shoporderdetail'}
          component={Shoporderdetail}
          analyticsDesc={'Shoporderdetail'}
        />


        <Scene
          clone
          key={'basket'}
          title={'รายการของคุณ'}
          component={Basket}
          analyticsDesc={'Basket'}
        />



        <Scene
          clone
          key={'additem'}
          title={'รายการของคุณ'}
          component={Additem}
          analyticsDesc={'Additem'}
        />


        <Scene
          clone
          key={'setbankacc'}
          title={'ตั้งค่าบัญชี'}
          component={Setbankacc}
          analyticsDesc={'Setbankacc'}
        />

        

        <Scene
          clone
          key={'setshippingmethod'}
          title={'ตั้งค่าการจัดส่ง'}
          component={Setshippingmethod}
          analyticsDesc={'Setshippingmethod'}
        />

        <Scene
          clone
          key={'setpaymentmethod'}
          title={'ตั้งค่าการชำระเงิน'}
          component={Setpaymentmethod}
          analyticsDesc={'Setpaymentmethod'}
        />
        

        

        <Scene
          clone
          key={'addcover'}
          title={'รายการของคุณ'}
          component={Addcover}
          analyticsDesc={'Addcover'}
        />

        <Scene
          clone
          key={'setpayment'}
          title={'การชำระเงิน'}
          component={Setpayment}
          analyticsDesc={'Setpayment'}
        />


        <Scene
          clone
          key={'cate'}
          title={'Cate'}
          component={Cate}
          analyticsDesc={'Cate'}
        />

        

        <Scene
          clone
          key={'shippingaddress'}
          component={Shippingaddress}
          analyticsDesc={'Shippingaddress'}
        />

        <Scene
          clone
          key={'shippingaddresslist'}
          component={Shippingaddresslist}
          analyticsDesc={'shippingaddresslist'}
        />


        <Scene
          clone
          key={'setworkingtime'}
          component={Setworkingtime}
          analyticsDesc={'setworkingtime'}
        />
        

        <Scene
          clone
          key={'shopsetting'}
          title={'ตั้งค่า'}
          component={Setting}
          analyticsDesc={'Shopsetting'}
        />



        <Scene
          clone
          key={'shopfirstsetting'}
          title={'ตั้งค่า'}
          component={Shopfirstsetting}
          analyticsDesc={'Shopfirstsetting'}
        />


        <Scene
          clone
          key={'dopurchase'}
          title={'ซื้อเหรียญ'}
          component={Dopurchase}
          analyticsDesc={'Dopurchase'}
        />



        <Scene
          clone
          key={'redeemsuccess'}
          component={Redeemsuccess}
          analyticsDesc={'Redeemsuccess'}
        />


        <Scene
          clone
          key={'addimgprofile'}
          component={Addimgprofile}
          analyticsDesc={'Addimgprofile'}
        />
        



        <Scene
          clone
          hideNavBar
          hideTabBar
          key={'introduceshop'}
          title={'แนะนำการเปิดร้าน'}
          component={Introduceshop}
          analyticsDesc={'Introduceshop'}
        />


      </Scene>





    </Scene>

    {ShopScenes}

  </Scene>,
);
