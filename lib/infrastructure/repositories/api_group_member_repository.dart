import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/group_member.dart';
import 'package:pimp_my_code/infrastructure/source/api/model/group_member/group_member_model.dart';

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
}
