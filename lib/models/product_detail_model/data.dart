import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final String? productSeriesId;
  final String? productId;
  final String? productCode;
  final String? productName;
  final String? productImage;
  final String? productAbbreviateImage;
  final String? productDetailsImage;
  final String? productShareImage;
  final num? price;
  final String? issueNumber;
  final num? circulateNumber;
  final String? contractAddress;
  final String? chainMark;
  final String? creatorId;
  final String? creatorAvatar;
  final String? creatorNickName;
  final dynamic creatorWalletAddress;
  final String? creatorIntroduce;
  final dynamic brandPartyId;
  final dynamic brandPartyAvatar;
  final dynamic brandPartyNickName;
  final dynamic brandPartyIntroduce;
  final dynamic supervisorId;
  final dynamic supervisorAvatar;
  final dynamic supervisorNickName;
  final dynamic supervisorIntroduce;
  final String? productDescription;
  final String? holderId;
  final String? holderAvatar;
  final String? holderNickName;
  final String? holderWalletAddress;
  final num? status;
  final num? synthesisStatus;
  final dynamic activityStatus;
  final num? transferType;
  final String? allowSellTime;
  final num? isResale;
  final dynamic onSales;
  final dynamic stock;
  final num? isRestrictionSell;
  final String? payWay;
  final num? isProductBatchTransfer;
  final num? isUserBatchTransfer;
  final num? type;
  final num? isBoxPrize;
  final dynamic notOpenNumber;
  final dynamic productList;
  final dynamic dynamicImage;
  final num? batchResale;

  const Data({
    this.productSeriesId,
    this.productId,
    this.productCode,
    this.productName,
    this.productImage,
    this.productAbbreviateImage,
    this.productDetailsImage,
    this.productShareImage,
    this.price,
    this.issueNumber,
    this.circulateNumber,
    this.contractAddress,
    this.chainMark,
    this.creatorId,
    this.creatorAvatar,
    this.creatorNickName,
    this.creatorWalletAddress,
    this.creatorIntroduce,
    this.brandPartyId,
    this.brandPartyAvatar,
    this.brandPartyNickName,
    this.brandPartyIntroduce,
    this.supervisorId,
    this.supervisorAvatar,
    this.supervisorNickName,
    this.supervisorIntroduce,
    this.productDescription,
    this.holderId,
    this.holderAvatar,
    this.holderNickName,
    this.holderWalletAddress,
    this.status,
    this.synthesisStatus,
    this.activityStatus,
    this.transferType,
    this.allowSellTime,
    this.isResale,
    this.onSales,
    this.stock,
    this.isRestrictionSell,
    this.payWay,
    this.isProductBatchTransfer,
    this.isUserBatchTransfer,
    this.type,
    this.isBoxPrize,
    this.notOpenNumber,
    this.productList,
    this.dynamicImage,
    this.batchResale,
  });

  @override
  String toString() {
    return 'Data(productSeriesId: $productSeriesId, productId: $productId, productCode: $productCode, productName: $productName, productImage: $productImage, productAbbreviateImage: $productAbbreviateImage, productDetailsImage: $productDetailsImage, productShareImage: $productShareImage, price: $price, issueNumber: $issueNumber, circulateNumber: $circulateNumber, contractAddress: $contractAddress, chainMark: $chainMark, creatorId: $creatorId, creatorAvatar: $creatorAvatar, creatorNickName: $creatorNickName, creatorWalletAddress: $creatorWalletAddress, creatorIntroduce: $creatorIntroduce, brandPartyId: $brandPartyId, brandPartyAvatar: $brandPartyAvatar, brandPartyNickName: $brandPartyNickName, brandPartyIntroduce: $brandPartyIntroduce, supervisorId: $supervisorId, supervisorAvatar: $supervisorAvatar, supervisorNickName: $supervisorNickName, supervisorIntroduce: $supervisorIntroduce, productDescription: $productDescription, holderId: $holderId, holderAvatar: $holderAvatar, holderNickName: $holderNickName, holderWalletAddress: $holderWalletAddress, status: $status, synthesisStatus: $synthesisStatus, activityStatus: $activityStatus, transferType: $transferType, allowSellTime: $allowSellTime, isResale: $isResale, onSales: $onSales, stock: $stock, isRestrictionSell: $isRestrictionSell, payWay: $payWay, isProductBatchTransfer: $isProductBatchTransfer, isUserBatchTransfer: $isUserBatchTransfer, type: $type, isBoxPrize: $isBoxPrize, notOpenNumber: $notOpenNumber, productList: $productList, dynamicImage: $dynamicImage, batchResale: $batchResale)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? productSeriesId,
    String? productId,
    String? productCode,
    String? productName,
    String? productImage,
    String? productAbbreviateImage,
    String? productDetailsImage,
    String? productShareImage,
    num? price,
    String? issueNumber,
    num? circulateNumber,
    String? contractAddress,
    String? chainMark,
    String? creatorId,
    String? creatorAvatar,
    String? creatorNickName,
    dynamic creatorWalletAddress,
    String? creatorIntroduce,
    dynamic brandPartyId,
    dynamic brandPartyAvatar,
    dynamic brandPartyNickName,
    dynamic brandPartyIntroduce,
    dynamic supervisorId,
    dynamic supervisorAvatar,
    dynamic supervisorNickName,
    dynamic supervisorIntroduce,
    String? productDescription,
    String? holderId,
    String? holderAvatar,
    String? holderNickName,
    String? holderWalletAddress,
    num? status,
    num? synthesisStatus,
    dynamic activityStatus,
    num? transferType,
    String? allowSellTime,
    num? isResale,
    dynamic onSales,
    dynamic stock,
    num? isRestrictionSell,
    String? payWay,
    num? isProductBatchTransfer,
    num? isUserBatchTransfer,
    num? type,
    num? isBoxPrize,
    dynamic notOpenNumber,
    dynamic productList,
    dynamic dynamicImage,
    num? batchResale,
  }) {
    return Data(
      productSeriesId: productSeriesId ?? this.productSeriesId,
      productId: productId ?? this.productId,
      productCode: productCode ?? this.productCode,
      productName: productName ?? this.productName,
      productImage: productImage ?? this.productImage,
      productAbbreviateImage:
          productAbbreviateImage ?? this.productAbbreviateImage,
      productDetailsImage: productDetailsImage ?? this.productDetailsImage,
      productShareImage: productShareImage ?? this.productShareImage,
      price: price ?? this.price,
      issueNumber: issueNumber ?? this.issueNumber,
      circulateNumber: circulateNumber ?? this.circulateNumber,
      contractAddress: contractAddress ?? this.contractAddress,
      chainMark: chainMark ?? this.chainMark,
      creatorId: creatorId ?? this.creatorId,
      creatorAvatar: creatorAvatar ?? this.creatorAvatar,
      creatorNickName: creatorNickName ?? this.creatorNickName,
      creatorWalletAddress: creatorWalletAddress ?? this.creatorWalletAddress,
      creatorIntroduce: creatorIntroduce ?? this.creatorIntroduce,
      brandPartyId: brandPartyId ?? this.brandPartyId,
      brandPartyAvatar: brandPartyAvatar ?? this.brandPartyAvatar,
      brandPartyNickName: brandPartyNickName ?? this.brandPartyNickName,
      brandPartyIntroduce: brandPartyIntroduce ?? this.brandPartyIntroduce,
      supervisorId: supervisorId ?? this.supervisorId,
      supervisorAvatar: supervisorAvatar ?? this.supervisorAvatar,
      supervisorNickName: supervisorNickName ?? this.supervisorNickName,
      supervisorIntroduce: supervisorIntroduce ?? this.supervisorIntroduce,
      productDescription: productDescription ?? this.productDescription,
      holderId: holderId ?? this.holderId,
      holderAvatar: holderAvatar ?? this.holderAvatar,
      holderNickName: holderNickName ?? this.holderNickName,
      holderWalletAddress: holderWalletAddress ?? this.holderWalletAddress,
      status: status ?? this.status,
      synthesisStatus: synthesisStatus ?? this.synthesisStatus,
      activityStatus: activityStatus ?? this.activityStatus,
      transferType: transferType ?? this.transferType,
      allowSellTime: allowSellTime ?? this.allowSellTime,
      isResale: isResale ?? this.isResale,
      onSales: onSales ?? this.onSales,
      stock: stock ?? this.stock,
      isRestrictionSell: isRestrictionSell ?? this.isRestrictionSell,
      payWay: payWay ?? this.payWay,
      isProductBatchTransfer:
          isProductBatchTransfer ?? this.isProductBatchTransfer,
      isUserBatchTransfer: isUserBatchTransfer ?? this.isUserBatchTransfer,
      type: type ?? this.type,
      isBoxPrize: isBoxPrize ?? this.isBoxPrize,
      notOpenNumber: notOpenNumber ?? this.notOpenNumber,
      productList: productList ?? this.productList,
      dynamicImage: dynamicImage ?? this.dynamicImage,
      batchResale: batchResale ?? this.batchResale,
    );
  }
}
