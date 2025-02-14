class AssetModel {
  String? status;
  String? timestamp;
  String? path;
  String? code;
  String? message;
  List<Data>? data;
  int? page;
  int? perPage;
  int? totalPages;
  int? totalElements;

  AssetModel(
      {this.status,
      this.timestamp,
      this.path,
      this.code,
      this.message,
      this.data,
      this.page,
      this.perPage,
      this.totalPages,
      this.totalElements});

  AssetModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    timestamp = json['timestamp'];
    path = json['path'];
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    page = json['page'];
    perPage = json['perPage'];
    totalPages = json['totalPages'];
    totalElements = json['totalElements'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['timestamp'] = this.timestamp;
    data['path'] = this.path;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['page'] = this.page;
    data['perPage'] = this.perPage;
    data['totalPages'] = this.totalPages;
    data['totalElements'] = this.totalElements;
    return data;
  }
}

class Data {
  int? assetId;
  String? assetCode;
  int? assetCategoryCode;
  int? assetTypeCode;
  String? assetName;
  String? description;
  int? locationCode;
  int? statusCode;
  int? employeeId;
  int? createBy;
  String? createDate;
  int? updateBy;
  String? updateDate;
  String? serialNumber;
  String? assetCategoryCodeName;
  String? assetTypeCodeName;
  String? locationCodeName;
  String? statusCodeName;
  Null? statusCodeColor;
  UserCreateDetail? userCreateDetail;
  UserCreateDetail? userUpdateDetail;
  EmployeesDetail? employeesDetail;
  Null? assetsLogs;

  Data(
      {this.assetId,
      this.assetCode,
      this.assetCategoryCode,
      this.assetTypeCode,
      this.assetName,
      this.description,
      this.locationCode,
      this.statusCode,
      this.employeeId,
      this.createBy,
      this.createDate,
      this.updateBy,
      this.updateDate,
      this.serialNumber,
      this.assetCategoryCodeName,
      this.assetTypeCodeName,
      this.locationCodeName,
      this.statusCodeName,
      this.statusCodeColor,
      this.userCreateDetail,
      this.userUpdateDetail,
      this.employeesDetail,
      this.assetsLogs});

  Data.fromJson(Map<String, dynamic> json) {
    assetId = json['assetId'];
    assetCode = json['assetCode'];
    assetCategoryCode = json['assetCategoryCode'];
    assetTypeCode = json['assetTypeCode'];
    assetName = json['assetName'];
    description = json['description'];
    locationCode = json['locationCode'];
    statusCode = json['statusCode'];
    employeeId = json['employeeId'];
    createBy = json['createBy'];
    createDate = json['createDate'];
    updateBy = json['updateBy'];
    updateDate = json['updateDate'];
    serialNumber = json['serialNumber'];
    assetCategoryCodeName = json['assetCategoryCodeName'];
    assetTypeCodeName = json['assetTypeCodeName'];
    locationCodeName = json['locationCodeName'];
    statusCodeName = json['statusCodeName'];
    statusCodeColor = json['statusCodeColor'];
    userCreateDetail = json['userCreateDetail'] != null
        ? new UserCreateDetail.fromJson(json['userCreateDetail'])
        : null;
    userUpdateDetail = json['userUpdateDetail'] != null
        ? new UserCreateDetail.fromJson(json['userUpdateDetail'])
        : null;
    employeesDetail = json['employeesDetail'] != null
        ? new EmployeesDetail.fromJson(json['employeesDetail'])
        : null;
    assetsLogs = json['assetsLogs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['assetId'] = this.assetId;
    data['assetCode'] = this.assetCode;
    data['assetCategoryCode'] = this.assetCategoryCode;
    data['assetTypeCode'] = this.assetTypeCode;
    data['assetName'] = this.assetName;
    data['description'] = this.description;
    data['locationCode'] = this.locationCode;
    data['statusCode'] = this.statusCode;
    data['employeeId'] = this.employeeId;
    data['createBy'] = this.createBy;
    data['createDate'] = this.createDate;
    data['updateBy'] = this.updateBy;
    data['updateDate'] = this.updateDate;
    data['serialNumber'] = this.serialNumber;
    data['assetCategoryCodeName'] = this.assetCategoryCodeName;
    data['assetTypeCodeName'] = this.assetTypeCodeName;
    data['locationCodeName'] = this.locationCodeName;
    data['statusCodeName'] = this.statusCodeName;
    data['statusCodeColor'] = this.statusCodeColor;
    if (this.userCreateDetail != null) {
      data['userCreateDetail'] = this.userCreateDetail!.toJson();
    }
    if (this.userUpdateDetail != null) {
      data['userUpdateDetail'] = this.userUpdateDetail!.toJson();
    }
    if (this.employeesDetail != null) {
      data['employeesDetail'] = this.employeesDetail!.toJson();
    }
    data['assetsLogs'] = this.assetsLogs;
    return data;
  }
}

class UserCreateDetail {
  int? userId;
  String? userCode;
  String? userName;
  int? roleCode;
  String? activeFlag;
  int? employeeId;
  Null? roleCodeName;
  String? fullName;

