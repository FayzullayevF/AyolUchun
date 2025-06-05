import 'package:hive/hive.dart';
import 'categories_model.dart';

class CategoriesModelAdapter extends TypeAdapter<CategoriesModel> {
  @override
  final int typeId = 0;

  @override
  CategoriesModel read(BinaryReader reader) {
    return CategoriesModel(
      id: reader.readInt(),
      title: reader.readString(),
      icon: reader.readString(),
      totalCourses: reader.readInt(),
    );
  }

  @override
  void write(BinaryWriter writer, CategoriesModel obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.title);
    writer.writeString(obj.icon);
    writer.writeInt(obj.totalCourses);
  }
}
