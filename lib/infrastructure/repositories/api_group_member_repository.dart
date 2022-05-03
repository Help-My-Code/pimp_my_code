import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/group_member.dart';
import 'package:pimp_my_code/infrastructure/source/api/model/group_member/group_member_model.dart';

import '../../core/failure.dart';
import '../../domain/entities/group.dart';
import '../../domain/entities/group_member.dart';
import '../../domain/repositories/group_member_repository.dart';
import '../../domain/repositories/group_repository.dart';
import '../../domain/usecases/group/find_group_by_name.dart';
import '../../domain/usecases/group/find_member_groups.dart';
import '../../domain/usecases/group/find_my_groups.dart';
import '../converter/group_mapper.dart';
import '../converter/group_member_mapper.dart';
import '../source/api/command/group.dart';
import '../source/api/model/group/group_model.dart';

class ApiGroupMemberRepository extends GroupMemberRepository {
  final GroupMemberInteractor _dataSource;
  final GroupMemberMapper _groupMemberMapper;

  ApiGroupMemberRepository(this._dataSource, this._groupMemberMapper);

  @override
  Future<Either<FindGroupMembersFailure, List<GroupMember>>> getByMemberId(
      {required String id}) async {
    final response = await _dataSource.getByMemberId(id);
    final List<Map<String, dynamic>> apiGroupMembers =
        List.from(response.body['groupMember']);
    print(apiGroupMembers);
    return Right(
      apiGroupMembers
          .map(ApiGroupMemberModel.fromJson)
          .map(_groupMemberMapper.mapApiGroupMemberToGroupMember)
          .toList(),
    );
  }
}
