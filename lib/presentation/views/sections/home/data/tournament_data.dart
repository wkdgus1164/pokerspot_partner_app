import 'package:pokerspot_partner_app/presentation/views/sections/home/models/tournament_model.dart';

List<TournamentItemProps> tournamentList = [
  TournamentItemProps(
    isPlaying: true,
    tournamentType: TournamentType.seed,
    isToday: true,
    isLive: true,
    isAvailable: true,
  ),
  TournamentItemProps(
    isPlaying: false,
    tournamentType: TournamentType.daily,
    isToday: false,
    isLive: false,
    isAvailable: false,
  ),
  TournamentItemProps(
    isPlaying: true,
    tournamentType: TournamentType.daily,
    isToday: false,
    isLive: true,
    isAvailable: true,
  ),
];
