enum Status {
  pendingInvit,
  accepted,
  refused,
}

extension StatusExtension on Status {
  String get string {
    switch (this) {
      case Status.pendingInvit:
        return 'pending_invit';
      case Status.accepted:
        return 'accepted';
      case Status.refused:
        return 'refused';
    }
  }
}
