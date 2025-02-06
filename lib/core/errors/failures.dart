import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  // ignore: avoid_types_as_parameter_names
  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate received from server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection or server is down');

      case DioExceptionType.unknown:
      default:
        return ServerFailure('Unexpected error occurred: ${dioError.message}');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request not found , please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error , please try later');
    } else {
      return ServerFailure('opps there was an erron , please try again');
    }
  }
}
