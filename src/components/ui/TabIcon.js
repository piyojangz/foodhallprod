/**
 * Tabbar Icon
 *
    <TabIcon icon={'search'} selected={false} />
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */
import React from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { Icon } from 'react-native-elements';

import CustomBadge from '../../badge/Badge';
import {
  Text, View
} from 'react-native';

import { AppColors } from '@theme/';




/* Component ==================================================================== */
const TabIcon = ({ icon, title, selected }) => {
  return (<View>
    <Icon
      name={icon}
      title={title}
      size={26}
      color={selected
        ? AppColors.tabbar.iconSelected
        : AppColors.tabbar.iconDefault} />
     <Text style={{
      fontSize: 9, color: selected
        ? AppColors.tabbar.iconSelected
        : AppColors.tabbar.iconDefault
    }}>
      {title}
    </Text> 
   <CustomBadge title={title} />
  </View>);
}


TabIcon.propTypes = {
  icon: PropTypes.string.isRequired,
  selected: PropTypes.bool
};
TabIcon.defaultProps = {
  icon: 'search',
  selected: false
};

/* Export Component ==================================================================== */
export default TabIcon;
