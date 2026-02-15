import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override 
  void onRequest(RequestOptions options, RequestInterceptorHandler handler){
    if(!options.path.contains("auth")){
      options.queryParameters["userId"] = "xyz";
    }

    options.headers["token"] = "xyz";

    if(options.headers["refreshToken"] == null){
      // whatever the operation that we need to perform here
      // DioClient.dio.lock();
      Dio tokenDio = Dio();
      tokenDio.get('/token').then((d){
        options.headers["refreshToken"] = d.data['data']['token'];
        handler.next(options);
      }).catchError((err, StackTrace){
        handler.reject(err, true);
      }).whenComplete((){
        // do the dio unlock
        // DioClient.dio.unlock();
      });
    }

    // forward the request
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if(response.statusCode == 200){

    } else {

    }

    if(response.requestOptions.baseUrl.contains("secret")){

    }

    // forward the response
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch(err.type){
      case DioExceptionType.connectionTimeout: 
        {}
        break;
      case DioExceptionType.receiveTimeout:
        {}
        break;
      case DioExceptionType.sendTimeout:
        {}
        break;
      case DioExceptionType.cancel:
        {}
        break;
      case DioExceptionType.badResponse:
        {}
        break;
      case DioExceptionType.badCertificate:
        {}
        break;
      case DioExceptionType.connectionError: 
        {}
        break;
      case DioExceptionType.unknown:
        {}
        break;
    }

    return super.onError(err, handler);
  }
}