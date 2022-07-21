// ignore_for_file: unnecessary_new, prefer_collection_literals

class CheckoutResponse {
  String? message;
  int? rescode;
  Result? result;
  XenditInvoice? xenditInvoice;

  CheckoutResponse(
      {this.message, this.rescode, this.result, this.xenditInvoice});

  CheckoutResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    rescode = json['rescode'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    xenditInvoice = json['xendit_invoice'] != null
        ? new XenditInvoice.fromJson(json['xendit_invoice'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['rescode'] = rescode;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    if (xenditInvoice != null) {
      data['xendit_invoice'] = xenditInvoice!.toJson();
    }
    return data;
  }
}

class Result {
  Category? category;
  Checkout? checkout;
  Product? product;

  Result({this.category, this.checkout, this.product});

  Result.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    checkout = json['checkout'] != null
        ? new Checkout.fromJson(json['checkout'])
        : null;
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (checkout != null) {
      data['checkout'] = checkout!.toJson();
    }
    if (product != null) {
      data['product'] = product!.toJson();
    }
    return data;
  }
}

class Category {
  String? name;

  Category({this.name});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    return data;
  }
}

class Checkout {
  String? productDetailCode;
  String? transactionCode;
  String? iDCustomer;
  String? customerName;
  int? price;
  int? fee;
  int? amount;

  Checkout(
      {this.productDetailCode,
      this.transactionCode,
      this.iDCustomer,
      this.customerName,
      this.price,
      this.fee,
      this.amount});

  Checkout.fromJson(Map<String, dynamic> json) {
    productDetailCode = json['Product_Detail_code'];
    transactionCode = json['Transaction_Code'];
    iDCustomer = json['ID_Customer'];
    customerName = json['Customer_Name'];
    price = json['Price'];
    fee = json['Fee'];
    amount = json['Amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Product_Detail_code'] = productDetailCode;
    data['Transaction_Code'] = transactionCode;
    data['ID_Customer'] = iDCustomer;
    data['Customer_Name'] = customerName;
    data['Price'] = price;
    data['Fee'] = fee;
    data['Amount'] = amount;
    return data;
  }
}

class Product {
  String? name;
  String? image;

  Product({this.name, this.image});

  Product.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = name;
    data['Image'] = image;
    return data;
  }
}

class XenditInvoice {
  String? id;
  String? invoiceUrl;
  String? userId;
  String? externalId;
  String? status;
  String? merchantName;
  String? merchantProfilePictureUrl;
  int? amount;
  List<Items>? items;
  List<Fees>? fees;
  String? payerEmail;
  String? description;
  String? expiryDate;
  Customer? customer;
  CustomerNotificationPreference? customerNotificationPreference;
  List<AvailableBanks>? availableBanks;
  List<AvailableEwallets>? availableEwallets;
  List<AvailableRetailOutlets>? availableRetailOutlets;
  bool? shouldSendEmail;
  String? created;
  String? updated;
  String? currency;

  XenditInvoice(
      {this.id,
      this.invoiceUrl,
      this.userId,
      this.externalId,
      this.status,
      this.merchantName,
      this.merchantProfilePictureUrl,
      this.amount,
      this.items,
      this.fees,
      this.payerEmail,
      this.description,
      this.expiryDate,
      this.customer,
      this.customerNotificationPreference,
      this.availableBanks,
      this.availableEwallets,
      this.availableRetailOutlets,
      this.shouldSendEmail,
      this.created,
      this.updated,
      this.currency});

