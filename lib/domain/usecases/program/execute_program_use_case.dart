import 'package:dartz/dartz.dart';
import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../services/program_service.dart';

class ExecuteProgramUseCase extends UseCase<String, ExecuteProgramParams> {
  final ProgramService _programService;

  ExecuteProgramUseCase(this._programService);

  @override
  Future<Either<Failure, String>> call(ExecuteProgramParams params) {
    return _programService.execute(params.language, params.stdin);
  }
}

class ExecuteProgramParams {
  String language, stdin;

  ExecuteProgramParams(this.language, this.stdin);
}

class ExecuteProgramFailure extends Failure {
  String message;

  ExecuteProgramFailure(this.message);
}
