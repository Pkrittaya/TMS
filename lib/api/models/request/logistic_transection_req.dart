class LogisticTransectionReq {
  int page;
  int perPage;
  String? driverCode;
  int? status;
  String? logisticTransectionCode;
  String? dateFrom;
  String? dateTo;

  LogisticTransectionReq(
      {this.page = 1,
      this.perPage = 1,
      this.driverCode,
      this.status,
      this.logisticTransectionCode,
      this.dateFrom,
      this.dateTo});

  // ฟังก์ชันแปลงข้อมูลเป็น Map
  Map<String, dynamic> toMap() {
    return {
      'page': page,
      'perPage': perPage,
      if (driverCode != null) 'statusCode': driverCode,
      if (status != null) 'assetTypeCode': status,
      if (logisticTransectionCode != null)
        'assetCategoryCode': logisticTransectionCode,
      if (dateFrom != null) 'assetCategoryCode': dateFrom,
      if (dateTo != null) 'assetCategoryCode': dateTo,
    };
  }
}
