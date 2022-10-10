class ApiNetwork{

  static const baseUrl = "https://ruparnatechnology.com/dawner/Api/";
  static const signUp = baseUrl+"process.php?action=sing_up";
  static const otpVerify = baseUrl+"process.php?action=otp_verify";
  static const resendOtp = baseUrl+"process.php?action=resend_otp";
  static const userInfo = baseUrl +"process.php?action=user_info";
  static const userAddVehicle = baseUrl+"process.php?action=user_add_vehicle&category_id=1";
  static const showPremiumPackage = baseUrl+"process.php?action=show_premium_package";
  static const userPremiumPackageDetails = baseUrl+"process.php?action=user_premium_package_detail&id=1";
  static const faqUrl =baseUrl+"process.php?action=user_faq&premium_package_id=1";
  static const showAdminComment = baseUrl+"process.php?action=show_admin_comment";
  static const login = baseUrl+"process.php?action=sing_up";
  static const otp = baseUrl+"process.php?action=otp_verify";
  static const info = baseUrl+"process.php?action=user_info&user_id=1";
  static const otpResend = baseUrl+"process.php?action=resend_otp";
  static const editInfo = baseUrl+"process.php?action=edit_user_info";
  static const showUserShedule = baseUrl + "process.php?action=show_user_schedule";
}