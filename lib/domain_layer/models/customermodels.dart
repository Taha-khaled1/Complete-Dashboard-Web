class Customerdata {
  String? status;
  List<CustomerDatamodel>? data;

  Customerdata({this.status, this.data});

  Customerdata.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <CustomerDatamodel>[];
      json['data'].forEach((v) {
        data!.add(CustomerDatamodel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomerDatamodel {
  int? usersId;
  String? usersName;
  String? usersEmail;
  String? usersPassword;
  String? usersPhone;
  int? usersVerify;
  int? usersAprove;
  String? usersTime;

  CustomerDatamodel(
      {this.usersId,
      this.usersName,
      this.usersEmail,
      this.usersPassword,
      this.usersPhone,
      this.usersVerify,
      this.usersAprove,
      this.usersTime});

  CustomerDatamodel.fromJson(Map<String, dynamic> json) {
    usersId = json['users_id'];
    usersName = json['users_name'];
    usersEmail = json['users_email'];
    usersPassword = json['users_password'];
    usersPhone = json['users_phone'];
    usersVerify = json['users_verify'];
    usersAprove = json['users_aprove'];
    usersTime = json['users_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['users_id'] = usersId;
    data['users_name'] = usersName;
    data['users_email'] = usersEmail;
    data['users_password'] = usersPassword;
    data['users_phone'] = usersPhone;
    data['users_verify'] = usersVerify;
    data['users_aprove'] = usersAprove;
    data['users_time'] = usersTime;
    return data;
  }
}
