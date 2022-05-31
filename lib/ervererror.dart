import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class ServerError implements Exception {
  int? _errorCode = 200;
  String _errorMessage = "";

  ServerError.withError({required DioError? error}) {
    _handleError(error!);
  }

  getErrorCode() {
    return _errorCode;
  }

  getErrorMessage() {
    return _errorMessage;
  }

  _handleError(DioError error) async {
    _errorCode = error.response!.statusCode!;
    print(error);
    print(error.message);
    switch (error.type) {
      case DioErrorType.cancel:
        _errorMessage = "request was cancelled  ";
        break;
      case DioErrorType.connectTimeout:
        _errorMessage = "connection timeout  ";
        break;
      case DioErrorType.other:
        _errorMessage = "connection failed due to internet connection  ";
        break;
      case DioErrorType.receiveTimeout:
        _errorMessage = "Receive timeout in connection";
        break;
      case DioErrorType.response:
        if (error.response!.statusCode == 401) {
          print("come here-->");
          _errorMessage = "";
      
        } else {
          _errorMessage = "Internal server Error";
        }

        break;

      case DioErrorType.sendTimeout:
        _errorMessage = "Receive timeout in send request";
        break;
    }
    return _errorMessage;
  }

 
}
