import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/usecases/content/get_following_publication.dart';

import '../../domain/entities/content.dart';

part 'retrieve_content_state.dart';
part 'retrieve_content_cubit.freezed.dart';

class RetrieveContentCubit extends Cubit<RetrieveContentState> {
  RetrieveContentCubit() : super(const RetrieveContentState.initial());

  void loadPublication() async {
    emit(const RetrieveContentState.loading());
    List<Content> publications = await GetFollowingPublicationUseCase();
    emit(RetrieveContentState.loaded(publications));
  }
}
