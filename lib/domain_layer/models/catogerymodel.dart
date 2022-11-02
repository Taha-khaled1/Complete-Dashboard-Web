class Catogerymodel {
  String? status;
  List<CatogeryDatamodel>? data;

  Catogerymodel({this.status, this.data});

  Catogerymodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <CatogeryDatamodel>[];
      json['data'].forEach((v) {
        data!.add(CatogeryDatamodel.fromJson(v));
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

class CatogeryDatamodel {
  int? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesTime;
  String? categoriesImages;

  CatogeryDatamodel(
      {this.categoriesId,
      this.categoriesName,
      this.categoriesNameAr,
      this.categoriesTime,
      this.categoriesImages});

  CatogeryDatamodel.fromJson(Map<String, dynamic> json) {
    categoriesId = int.parse(json['categories_id']);
    categoriesName = json['categories_name'];
    categoriesNameAr = json['categories_name_ar'];
    categoriesTime = json['categories_time'];
    categoriesImages = json['categories_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categories_id'] = categoriesId;
    data['categories_name'] = categoriesName;
    data['categories_name_ar'] = categoriesNameAr;
    data['categories_time'] = categoriesTime;
    data['categories_image'] = categoriesImages;
    return data;
  }
}
