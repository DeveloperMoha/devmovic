import '../network/error_msg_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;
  ServerException({
    required this.errorMessageModel,
  });
}

class LocalDataBaseException implements Exception {
  final String msg;
  LocalDataBaseException({
    required this.msg,
  });
}
