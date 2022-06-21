import 'package:cloud_firestore/cloud_firestore.dart';

class FireBaseServices{
  final CollectionReference homeBannerImages = FirebaseFirestore.instance.collection('HomeBanner');

  Future<QuerySnapshot<Object?>> getBanners() async {
    var value = await homeBannerImages.get();
    return value;
  }
}