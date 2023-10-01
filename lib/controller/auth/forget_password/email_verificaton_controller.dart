import 'package:ecommerce/core/constant/app_routes_name.dart';
import 'package:ecommerce/view/screen/auth_screens/forget_password/reset_password_screen.dart';
import 'package:get/get.dart';

abstract class EmailVerificationController extends GetxController{
  goToResetPassword();

  onSubmit();
}

class EmailVerificationControllerImp extends EmailVerificationController{

  late var code;
  @override
  goToResetPassword() {
    Get.offNamed(AppRoutesName.resetpassord);
  }

  @override
  onSubmit() {

  }



}