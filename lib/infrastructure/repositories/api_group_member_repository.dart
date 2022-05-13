import 'package:dartz/dartz.dart';
import '../../domain/usecases/group-member/create_group_member.dart';
import '../../domain/usecases/group-member/delete_group_member.dart';
import '../../domain/usecases/group-member/find_group_members_by_group_id.dart';
import '../source/api/command/group_member.dart';
import '../source/api/model/group_member/group_member_model.dart';

import '../../domain/entities/group_member.dart';
import '../../domain/repositories/group_member_repository.dart';
import '../../domain/usecases/group-member/find_group_members.dart';
import '../converter/group_member_mapper.dart';

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
    return Right(
      apiGroupMembers
          .map(ApiGroupMemberModel.fromJson)
          .map(_groupMemberMapper.mapApiGroupMemberToGroupMember)
          .toList(),
    );
  }

  @override
  Future<Either<FindGroupMembersByGroupIdFailure, List<GroupMember>>> getByGroupId(
      {required String id}) async {
    final response = await _dataSource.getByGroupId(id);
    final List<Map<String, dynamic>> apiGroupMembers =
    List.from(response.body['groupMember']);
    return Right(
      apiGroupMembers
          .map(ApiGroupMemberModel.fromJson)
          .map(_groupMemberMapper.mapApiGroupMemberToGroupMember)
          .toList(),
    );
  }

  @override
  Future<Either<CreateGroupMemberFailed, CreateGroupMemberSuccess>> createGroupMember(
      {required String userId, required String groupId}) async {
    try {
      await _dataSource.createGroupMember(fields: {
        'groupId': groupId,
        'memberId': userId,
      });
      return Right(CreateGroupMemberSuccess());
    } catch (e) {
      return Left(CreateGroupMemberFailed());
    }
  }

  @override
  Future<Either<DeleteGroupMemberFailed, DeleteGroupMemberSuccess>> deleteGroupMember(
      {required String userId, required String groupId}) async {
    try {
      await _dataSource.deleteGroupMember(fields: {
        'groupId': groupId,
        'memberId': userId,
      });
      return Right(DeleteGroupMemberSuccess());
    } catch (e) {
      return Left(DeleteGroupMemberFailed());
    }
  }
}
