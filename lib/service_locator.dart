import 'package:get_it/get_it.dart';
import 'package:sportify/data/repository/auth/auth.dart';
import 'package:sportify/data/repository/auth/auth_repository_impl.dart';
import 'package:sportify/data/repository/song/song.dart';
import 'package:sportify/data/sources/auth/auth_firebase_service.dart';
import 'package:sportify/data/sources/song/song_firbase_service.dart';
import 'package:sportify/domain/repository/auth/auth.dart';
import 'package:sportify/domain/usecase/auth/sigin.dart';
import 'package:sportify/domain/usecase/auth/signup.dart';
import 'package:sportify/domain/usecase/song/add_or_remove_favorite_song.dart';
import 'package:sportify/domain/usecase/song/get_favorite_songs.dart';
import 'package:sportify/domain/usecase/song/get_news_songs.dart';
import 'package:sportify/domain/usecase/song/get_play_list.dart';
import 'package:sportify/domain/usecase/song/is_favorite_song.dart';
import 'package:spotify/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repository/auth/auth.dart';
import 'package:spotify/domain/usecases/auth/get_user.dart';

import 'data/repository/song/song_repository_impl.dart';
import 'data/sources/song/song_firebase_service.dart';
import 'domain/repository/song/song.dart';
import 'domain/usecases/auth/sigin.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
 
 
 sl.registerSingleton<AuthFirebaseService>(
  AuthFirebaseServiceImpl()
 );

 sl.registerSingleton<SongFirebaseService>(
  SongFirebaseServiceImpl()
 );
 

 sl.registerSingleton<AuthRepository>(
  AuthRepositoryImpl()
 );

 sl.registerSingleton<SongsRepository>(
  SongRepositoryImpl()
 );



 sl.registerSingleton<SignupUseCase>(
  SignupUseCase()
 );

 sl.registerSingleton<SigninUseCase>(
  SigninUseCase()
 );

 sl.registerSingleton<GetNewsSongsUseCase>(
  GetNewsSongsUseCase()
 );

 sl.registerSingleton<GetPlayListUseCase>(
  GetPlayListUseCase()
 );

 sl.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
  AddOrRemoveFavoriteSongUseCase()
 );

 sl.registerSingleton<IsFavoriteSongUseCase>(
  IsFavoriteSongUseCase()
 );

 sl.registerSingleton<GetUserUseCase>(
  GetUserUseCase()
 );

 sl.registerSingleton<GetFavoriteSongsUseCase>(
  GetFavoriteSongsUseCase()
 );
 
}