import 'package:dio/dio.dart';

abstract class ResponseState<T> {
  final T? data;
  final DioException? error;

  ResponseState({this.data, this.error});
}

class RespSuccess<T> extends ResponseState<T> {
  RespSuccess(T data) : super(data: data);
}

class RespFailed<T> extends ResponseState<T> {
  RespFailed(DioException error) : super(error: error);
}
