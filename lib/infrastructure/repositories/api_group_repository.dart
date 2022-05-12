import 'package:dartz/dartz.dart';

import '../../domain/entities/group.dart';
import '../../domain/repositories/group_repository.dart';
import '../../domain/usecases/group/find_group_by_id.dart';
import '../../domain/usecases/group/find_group_by_name.dart';
import '../../domain/usecases/group/find_my_groups.dart';
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

  @override
  Future<Either<FindGroupByIdFailure, Group>> getById({required String id}) async {
    final response = await _dataSource.getById(id);
    final Map<String, dynamic> apiGroup = response.body['group'];
    return Right(
        _groupMapper.mapApiGroupToGroup(ApiGroupModel.fromJson(apiGroup)),
    );
  }

  @override
  Future<Either<FindMyGroupsFailure, List<Group>>> getByCreatorId(
      {required String id}) async {
    final response = await _dataSource.getByCreatorId(id);
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
