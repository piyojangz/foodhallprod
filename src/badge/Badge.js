import React, { Component } from 'react';
import { connect } from 'react-redux';
import {
  View,
  Text
} from 'react-native';
import * as appdataActions from '@redux/appdata/actions';
import PropTypes from 'prop-types';
import { Card } from 'react-native-elements';

// Consts and Libs
import { AppSizes, AppColors, AppStyles } from '@theme/';


const mapStateToProps = state => ({
  _incommingcount: state.appdataReducer.incommingcount,
  _pendingcount: state.appdataReducer.pendingcount,
});



/* Component ==================================================================== */
class CustomBadge extends Component {
  renderbadge() {
    const title = this.props.title;
    switch (title) {
      case "Order":
        if (this.props._incommingcount > 0) {
          return (<View style={{ position: 'absolute', top: 0, right: 0, backgroundColor: '#F00', width: 16, height: 16, borderRadius: 8, alignItems: 'center', flexDirection: 'row', justifyContent: 'center' }}>
            <Text style={{
              fontSize: 8, color: '#fff'
            }}>
              {this.props._incommingcount}
            </Text>
          </View>);
        }
        else {
          return (<View></View>);
        }

        break;
      case "Pending":
        if (this.props._pendingcount > 0) {
          return (<View style={{ position: 'absolute', top: 0, right: 0, backgroundColor: '#F00', width: 16, height: 16, borderRadius: 8, alignItems: 'center', flexDirection: 'row', justifyContent: 'center' }}>
            <Text style={{
              fontSize: 8, color: '#fff'
            }}>
              {this.props._pendingcount}
            </Text>
          </View>);
        }
        else {
          return (<View></View>);
        }

        break;
      default:
        return (<View></View>);
        break;
    }

  }
  render = () =>
    this.renderbadge()
}

/* Export Component ==================================================================== */
export default connect(mapStateToProps)(CustomBadge);
