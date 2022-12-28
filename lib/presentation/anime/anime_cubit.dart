import 'package:devmovic/data/data_source/anime_remote_datasource.dart';
import 'package:devmovic/data/data_source/base_remote_datasource.dart';
import 'package:devmovic/data/repository_impl/anime_repository.dart';
import 'package:devmovic/domain/entities/anime_entity.dart';
import 'package:devmovic/domain/repositories/base_anime_repository.dart';
import 'package:devmovic/presentation/anime/anime_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/constants_manager.dart';
import '../../domain/use_cases/anime_usecases.dart';

class AnimeCubit extends Cubit<AnimeStates> {
  AnimeCubit(super.initialState) {
    getAllAnime();
  }

  List<Anime> premierAnime = [];
  List<Anime> bestAnime = [];
  List<Anime> airingAnime = [];

  void getPremieresAnimeExecute() async {
    BaseAnimeRemoteDataSource baseAnimeRemoteDataSource = AnimeDataSource();
    BaseAnimeRepository baseAnimeRepository =
        AnimeRepository(baseAnimeRemoteDataSource: baseAnimeRemoteDataSource);
    final premier =
        await AnimeUseCases(baseAnimeRepository: baseAnimeRepository)
            .getPremieresAnimeExecute();
    premier.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedAnime());
    }, (right) {
      premierAnime.clear();
      print("righttttttttttttttttt");
      for (Anime anime in right) {
        premierAnime.add(
          Anime(title: anime.title, year: anime.year, poster: anime.poster),
        );
      }
      emit(LoadedAnime());
    });
  }

  void getBestAnimeExecute() async {
    BaseAnimeRemoteDataSource baseAnimeRemoteDataSource = AnimeDataSource();
    BaseAnimeRepository baseAnimeRepository =
        AnimeRepository(baseAnimeRemoteDataSource: baseAnimeRemoteDataSource);
    final best = await AnimeUseCases(baseAnimeRepository: baseAnimeRepository)
        .getBestAnimeExecute();
    best.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedAnime());
    }, (right) {
      bestAnime.clear();
      print("righttttttttttttttttt");
      for (Anime anime in right) {
        bestAnime.add(
          Anime(title: anime.title, year: anime.year, poster: anime.poster),
        );
      }
      emit(LoadedAnime());
    });
  }

  void getAiringAnimeExecute() async {
    BaseAnimeRemoteDataSource baseAnimeRemoteDataSource = AnimeDataSource();
    BaseAnimeRepository baseAnimeRepository =
        AnimeRepository(baseAnimeRemoteDataSource: baseAnimeRemoteDataSource);
    final airing = await AnimeUseCases(baseAnimeRepository: baseAnimeRepository)
        .getAiringAnimeExecute();
    airing.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedAnime());
    }, (right) {
      airingAnime.clear();
      print("righttttttttttttttttt");
      for (Anime anime in right) {
        airingAnime.add(
          Anime(title: anime.title, year: anime.year, poster: anime.poster),
        );
      }
      emit(LoadedAnime());
    });
  }

  void getAllAnime() async {
    BaseAnimeRemoteDataSource baseAnimeRemoteDataSource = AnimeDataSource();
    BaseAnimeRepository baseAnimeRepository =
        AnimeRepository(baseAnimeRemoteDataSource: baseAnimeRemoteDataSource);
    final premier =
        await AnimeUseCases(baseAnimeRepository: baseAnimeRepository)
            .getPremieresAnimeExecute();
    premier.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedAnime());
    }, (right) {
      premierAnime.clear();
      print("righttttttttttttttttt");
      for (Anime anime in right) {
        premierAnime.add(
          Anime(title: anime.title, year: anime.year, poster: anime.poster),
        );
      }
    });

    final best = await AnimeUseCases(baseAnimeRepository: baseAnimeRepository)
        .getBestAnimeExecute();
    best.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedAnime());
    }, (right) {
      bestAnime.clear();
      print("righttttttttttttttttt");
      for (Anime anime in right) {
        bestAnime.add(
          Anime(title: anime.title, year: anime.year, poster: anime.poster),
        );
      }
    });

    final airing = await AnimeUseCases(baseAnimeRepository: baseAnimeRepository)
        .getAiringAnimeExecute();
    airing.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedAnime());
    }, (right) {
      airingAnime.clear();
      print("righttttttttttttttttt");
      for (Anime anime in right) {
        airingAnime.add(
          Anime(title: anime.title, year: anime.year, poster: anime.poster),
        );
      }
    });
    print("poster link:${AppConstants.getAnimePoster(premierAnime[0].poster)}");

    emit(LoadedAnime());
  }
}
