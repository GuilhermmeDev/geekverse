import '../database.dart';

class ImagensTable extends SupabaseTable<ImagensRow> {
  @override
  String get tableName => 'imagens';

  @override
  ImagensRow createRow(Map<String, dynamic> data) => ImagensRow(data);
}

class ImagensRow extends SupabaseDataRow {
  ImagensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ImagensTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get imagens => getField<String>('imagens');
  set imagens(String? value) => setField<String>('imagens', value);
}
