part of 'update_content_bloc.dart';

@freezed
class UpdateContentEvent with _$UpdateContentEvent {
  const factory UpdateContentEvent.submit(String contentId) = _Submit;
  const factory UpdateContentEvent.updateTitle(String title) = _UpdateTitle;
  const factory UpdateContentEvent.updateContent(String content) =
      _UpdateContent;
  const factory UpdateContentEvent.loaded(Content content) = _Loaded;
}
