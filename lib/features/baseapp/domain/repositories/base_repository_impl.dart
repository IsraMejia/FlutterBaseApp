import '../../domain/entities/base_entity.dart';
import '../../domain/repositories/base_repository.dart';
import '../datasources/baseapp_remote_data_source.dart';

class BaseRepositoryImpl implements BaseRepository {
  // Usamos el contrato (abstract), no la implementación directa para mantener desacople
  final BaseAppRemoteDataSource remoteDataSource;

  BaseRepositoryImpl({required this.remoteDataSource});

  @override
  Future<BaseEntity> getData() async {
    // Aquí el método fetchData ya existe gracias al contrato
    final model = await remoteDataSource.fetchData();
    return model;
  }
}