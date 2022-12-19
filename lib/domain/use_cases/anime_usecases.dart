// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:devmovic/domain/repositories/base_anime_repository.dart';
import 'package:either_dart/either.dart';

import '../../core/error/failure.dart';
import '../entities/anime_entity.dart';

class AnimeUseCases {
  BaseAnimeRepository baseAnimeRepository;
  AnimeUseCases({
    required this.baseAnimeRepository,
  });

  Future<Either<Failure, List<Anime>>> getPremieresAnimeExecute() async {
    return await baseAnimeRepository.getPremieresAnime();
  }

  Future<Either<Failure, List<Anime>>> getBestAnimeExecute() async {
    return await baseAnimeRepository.getBestAnime();
  }

  Future<Either<Failure, List<Anime>>> getAiringAnimeExecute() async {
    return await baseAnimeRepository.getAiringAnime();
  }
}
