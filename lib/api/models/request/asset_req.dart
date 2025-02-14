class AssetReq {
  int page;
  int perPage;
  int? statusCode;
  int? assetTypeCode;
  int? assetCategoryCode;

  AssetReq(
      {this.page = 1,
      this.perPage = 1,
      this.statusCode,
      this.assetTypeCode,
      this.assetCategoryCode});

  // ฟังก์ชันแปลงข้อมูลเป็น Map
  Map<String, dynamic> toMap() {
    return {
      'page': page,
      'perPage': perPage,
      if (statusCode != null) 'statusCode': statusCode,
      if (assetTypeCode != null) 'assetTypeCode': assetTypeCode,
      if (assetCategoryCode != null) 'assetCategoryCode': assetCategoryCode,
    };
  }
}
