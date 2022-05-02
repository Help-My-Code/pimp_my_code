import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:pimp_my_code/core/failure.dart';
import 'package:pimp_my_code/domain/usecases/program/execute_program_use_case.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/program.dart';

import '../../domain/services/program_service.dart';

class ApiProgramService extends ProgramService{

  final ProgramInteractor _client;

  ApiProgramService(this._client);

  @override
  Future<Either<Failure, String>> execute(String language, String stdin) async {
    try{
      final response = await _client.executeProgram(fields: {
        language: language,
        stdin: stdin,
      });
      return right(response.body['stdout']);
    }catch(e) {
      return left(ExecuteProgramFailure(tr('program_execution_failure')));
    }
  }
}