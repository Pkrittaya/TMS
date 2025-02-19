class LogisticTransectionModel {
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

  LogisticTransectionModel(
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

  LogisticTransectionModel.fromJson(Map<String, dynamic> json) {
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
  int? logisticTransectionId;
  String? logisticTransectionCode;
  Null? logisticTransectionType;
  double? logisticTransectionTotalPrice;
  double? logisticTransectionTotalPriceBalance;
  int? logisticTransectionTotalQty;
  int? logisticTransectionBalance;
  int? logisticTransectionStatus;
  int? logisticTransectionMile;
  Null? accountingAutorize;
  Null? logisticProvider;
  String? logisticHub;
  String? createBy;
  String? createName;
  String? createDate;
  String? updateBy;
  String? updateName;
  String? updateDate;
  String? driverName;
  Null? deliveryProcessByLogisticTransectionId;
  List<LogisticProcessById>? logisticProcessById;

  Data(
      {this.logisticTransectionId,
      this.logisticTransectionCode,
      this.logisticTransectionType,
      this.logisticTransectionTotalPrice,
      this.logisticTransectionTotalPriceBalance,
      this.logisticTransectionTotalQty,
      this.logisticTransectionBalance,
      this.logisticTransectionStatus,
      this.logisticTransectionMile,
      this.accountingAutorize,
      this.logisticProvider,
      this.logisticHub,
      this.createBy,
      this.createName,
      this.createDate,
      this.updateBy,
      this.updateName,
      this.updateDate,
      this.driverName,
      this.deliveryProcessByLogisticTransectionId,
      this.logisticProcessById});

  Data.fromJson(Map<String, dynamic> json) {
    logisticTransectionId = json['logisticTransectionId'];
    logisticTransectionCode = json['logisticTransectionCode'];
    logisticTransectionType = json['logisticTransectionType'];
    logisticTransectionTotalPrice = json['logisticTransectionTotalPrice'];
    logisticTransectionTotalPriceBalance =
        json['logisticTransectionTotalPriceBalance'];
    logisticTransectionTotalQty = json['logisticTransectionTotalQty'];
    logisticTransectionBalance = json['logisticTransectionBalance'];
    logisticTransectionStatus = json['logisticTransectionStatus'];
    logisticTransectionMile = json['logisticTransectionMile'];
    accountingAutorize = json['accountingAutorize'];
    logisticProvider = json['logisticProvider'];
    logisticHub = json['logisticHub'];
    createBy = json['createBy'];
    createName = json['createName'];
    createDate = json['createDate'];
    updateBy = json['updateBy'];
    updateName = json['updateName'];
    updateDate = json['updateDate'];
    driverName = json['driverName'];
    deliveryProcessByLogisticTransectionId =
        json['deliveryProcessByLogisticTransectionId'];
    if (json['logisticProcessById'] != null) {
      logisticProcessById = <LogisticProcessById>[];
      json['logisticProcessById'].forEach((v) {
        logisticProcessById!.add(new LogisticProcessById.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logisticTransectionId'] = this.logisticTransectionId;
    data['logisticTransectionCode'] = this.logisticTransectionCode;
    data['logisticTransectionType'] = this.logisticTransectionType;
    data['logisticTransectionTotalPrice'] = this.logisticTransectionTotalPrice;
    data['logisticTransectionTotalPriceBalance'] =
        this.logisticTransectionTotalPriceBalance;
    data['logisticTransectionTotalQty'] = this.logisticTransectionTotalQty;
    data['logisticTransectionBalance'] = this.logisticTransectionBalance;
    data['logisticTransectionStatus'] = this.logisticTransectionStatus;
    data['logisticTransectionMile'] = this.logisticTransectionMile;
    data['accountingAutorize'] = this.accountingAutorize;
    data['logisticProvider'] = this.logisticProvider;
    data['logisticHub'] = this.logisticHub;
    data['createBy'] = this.createBy;
    data['createName'] = this.createName;
    data['createDate'] = this.createDate;
    data['updateBy'] = this.updateBy;
    data['updateName'] = this.updateName;
    data['updateDate'] = this.updateDate;
    data['driverName'] = this.driverName;
    data['deliveryProcessByLogisticTransectionId'] =
        this.deliveryProcessByLogisticTransectionId;
    if (this.logisticProcessById != null) {
      data['logisticProcessById'] =
          this.logisticProcessById!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LogisticProcessById {
  int? logisticProcessId;
  int? logisticTransectionId;
  String? logisticTransectionCode;
  int? logisticTransectionSeq;
  int? logisticStatus;
  String? assignDriverCode;
  String? orderCode;
  String? invoiceCode;
  int? orderSkuQty;
  String? branch;
  Null? paymentType;
  double? price;
  double? realPaid;
  String? receiveMoneyFlag;
  String? proofPriceFlag;
  String? createBy;
  String? createName;
  String? createDate;
  String? updateBy;
  String? updateName;
  String? updateDate;
  List<LogisticProcessDetailById>? logisticProcessDetailById;

  LogisticProcessById(
      {this.logisticProcessId,
      this.logisticTransectionId,
      this.logisticTransectionCode,
      this.logisticTransectionSeq,
      this.logisticStatus,
      this.assignDriverCode,
      this.orderCode,
      this.invoiceCode,
      this.orderSkuQty,
      this.branch,
      this.paymentType,
      this.price,
      this.realPaid,
      this.receiveMoneyFlag,
      this.proofPriceFlag,
      this.createBy,
      this.createName,
      this.createDate,
      this.updateBy,
      this.updateName,
      this.updateDate,
      this.logisticProcessDetailById});

  LogisticProcessById.fromJson(Map<String, dynamic> json) {
    logisticProcessId = json['logisticProcessId'];
    logisticTransectionId = json['logisticTransectionId'];
    logisticTransectionCode = json['logisticTransectionCode'];
    logisticTransectionSeq = json['logisticTransectionSeq'];
    logisticStatus = json['logisticStatus'];
    assignDriverCode = json['assignDriverCode'];
    orderCode = json['orderCode'];
    invoiceCode = json['invoiceCode'];
    orderSkuQty = json['orderSkuQty'];
    branch = json['branch'];
    paymentType = json['paymentType'];
    price = json['price'];
    realPaid = json['realPaid'];
    receiveMoneyFlag = json['receiveMoneyFlag'];
    proofPriceFlag = json['proofPriceFlag'];
    createBy = json['createBy'];
    createName = json['createName'];
    createDate = json['createDate'];
    updateBy = json['updateBy'];
    updateName = json['updateName'];
    updateDate = json['updateDate'];
    if (json['logisticProcessDetailById'] != null) {
      logisticProcessDetailById = <LogisticProcessDetailById>[];
      json['logisticProcessDetailById'].forEach((v) {
        logisticProcessDetailById!
            .add(new LogisticProcessDetailById.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logisticProcessId'] = this.logisticProcessId;
    data['logisticTransectionId'] = this.logisticTransectionId;
    data['logisticTransectionCode'] = this.logisticTransectionCode;
    data['logisticTransectionSeq'] = this.logisticTransectionSeq;
    data['logisticStatus'] = this.logisticStatus;
    data['assignDriverCode'] = this.assignDriverCode;
    data['orderCode'] = this.orderCode;
    data['invoiceCode'] = this.invoiceCode;
    data['orderSkuQty'] = this.orderSkuQty;
    data['branch'] = this.branch;
    data['paymentType'] = this.paymentType;
    data['price'] = this.price;
    data['realPaid'] = this.realPaid;
    data['receiveMoneyFlag'] = this.receiveMoneyFlag;
    data['proofPriceFlag'] = this.proofPriceFlag;
    data['createBy'] = this.createBy;
    data['createName'] = this.createName;
    data['createDate'] = this.createDate;
    data['updateBy'] = this.updateBy;
    data['updateName'] = this.updateName;
    data['updateDate'] = this.updateDate;
    if (this.logisticProcessDetailById != null) {
      data['logisticProcessDetailById'] =
          this.logisticProcessDetailById!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LogisticProcessDetailById {
  int? logisticProcessDetailsId;
  int? logisticProcessId;
  String? orderCode;
  String? customerCode;
  String? customerName;
  String? useFlag;
  int? customerAddressSeq;
  String? customerAddress;
  String? receiver;
  String? postNo;
  String? province;
  String? aumpur;
  String? tumbon;
  String? area;
  String? activeFlag;
  String? createBy;
  String? createName;
  String? createDate;
  String? updateBy;
  String? updateName;
  String? updateDate;

  LogisticProcessDetailById(
      {this.logisticProcessDetailsId,
      this.logisticProcessId,
      this.orderCode,
      this.customerCode,
      this.customerName,
      this.useFlag,
      this.customerAddressSeq,
      this.customerAddress,
      this.receiver,
      this.postNo,
      this.province,
      this.aumpur,
      this.tumbon,
      this.area,
      this.activeFlag,
      this.createBy,
      this.createName,
      this.createDate,
      this.updateBy,
      this.updateName,
      this.updateDate});

  LogisticProcessDetailById.fromJson(Map<String, dynamic> json) {
    logisticProcessDetailsId = json['logisticProcessDetailsId'];
    logisticProcessId = json['logisticProcessId'];
    orderCode = json['orderCode'];
    customerCode = json['customerCode'];
    customerName = json['customerName'];
    useFlag = json['useFlag'];
    customerAddressSeq = json['customerAddressSeq'];
    customerAddress = json['customerAddress'];
    receiver = json['receiver'];
    postNo = json['postNo'];
    province = json['province'];
    aumpur = json['aumpur'];
    tumbon = json['tumbon'];
    area = json['area'];
    activeFlag = json['activeFlag'];
    createBy = json['createBy'];
    createName = json['createName'];
    createDate = json['createDate'];
    updateBy = json['updateBy'];
    updateName = json['updateName'];
    updateDate = json['updateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logisticProcessDetailsId'] = this.logisticProcessDetailsId;
    data['logisticProcessId'] = this.logisticProcessId;
    data['orderCode'] = this.orderCode;
    data['customerCode'] = this.customerCode;
    data['customerName'] = this.customerName;
    data['useFlag'] = this.useFlag;
    data['customerAddressSeq'] = this.customerAddressSeq;
    data['customerAddress'] = this.customerAddress;
    data['receiver'] = this.receiver;
    data['postNo'] = this.postNo;
    data['province'] = this.province;
    data['aumpur'] = this.aumpur;
    data['tumbon'] = this.tumbon;
    data['area'] = this.area;
    data['activeFlag'] = this.activeFlag;
    data['createBy'] = this.createBy;
    data['createName'] = this.createName;
    data['createDate'] = this.createDate;
    data['updateBy'] = this.updateBy;
    data['updateName'] = this.updateName;
    data['updateDate'] = this.updateDate;
    return data;
  }
}
