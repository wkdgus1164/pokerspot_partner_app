enum TournamentType {
  daily('daily'),
  seed('seed'),
  gtd('gtd'),
  ;

  const TournamentType(this.tournamentType);

  final String tournamentType;
}

class TournamentItemProps {
  final bool isPlaying;
  final TournamentType tournamentType;
  final bool isToday;
  final bool isLive;
  final bool isAvailable;

  TournamentItemProps({
    required this.isPlaying,
    required this.tournamentType,
    required this.isToday,
    required this.isLive,
    required this.isAvailable,
  });
}
