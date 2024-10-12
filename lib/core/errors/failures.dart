import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessege;

  const Failure(this.errMessege);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessege);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connectionTimeout');

      case DioExceptionType.sendTimeout:
        return ServerFailure('sendTimeout');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('receiveTimeout');

      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('cancel');

      case DioExceptionType.connectionError:
        return ServerFailure('connectionError');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error, try again!');
      default:
        return ServerFailure('oops there was an error, try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        response['error']['message'],
      );
    } else if (statusCode == 404) {
      return ServerFailure('Request not found..try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error , try later');
    } else {
      return ServerFailure('oops there was an error, try again');
    }
  }
}
