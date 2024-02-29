import 'package:json_annotation/json_annotation.dart';

import 'dynamic_image.dart';
import 'product_list.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final String? productSeriesId;
  final String? productId;
  final dynamic productCode;
  final String? productName;
  final String? productImage;
  final String? productAbbreviateImage;
  final String? productDetailsImage;
  final String? productShareImage;
  final double? price;
  final String? issueNumber;
  final int? circulateNumber;
  final dynamic contractAddress;
  final dynamic chainMark;
  final String? creatorId;
  final String? creatorAvatar;
  final String? creatorNickName;
  final dynamic creatorWalletAddress;
  final String? creatorIntroduce;
  final String? brandPartyId;
  final String? brandPartyAvatar;
  final String? brandPartyNickName;
  final String? brandPartyIntroduce;
  final String? supervisorId;
  final String? supervisorAvatar;
  final String? supervisorNickName;
  final String? supervisorIntroduce;
  final String? productDescription;
  final dynamic holderId;
  final dynamic holderAvatar;
  final dynamic holderNickName;
  final dynamic holderWalletAddress;
  final dynamic status;
  final dynamic synthesisStatus;
  final int? activityStatus;
  final dynamic transferType;
  final dynamic allowSellTime;
  final dynamic isResale;
  final int? onSales;
  final int? stock;
  final dynamic isRestrictionSell;
  final dynamic payWay;
  final dynamic isProductBatchTransfer;
  final dynamic isUserBatchTransfer;
  final int? type;
  final int? isBoxPrize;
  final int? notOpenNumber;
  final List<ProductList>? productList;
  final DynamicImage? dynamicImage;

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
  });

  @override
  String toString() {
    return 'Data(productSeriesId: $productSeriesId, productId: $productId, productCode: $productCode, productName: $productName, productImage: $productImage, productAbbreviateImage: $productAbbreviateImage, productDetailsImage: $productDetailsImage, productShareImage: $productShareImage, price: $price, issueNumber: $issueNumber, circulateNumber: $circulateNumber, contractAddress: $contractAddress, chainMark: $chainMark, creatorId: $creatorId, creatorAvatar: $creatorAvatar, creatorNickName: $creatorNickName, creatorWalletAddress: $creatorWalletAddress, creatorIntroduce: $creatorIntroduce, brandPartyId: $brandPartyId, brandPartyAvatar: $brandPartyAvatar, brandPartyNickName: $brandPartyNickName, brandPartyIntroduce: $brandPartyIntroduce, supervisorId: $supervisorId, supervisorAvatar: $supervisorAvatar, supervisorNickName: $supervisorNickName, supervisorIntroduce: $supervisorIntroduce, productDescription: $productDescription, holderId: $holderId, holderAvatar: $holderAvatar, holderNickName: $holderNickName, holderWalletAddress: $holderWalletAddress, status: $status, synthesisStatus: $synthesisStatus, activityStatus: $activityStatus, transferType: $transferType, allowSellTime: $allowSellTime, isResale: $isResale, onSales: $onSales, stock: $stock, isRestrictionSell: $isRestrictionSell, payWay: $payWay, isProductBatchTransfer: $isProductBatchTransfer, isUserBatchTransfer: $isUserBatchTransfer, type: $type, isBoxPrize: $isBoxPrize, notOpenNumber: $notOpenNumber, productList: $productList, dynamicImage: $dynamicImage)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? productSeriesId,
    String? productId,
    dynamic productCode,
    String? productName,
    String? productImage,
    String? productAbbreviateImage,
    String? productDetailsImage,
    String? productShareImage,
    double? price,
    String? issueNumber,
    int? circulateNumber,
    dynamic contractAddress,
    dynamic chainMark,
    String? creatorId,
    String? creatorAvatar,
    String? creatorNickName,
    dynamic creatorWalletAddress,
    String? creatorIntroduce,
    String? brandPartyId,
    String? brandPartyAvatar,
    String? brandPartyNickName,
    String? brandPartyIntroduce,
    String? supervisorId,
    String? supervisorAvatar,
    String? supervisorNickName,
    String? supervisorIntroduce,
    String? productDescription,
    dynamic holderId,
    dynamic holderAvatar,
    dynamic holderNickName,
    dynamic holderWalletAddress,
    dynamic status,
    dynamic synthesisStatus,
    int? activityStatus,
    dynamic transferType,
    dynamic allowSellTime,
    dynamic isResale,
    int? onSales,
    int? stock,
    dynamic isRestrictionSell,
    dynamic payWay,
    dynamic isProductBatchTransfer,
    dynamic isUserBatchTransfer,
    int? type,
    int? isBoxPrize,
    int? notOpenNumber,
    List<ProductList>? productList,
    DynamicImage? dynamicImage,
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
    );
  }
}
