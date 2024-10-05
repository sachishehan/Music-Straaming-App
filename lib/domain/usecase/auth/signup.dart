import 'package:dartz/dartz.dart';
import 'package:sportify/core/usecase/usecase.dart';
import 'package:sportify/data/models/auth/create_user_req.dart';
import 'package:sportify/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SignupUseCase implements UseCase<Either,CreateUserReq> {


  @override
  Future<Either> call({CreateUserReq ? params}) async {
    return sl<AuthRepository>().signup(params!);
  }

}