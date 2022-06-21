import 'package:cloud_firestore/cloud_firestore.dart';

class FireBaseServices{
  final CollectionReference homeBannerImages = FirebaseFirestore.instance.collection('HomeBanner');
  final CollectionReference brandHighlight = FirebaseFirestore.instance.collection('brandAd');

  Future<QuerySnapshot<Object?>> getBanners() async {
    var value = await homeBannerImages.get();
    return value;
  }

  Future<QuerySnapshot<Object?>> getBrandHighlight() async {
    var value = await brandHighlight.get();
    return value;
  }
}