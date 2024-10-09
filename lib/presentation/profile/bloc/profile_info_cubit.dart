import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportify/domain/usecase/auth/get_user.dart';
import 'package:sportify/presentation/profile/bloc/profile_info_state.dart';
import 'package:sportify/service_locator.dart';

class ProfileInfoCubit extends Cubit<ProfileInfoState> {

  ProfileInfoCubit() : super (ProfileInfoLoading());

  Future<void> getUser() async {

    var user = await sl<GetUserUseCase>().call();

    user.fold(
      (l){
        emit(
          ProfileInfoFailure()
        );
      }, 
      (userEntity) {
        emit(
          ProfileInfoLoaded(userEntity: userEntity)
        );
      }
    );
  }
}