import 'package:devmovic/domain/entities/anime_entity.dart';
import 'package:either_dart/either.dart';

import '../../core/error/failure.dart';

abstract class BaseAnimeRepository {
  Future<Either<Failure, List<Anime>>> getPremieresAnime();
  Future<Either<Failure, List<Anime>>> getBestAnime();
  Future<Either<Failure, List<Anime>>> getAiringAnime();
}
