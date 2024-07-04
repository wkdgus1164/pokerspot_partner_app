// ignore_for_file: constant_identifier_names

enum GameType {
  DAILY('데일리 토너'),
  SEED('시드권 토너'),
  GTD('GTD 토너'),
  ALL('전체'),
  ;

  const GameType(this.kr);
  final String kr;
}

enum EventType {
  NORMAL('일반'),
  FIRST_GAME('첫 게임'),
  ;

  const EventType(this.kr);
  final String kr;
}

enum OperationStatus {
  ALL('전체'),
  OPEN('운영 중'),
  ;

  const OperationStatus(this.kr);
  final String kr;
}
