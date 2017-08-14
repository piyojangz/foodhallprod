export const initialState = {
  total: 0,
  log: [],
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
    , id: ''
    , fbid: ''
    , activeaddress:0
  },
};

export default function appdataReducer(state = initialState, action) {
  switch (action.type) {
    case 'TOTAL':
      return {
        ...state,
        total: state.total + action.total,
      };
    case 'ADDRESS':
      return {
        ...state,
        address: action.address,
      };
    case 'SHIPPINGADDRESS':
      return {
        ...state,
        shippingaddress: action.shippingaddress,
      };
    case 'USER':
      return {
        ...state,
        user: action.user,
      };
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
      else {
        return {
          ...state,
        };
      }

    default:
      return state;
  }
}
