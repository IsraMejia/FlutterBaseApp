 

// 1. EL CONTRATO (Abstract class)
import 'package:baseapp/features/baseapp/data/models/base_model.dart';

abstract class BaseAppRemoteDataSource {
  Future<BaseModel> fetchData();
}

// 2. LA IMPLEMENTACIÓN
class BaseAppRemoteDataSourceImpl implements BaseAppRemoteDataSource {
  // Aquí inyectaríamos el HttpClientService (Dio)
  // final HttpClientService client;
  // BaseAppRemoteDataSourceImpl({required this.client});
  
  BaseAppRemoteDataSourceImpl();

  @override
  Future<BaseModel> fetchData() async {
    // Simulación de respuesta de API
    await Future.delayed(const Duration(seconds: 1));
    
    // Retornamos el Modelo, NO la entidad directamente
    return BaseModel(id: '123', title: 'Data from API');
  }
}