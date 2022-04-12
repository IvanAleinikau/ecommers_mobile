import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommers_mobile/app/common/enums/label.dart';
import 'package:ecommers_mobile/core/model/accessories_model.dart';

class AccessoriesRepository {
  final _collection = FirebaseFirestore.instance.collection('accessories');
  late List<Accessories> _list = [];

  Future<Label> create({required Accessories accessories}) async {
    try {
      await _collection.add({
        'title': accessories.title,
        'cost': accessories.cost,
        'imageUrl': accessories.imageUrl,
        'subtitle': accessories.subtitle,
        'description': accessories.description,
      });
      return Label.successfully;
    } catch (_) {
      return Label.error;
    }
  }

  Future<List<Accessories>> read() async {
    _list = [];
    final collection = await _collection.get();
    for (var doc in collection.docs) {
      Accessories item = Accessories(
        id: doc.id,
        title: doc['title'],
        cost: doc['cost'],
        subtitle: doc['subtitle'],
        imageUrl: doc['imageUrl'],
        description: doc['description'],
      );
      _list.add(item);
    }
    return _list;
  }

  Future<void> update(Accessories accessories) async {
    await _collection.doc(accessories.id).update({
      'title': accessories.title,
      'subtitle': accessories.subtitle,
      'cost': accessories.cost,
      'imageUrl': accessories.imageUrl,
      'description': accessories.description,
    });
  }

  Future<void> delete(String id) async {
    await _collection.doc(id).delete();
  }
}
