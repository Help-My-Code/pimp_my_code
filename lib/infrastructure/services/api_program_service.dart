import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:pimp_my_code/core/failure.dart';
import 'package:pimp_my_code/domain/usecases/program/execute_program_use_case.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/program.dart';

import '../../domain/services/program_service.dart';
import 'dart:convert';

class ApiProgramService extends ProgramService{

  final ProgramInteractor _client;

  ApiProgramService(this._client);

  @override
  Future<Either<Failure, String>> execute(String language, String stdin) async {
    try{
      final response = await _client.execute(fields: {
        'language': language,
        'stdin': stdin,
      });
      return right(response.body['stdout']);
    }catch(_) {
      return left(ExecuteProgramFailure(tr('program_execution_failure')));
    }
  }
}

class Base64Converter {
  Codec<String, String> stringToBase64 = utf8.fuse(base64);

  String encrypt(String value) {
    return stringToBase64.encode(value); // dXNlcm5hbWU6cGFzc3dvcmQ=

  }
  String decrypt(String value) {
    return stringToBase64.decode(value);     // username:password

  }
}