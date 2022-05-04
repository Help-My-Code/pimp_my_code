import 'package:dartz/dartz.dart';

import '../entities/group.dart';
import '../usecases/group/find_group_by_name.dart';
import '../usecases/group/find_my_groups.dart';

abstract class GroupRepository {
  Future<Either<FindGroupByNameFailure, List<Group>>> getByName({required String name});

  Future<Either<FindMyGroupsFailure, List<Group>>> getByCreatorId({required String id});
}
