import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/repositories/content_repository.dart';

import '../../domain/entities/content/content.dart';

part 'retrieve_publication_state.dart';
part 'retrieve_publication_cubit.freezed.dart';

class RetrievePublicationCubit extends Cubit<RetrievePublicationState> {
  RetrievePublicationCubit(this._contentRepository)
      : super(const RetrievePublicationState.initial());
  final ContentRepository _contentRepository;

  loadPublication(String? id) async {
    if (id == null) {
      throw ArgumentError.notNull('id');
    }
    emit(const RetrievePublicationState.loading());
    final publication = await _contentRepository.getContent(id);
    publication.fold(
      (l) => emit(const RetrievePublicationState.failure()),
      (r) => emit(RetrievePublicationState.loaded(r)),
    );
  }
}
