class logisticTransectionDataModel {
  String? status;
  String? timestamp;
  String? path;
  String? code;
  String? message;
  Data? data;

  logisticTransectionDataModel(
      {this.status,
      this.timestamp,
      this.path,
      this.code,
      this.message,
      this.data});

  logisticTransectionDataModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    timestamp = json['timestamp'];
    path = json['path'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['timestamp'] = this.timestamp;
    data['path'] = this.path;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? logisticTransectionId;
  String? logisticTransectionCode;
  Null? logisticTransectionType;
  int? logisticTransectionTotalPrice;
  int? logisticTransectionTotalPriceBalance;
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
  List<DeliveryProcessByLogisticTransectionId>?
      deliveryProcessByLogisticTransectionId;
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
    if (json['deliveryProcessByLogisticTransectionId'] != null) {
      deliveryProcessByLogisticTransectionId =
          <DeliveryProcessByLogisticTransectionId>[];
      json['deliveryProcessByLogisticTransectionId'].forEach((v) {
        deliveryProcessByLogisticTransectionId!
            .add(new DeliveryProcessByLogisticTransectionId.fromJson(v));
      });
    }
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
    if (this.deliveryProcessByLogisticTransectionId != null) {
      data['deliveryProcessByLogisticTransectionId'] = this
          .deliveryProcessByLogisticTransectionId!
          .map((v) => v.toJson())
          .toList();
    }
    if (this.logisticProcessById != null) {
      data['logisticProcessById'] =
          this.logisticProcessById!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DeliveryProcessByLogisticTransectionId {
  int? deliveryProcessId;
  int? logisticTransectionId;
  String? driverCode;
  String? orderCode;
  String? invoiceCode;
  int? orderIdSeq;
  String? locationStart;
  Null? locationEnd;
  int? mileStart;
  int? mileEnd;
  Null? latLong;
  Null? gpsLocation;
  int? driverStatus;
  Null? driverNote;
  String? createBy;
  String? createName;
  String? createDate;
  String? updateBy;
  String? updateName;
  String? updateDate;

  DeliveryProcessByLogisticTransectionId(
      {this.deliveryProcessId,
      this.logisticTransectionId,
      this.driverCode,
      this.orderCode,
      this.invoiceCode,
      this.orderIdSeq,
      this.locationStart,
      this.locationEnd,
      this.mileStart,
      this.mileEnd,
      this.latLong,
      this.gpsLocation,
      this.driverStatus,
      this.driverNote,
      this.createBy,
      this.createName,
      this.createDate,
      this.updateBy,
      this.updateName,
      this.updateDate});

  DeliveryProcessByLogisticTransectionId.fromJson(Map<String, dynamic> json) {
    deliveryProcessId = json['deliveryProcessId'];
    logisticTransectionId = json['logisticTransectionId'];
    driverCode = json['driverCode'];
    orderCode = json['orderCode'];
    invoiceCode = json['invoiceCode'];
    orderIdSeq = json['orderIdSeq'];
    locationStart = json['locationStart'];
    locationEnd = json['locationEnd'];
    mileStart = json['mileStart'];
    mileEnd = json['mileEnd'];
    latLong = json['latLong'];
    gpsLocation = json['gpsLocation'];
    driverStatus = json['driverStatus'];
    driverNote = json['driverNote'];
    createBy = json['createBy'];
    createName = json['createName'];
    createDate = json['createDate'];
    updateBy = json['updateBy'];
    updateName = json['updateName'];
    updateDate = json['updateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['deliveryProcessId'] = this.deliveryProcessId;
    data['logisticTransectionId'] = this.logisticTransectionId;
    data['driverCode'] = this.driverCode;
    data['orderCode'] = this.orderCode;
    data['invoiceCode'] = this.invoiceCode;
    data['orderIdSeq'] = this.orderIdSeq;
    data['locationStart'] = this.locationStart;
    data['locationEnd'] = this.locationEnd;
    data['mileStart'] = this.mileStart;
    data['mileEnd'] = this.mileEnd;
    data['latLong'] = this.latLong;
    data['gpsLocation'] = this.gpsLocation;
    data['driverStatus'] = this.driverStatus;
    data['driverNote'] = this.driverNote;
    data['createBy'] = this.createBy;
    data['createName'] = this.createName;
    data['createDate'] = this.createDate;
    data['updateBy'] = this.updateBy;
    data['updateName'] = this.updateName;
    data['updateDate'] = this.updateDate;
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
  int? price;
  int? realPaid;
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
