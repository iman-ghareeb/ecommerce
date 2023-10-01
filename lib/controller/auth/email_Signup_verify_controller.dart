import 'package:ecommerce/core/constant/app_routes_name.dart';
import 'package:ecommerce/view/screen/auth_screens/forget_password/reset_password_screen.dart';
import 'package:get/get.dart';

abstract class EmailVerifcationSignUpController extends GetxController{

  goToSuccess();
  onSubmit();
}

class EmailVerifcationSignUpControllerImp extends EmailVerifcationSignUpController{

  late var code;


  @override
  onSubmit() {

  }
  @override
  goToSuccess() {
    Get.offAllNamed(AppRoutesName.success);
  }

}