import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../entities/group.dart';
import '../usecases/group/find_group_by_name.dart';

abstract class GroupRepository {
  Future<Either<FindGroupByNameFailure, List<Group>>> getByName({required String name});
}