  XenditInvoice.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    invoiceUrl = json['invoice_url'];
    userId = json['user_id'];
    externalId = json['external_id'];
    status = json['status'];
    merchantName = json['merchant_name'];
    merchantProfilePictureUrl = json['merchant_profile_picture_url'];
    amount = json['amount'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    if (json['fees'] != null) {
      fees = <Fees>[];
      json['fees'].forEach((v) {
        fees!.add(new Fees.fromJson(v));
      });
    }
    payerEmail = json['payer_email'];
    description = json['description'];
    expiryDate = json['expiry_date'];
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
    customerNotificationPreference =
        json['customer_notification_preference'] != null
            ? new CustomerNotificationPreference.fromJson(
                json['customer_notification_preference'])
            : null;
    if (json['available_banks'] != null) {
      availableBanks = <AvailableBanks>[];
      json['available_banks'].forEach((v) {
        availableBanks!.add(new AvailableBanks.fromJson(v));
      });
    }
    if (json['available_ewallets'] != null) {
      availableEwallets = <AvailableEwallets>[];
      json['available_ewallets'].forEach((v) {
        availableEwallets!.add(new AvailableEwallets.fromJson(v));
      });
    }
    if (json['available_retail_outlets'] != null) {
      availableRetailOutlets = <AvailableRetailOutlets>[];
      json['available_retail_outlets'].forEach((v) {
        availableRetailOutlets!.add(new AvailableRetailOutlets.fromJson(v));
      });
    }
    shouldSendEmail = json['should_send_email'];
    created = json['created'];
    updated = json['updated'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['invoice_url'] = invoiceUrl;
    data['user_id'] = userId;
    data['external_id'] = externalId;
    data['status'] = status;
    data['merchant_name'] = merchantName;
    data['merchant_profile_picture_url'] = merchantProfilePictureUrl;
    data['amount'] = amount;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    if (fees != null) {
      data['fees'] = fees!.map((v) => v.toJson()).toList();
    }
    data['payer_email'] = payerEmail;
    data['description'] = description;
    data['expiry_date'] = expiryDate;
    if (customer != null) {
      data['customer'] = customer!.toJson();
    }
    if (customerNotificationPreference != null) {
      data['customer_notification_preference'] =
          customerNotificationPreference!.toJson();
    }
    if (availableBanks != null) {
      data['available_banks'] = availableBanks!.map((v) => v.toJson()).toList();
    }
    if (availableEwallets != null) {
      data['available_ewallets'] =
          availableEwallets!.map((v) => v.toJson()).toList();
    }
    if (availableRetailOutlets != null) {
      data['available_retail_outlets'] =
          availableRetailOutlets!.map((v) => v.toJson()).toList();
    }
    data['should_send_email'] = shouldSendEmail;
    data['created'] = created;
    data['updated'] = updated;
    data['currency'] = currency;
    return data;
  }
}

class Items {
  String? name;
  int? price;
  int? quantity;
  String? category;

  Items({this.name, this.price, this.quantity, this.category});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['price'] = price;
    data['quantity'] = quantity;
    data['category'] = category;
    return data;
  }
}

class Fees {
  String? type;
  int? value;

  Fees({this.type, this.value});

  Fees.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = type;
    data['value'] = value;
    return data;
  }
}

class Customer {
  String? givenNames;
  String? email;
  String? mobileNumber;

  Customer({this.givenNames, this.email, this.mobileNumber});

  Customer.fromJson(Map<String, dynamic> json) {
    givenNames = json['given_names'];
    email = json['email'];
    mobileNumber = json['mobile_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['given_names'] = givenNames;
    data['email'] = email;
    data['mobile_number'] = mobileNumber;
    return data;
  }
}

class CustomerNotificationPreference {
  List<String>? invoiceCreated;
  List<String>? invoiceReminder;
  List<String>? invoicePaid;
  List<String>? invoiceExpired;

  CustomerNotificationPreference(
      {this.invoiceCreated,
      this.invoiceReminder,
      this.invoicePaid,
      this.invoiceExpired});

  CustomerNotificationPreference.fromJson(Map<String, dynamic> json) {
    invoiceCreated = json['invoice_created'].cast<String>();
    invoiceReminder = json['invoice_reminder'].cast<String>();
    invoicePaid = json['invoice_paid'].cast<String>();
    invoiceExpired = json['invoice_expired'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['invoice_created'] = invoiceCreated;
    data['invoice_reminder'] = invoiceReminder;
    data['invoice_paid'] = invoicePaid;
    data['invoice_expired'] = invoiceExpired;
    return data;
  }
}

class AvailableBanks {
  String? bankCode;
  String? collectionType;
  String? bankAccountNumber;
  int? transferAmount;
  String? bankBranch;
  String? accountHolderName;
  int? identityAmount;

  AvailableBanks(
      {this.bankCode,
      this.collectionType,
      this.bankAccountNumber,
      this.transferAmount,
      this.bankBranch,
      this.accountHolderName,
      this.identityAmount});

  AvailableBanks.fromJson(Map<String, dynamic> json) {
    bankCode = json['bank_code'];
    collectionType = json['collection_type'];
    bankAccountNumber = json['bank_account_number'];
    transferAmount = json['transfer_amount'];
    bankBranch = json['bank_branch'];
    accountHolderName = json['account_holder_name'];
    identityAmount = json['identity_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bank_code'] = bankCode;
    data['collection_type'] = collectionType;
    data['bank_account_number'] = bankAccountNumber;
    data['transfer_amount'] = transferAmount;
    data['bank_branch'] = bankBranch;
    data['account_holder_name'] = accountHolderName;
    data['identity_amount'] = identityAmount;
    return data;
  }
}

class AvailableEwallets {
  String? ewalletType;

  AvailableEwallets({this.ewalletType});

  AvailableEwallets.fromJson(Map<String, dynamic> json) {
    ewalletType = json['ewallet_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ewallet_type'] = ewalletType;
    return data;
  }
}

class AvailableRetailOutlets {
  String? retailOutletName;

  AvailableRetailOutlets({this.retailOutletName});

  AvailableRetailOutlets.fromJson(Map<String, dynamic> json) {
    retailOutletName = json['retail_outlet_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['retail_outlet_name'] = retailOutletName;
    return data;
  }
}
