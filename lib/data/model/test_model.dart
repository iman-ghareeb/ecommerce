class TestModel{
  String? message;
  String? bearerToken;

  UserTestModel? userTestModel;

  TestModel.fromJson(Map<String,dynamic> json){
    message = json['message'];
    bearerToken = json['bearerToken'];
    userTestModel = UserTestModel.fromJson(json['user']);

  }

}


class UserTestModel{

  String? id;
  String? firstName;
  String? lastName;
  String? userName;
  String? email;
  String? password;
  String? phone;
  int? age;
  String? gender;
  bool? isLoggedIn;
  bool? isConfirmEmail;
  String? role;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? token;
  int? v;
  int? otp;


  UserTestModel.fromJson(Map<String,dynamic> json){
    id= json['_id'];
    firstName= json['firstName'];
    lastName= json['lastName'];
    userName= json['userName'];
    email= json['email'];
    password= json['password'];
    phone= json['phone'];
    age= json['age'];
    gender= json['gender'];
    isLoggedIn= json['isLoggedIn'];
    isConfirmEmail= json['isConfirmEmail'];
    role= json['role'];
    status= json['status'];
    createdAt= json['createdAt'];
    updatedAt= json['updatedAt'];
    v= json['__v'];
    otp = json['OTP'];
    token= json['token'];
  }
}