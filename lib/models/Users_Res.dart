class Users_Res {
  bool? status;
  String? message;
  List<Data>? data;

  Users_Res({this.status, this.message, this.data});

  Users_Res.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? userId;
  String? name;
  String? designation;
  int? phoneNum;

  Data({this.userId, this.name, this.designation, this.phoneNum});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    designation = json['designation'];
    phoneNum = json['phone_num'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['designation'] = this.designation;
    data['phone_num'] = this.phoneNum;
    return data;
  }
}

class Users {
  int? userId;
  String? name;
  String? designation;
  int? phoneNum;

  Users({this.userId, this.name, this.designation, this.phoneNum});

  Users.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    designation = json['designation'];
    phoneNum = json['phone_num'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['designation'] = this.designation;
    data['phone_num'] = this.phoneNum;
    return data;
  }
}
