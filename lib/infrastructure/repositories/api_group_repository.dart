import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../domain/entities/group.dart';
import '../../domain/repositories/group_repository.dart';
import '../../domain/usecases/group/find_group_by_name.dart';
import '../converter/group_mapper.dart';
import '../source/api/command/group.dart';
import '../source/api/model/group/group_model.dart';

class ApiGroupRepository extends GroupRepository {
  final GroupInteractor _dataSource;
  final GroupMapper _groupMapper;

  ApiGroupRepository(this._dataSource, this._groupMapper);

  @override
  Future<Either<FindGroupByNameFailure, List<Group>>> getByName(
      {required String name}) async {
    final response = await _dataSource.getByName(name);
    final List<Map<String, dynamic>> apiGroups =
        List.from(response.body['groups']);
    return Right(
      apiGroups
          .map(ApiGroupModel.fromJson)
          .map(_groupMapper.mapApiGroupToGroup)
          .toList(),
    );
  }
}