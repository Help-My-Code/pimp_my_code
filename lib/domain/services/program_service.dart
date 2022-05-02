

import 'package:dartz/dartz.dart';

import '../../core/failure.dart';

abstract class ProgramService {
  Future<Either<Failure, String>> execute(String language, String stdin);
}