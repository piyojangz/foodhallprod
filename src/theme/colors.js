/**
 * App Theme - Colors
 *
 * React Native Starter App
 * https://github.com/mcnamee/react-native-starter-app
 */

const app = {
  background: '#F7F9FB',
  cardBackground: '#FFFFFF',
  listItemBackground: '#ddd',
};

const brand = {
  brand: {
    primary: '#00B16A',
    secondary: '#00B16A',
  },
};

const text = {
  textPrimary: '#222222',
  textSecondary: '#777777',
  headingPrimary: brand.brand.primary,
  headingSecondary: brand.brand.primary,
};

const borders = {
  border: '#FAFAFA',
};

const tabbar = {
  tabbar: {
    background: '#FAFAFA',
    iconDefault: '#BFBFBF',
    iconSelected: '#00B16A',
  },
};

export default {
  ...app,
  ...brand,
  ...text,
  ...borders,
  ...tabbar,
};
