class AppLinkApi {
  static const String server = "http://192.168.1.106/ecommerce/";
  static const String imagestatic = "assets/images";
  static const String imagestItems = "$imagestatic/items";

  // auth

  static const String authVerifycode = "$server/delivery/auth/verifycode.php";
  static const String login = "$server/delivery/auth/login.php";
  static const String signup = "$server/delivery/auth/signup.php";
  static const String checkemail =
      "$server/delivery/forgetpassword/checkemail.php";
  static const String resetpassword =
      "$server/delivery/forgetpassword/resetpassword.php";
  static const String resetpassVerifycode =
      "$server/delivery/forgetpassword/verifycode.php";
  static const String resendverifycode = "$server/delivery/auth/resend.php";

  // Home
  static const String homepage = "$server/home.php";
  static const String items = "$server/items/items.php";
  static const String search = "$server/items/search.php";

  //Favorite
  static const String addFav = "$server/favorite/add.php";
  static const String removeFav = "$server/favorite/remove.php";
  static const String favoriteview = "$server/favorite/view.php";
  static const String deletefromfavorite =
      "$server/favorite/deletefromfavorite.php";

  // Cart
  static const String cartview = "$server/cart/view.php";
  static const String cartadd = "$server/cart/add.php";
  static const String cartdelete = "$server/cart/delete.php";
  static const String countitems = "$server/cart/getcount.php";

  // Address
  static const String addressview = "$server/address/view.php";
  static const String addressadd = "$server/address/add.php";
  static const String addressdelete = "$server/address/delete.php";
  static const String addressedit = "$server/address/edit.php";

  //Coupon
  static const String checkcoupon = "$server/coupon/checkcoupon.php";

  //Orders
  static const String checkout = "$server/orders/checkout.php";
  static const String pendingorders = "$server/orders/pendingorders.php";
  static const String archiveorders = "$server/orders/archiveorders.php";
  static const String detailsorders = "$server/orders/detailsorders.php";
  static const String deleteorders = "$server/orders/deleteorders.php";
  static const String ratingorders = "$server/rating.php";

  //Notification
  static const String notification = "$server/notification.php";

  //Offers
  static const String offfers = "$server/offers.php";
}