  UserCreateDetail(
      {this.userId,
      this.userCode,
      this.userName,
      this.roleCode,
      this.activeFlag,
      this.employeeId,
      this.roleCodeName,
      this.fullName});

  UserCreateDetail.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    userCode = json['userCode'];
    userName = json['userName'];
    roleCode = json['roleCode'];
    activeFlag = json['activeFlag'];
    employeeId = json['employeeId'];
    roleCodeName = json['roleCodeName'];
    fullName = json['fullName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['userCode'] = this.userCode;
    data['userName'] = this.userName;
    data['roleCode'] = this.roleCode;
    data['activeFlag'] = this.activeFlag;
    data['employeeId'] = this.employeeId;
    data['roleCodeName'] = this.roleCodeName;
    data['fullName'] = this.fullName;
    return data;
  }
}

class EmployeesDetail {
  int? employeeId;
  String? employeeCode;
  int? prefixCodeTh;
  String? firstNameTh;
  String? lastNameTh;
  int? positionCode;
  int? departmentCode;
  int? sectionCode;
  String? prefixCodeThName;
  String? positionCodeName;
  String? departmentCodeName;
  String? sectionCodeName;

  EmployeesDetail(
      {this.employeeId,
      this.employeeCode,
      this.prefixCodeTh,
      this.firstNameTh,
      this.lastNameTh,
      this.positionCode,
      this.departmentCode,
      this.sectionCode,
      this.prefixCodeThName,
      this.positionCodeName,
      this.departmentCodeName,
      this.sectionCodeName});

  EmployeesDetail.fromJson(Map<String, dynamic> json) {
    employeeId = json['employeeId'];
    employeeCode = json['employeeCode'];
    prefixCodeTh = json['prefixCodeTh'];
    firstNameTh = json['firstNameTh'];
    lastNameTh = json['lastNameTh'];
    positionCode = json['positionCode'];
    departmentCode = json['departmentCode'];
    sectionCode = json['sectionCode'];
    prefixCodeThName = json['prefixCodeThName'];
    positionCodeName = json['positionCodeName'];
    departmentCodeName = json['departmentCodeName'];
    sectionCodeName = json['sectionCodeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employeeId'] = this.employeeId;
    data['employeeCode'] = this.employeeCode;
    data['prefixCodeTh'] = this.prefixCodeTh;
    data['firstNameTh'] = this.firstNameTh;
    data['lastNameTh'] = this.lastNameTh;
    data['positionCode'] = this.positionCode;
    data['departmentCode'] = this.departmentCode;
    data['sectionCode'] = this.sectionCode;
    data['prefixCodeThName'] = this.prefixCodeThName;
    data['positionCodeName'] = this.positionCodeName;
    data['departmentCodeName'] = this.departmentCodeName;
    data['sectionCodeName'] = this.sectionCodeName;
    return data;
  }
}
