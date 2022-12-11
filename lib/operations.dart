import 'package:cloud_firestore/cloud_firestore.dart';

var db = FirebaseFirestore.instance;
Future<void> uploadingData(String _productName, String _productPrice,
    String _imageUrl, bool _isFavourite) async {
  await db.collection("products").add({
    'productName': _productName,
    'productPrice': _productPrice,
    'imageUrl': _imageUrl,
    'isFavourite': _isFavourite,
  });
}

Future<void> editProduct(bool _isFavourite, String id) async {
  await db
      .collection("products")
      .doc(id)
      .update({"isFavourite": !_isFavourite});
}

Future<void> deleteProduct(DocumentSnapshot doc) async {
  await db.collection("products").doc(doc.id).delete();
}
