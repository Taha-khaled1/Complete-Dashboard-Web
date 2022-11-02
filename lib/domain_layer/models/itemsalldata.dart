class ItemsAlldata {
  String? status;
  List<ItemsData>? data;

  ItemsAlldata({this.status, this.data});

  ItemsAlldata.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <ItemsData>[];
      json['data'].forEach((v) {
        data!.add(ItemsData.fromJson(v));
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

class ItemsData {
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDescrbtion;
  String? itemsDescrbtionAr;
  int? itemsCount;
  String? itemsImage;
  int? itemsActive;
  int? itemsPrice;

  String? itemsTime;
  int? itemsReletion;

  ItemsData(
      {this.itemsId,
      this.itemsName,
      this.itemsNameAr,
      this.itemsDescrbtion,
      this.itemsDescrbtionAr,
      this.itemsCount,
      this.itemsImage,
      this.itemsActive,
      this.itemsPrice,
      this.itemsTime,
      this.itemsReletion});

  ItemsData.fromJson(Map<String, dynamic> json) {
    itemsId = int.parse(json['items_id']);
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDescrbtion = json['items_descrbtion'];
    itemsDescrbtionAr = json['items_descrbtion_ar'];
    itemsCount = int.parse(json['items_count']);
    itemsImage = json['items_image'];
    itemsActive = int.parse(json['items_active']);
    itemsPrice = int.parse(json['items_price']);

    itemsTime = json['items_time'];
    itemsReletion = int.parse(json['items_reletion']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_descrbtion'] = itemsDescrbtion;
    data['items_descrbtion_ar'] = itemsDescrbtionAr;
    data['items_count'] = itemsCount;
    data['items_image'] = itemsImage;
    data['items_active'] = itemsActive;
    data['items_price'] = itemsPrice;
    data['items_time'] = itemsTime;
    data['items_reletion'] = itemsReletion;
    return data;
  }
}
