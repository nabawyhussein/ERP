///for native splash screen
//flutter pub run flutter_native_splash:create --G:\atma project\Labeeb_front\file.yaml
const String IMAGE_PATH = "assets/images";
const String ICON_PATH = "assets/icons";
const String JSON_PATH = "assets/json";

class AppImages {
  static const appLogo = "$IMAGE_PATH/logo.png";
  static const appSignIn = "$IMAGE_PATH/sign_in.png";
  static const appSignUp = "$IMAGE_PATH/sign_up.png";
  static const backGround = "$IMAGE_PATH/back_ground.png";
  static const restaurantMarker = "$IMAGE_PATH/restaurant_marker.png";
  static const userMarker = "$IMAGE_PATH/user_marker.png";
}

class AppIcons {
  static const appTimeIcon = "$ICON_PATH/time.svg";
  static const appMarkerIcon = "$ICON_PATH/marker.svg";
  static const appDrawerIcon = "$ICON_PATH/drawer.svg";

  // static const appArrowBackIcon = "$ICON_PATH/arrow_back.svg";
  static const appLocationIcon = "$ICON_PATH/location.svg";
  static const appShippingBoxIcon = "$ICON_PATH/shipping_box.svg";
  static const appOrdersIcon = "$ICON_PATH/library_books.svg";
  static const appLibraryBooksIcon = "$ICON_PATH/orders.svg";

  // static const appForwardArrowIcon = "$ICON_PATH/forward_arrow.svg";
  static const myCurrentOrderIcon = "$ICON_PATH/myordericon.svg";
}

class AppJson {
  static const appMapStyleIcon = "$JSON_PATH/map_style.json";
}
