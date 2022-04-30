enum Confidentiality {
  public,
  private,
}

extension ConfidentialityExtension on Confidentiality {
  String get string {
    switch (this) {
      case Confidentiality.public:
        return 'public';
      case Confidentiality.private:
        return 'private';
    }
  }
}
