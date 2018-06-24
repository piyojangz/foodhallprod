export const initialState = {
  total: 0,
  incommingcount: 0,
  pendingcount: 0,
  shopnoti:0,
  log: [],
  shop: [],
  shopdetail: [],
  address: {
    city: '',
  },
  shippingaddress: {
    address: '',
    lat: 0,
    lng: 0
  },
  otp: undefined,
  location: undefined,
  user: {
    tel: ''
    , address: ''
    , lat: ''
    , lng: ''
    , email: ''
    , fullname: ''
    , islogin: 0
    , userimg: ''
    , id: ''
    , fbid: ''
    , activeaddress: 0
    , shopid: ''
  },
};

export default function appdataReducer(state = initialState, action) {
  switch (action.type) {
    case 'TOTAL':
      if (action.total) {
        return {
          ...state,
          total: state.total + action.total,
        };
      }
    case 'ADDRESS':
      if (action.address) {
        return {
          ...state,
          address: action.address,
        };
      }
    case 'SHIPPINGADDRESS':
      if (action.shippingaddress) {
        return {
          ...state,
          shippingaddress: action.shippingaddress,
        };
      }
    case 'USER':
      if (action.user) {
        return {
          ...state,
          user: action.user,
        };
      }
    case 'SHOP':
      if (action.shop) {
        return {
          ...state,
          shop: action.shop,
        };
      }
      if (action.shopdetail) {
        return {
          ...state,
          shopdetail: action.shopdetail,
        };
      }
    case 'OTP':
      if (action.otp) {
        return {
          ...state,
          otp: action.otp,
        };
      }
    case 'LOCATION':
      if (action.location) {
        return {
          ...state,
          location: action.location,
        };
      }
    case 'INCOMMINGCOUNT':
      if (action.incommingcount) {
        return {
          ...state,
          incommingcount: action.incommingcount,
        };
      }
    case 'PENDINGCOUNT':
      if (action.pendingcount) {
        return {
          ...state,
          pendingcount: action.pendingcount,
        };
      }
      case 'SHOPNOTI':
      if (action.shopnoti) {
        return {
          ...state,
          shopnoti: action.shopnoti,
        };
      }
      else {
        return {
          ...state,
        };
      }

    default:
      return state;
  }
}
