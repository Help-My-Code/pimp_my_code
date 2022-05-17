import 'package:dartz/dartz.dart';

import '../entities/enum/confidentiality.dart';
import '../entities/group.dart';
import '../usecases/group/create_group.dart';
import '../usecases/group/find_group_by_id.dart';
import '../usecases/group/find_group_by_name.dart';
import '../usecases/group/find_my_groups.dart';
import '../usecases/group/update_group.dart';

abstract class GroupRepository {
  Future<Either<FindGroupByNameFailure, List<Group>>> getByName(
      {required String name});

  Future<Either<FindGroupByIdFailure, Group>> getById({required String id});

  Future<Either<FindMyGroupsFailure, List<Group>>> getByCreatorId(
      {required String id});

  Future<Either<UpdateGroupFailed, UpdateGroupSuccess>> updateGroup(
      String groupId,
      String name,
      String description,
      String profilePictureURL,
      Confidentiality confidentiality);

  Future<Either<CreateGroupFailed, CreateGroupSuccess>> createGroup(
      String creatorId, String name);
}
