import '../entities/base_entity.dart';

abstract class BaseRepository {
  Future<BaseEntity> getData();
}