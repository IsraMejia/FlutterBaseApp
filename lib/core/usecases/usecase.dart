import 'package:baseapp/core/error/failures.dart';
import 'package:dartz/dartz.dart'; // Opcional si usas dartz, si no, usa un result wrapper propio

// Definición genérica: Type es el retorno exitoso, Params son los parámetros
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}