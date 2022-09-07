// Mocks generated by Mockito 5.3.0 from annotations
// in ibadah_apps/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dio/dio.dart' as _i3;
import 'package:fpdart/fpdart.dart' as _i2;
import 'package:ibadah_apps/common/failure.dart' as _i6;
import 'package:ibadah_apps/data/datasources/surah_remote_data_source.dart'
    as _i8;
import 'package:ibadah_apps/data/models/surah_model.dart' as _i9;
import 'package:ibadah_apps/domain/entities/surah.dart' as _i7;
import 'package:ibadah_apps/domain/repositories/surah_repository.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeBaseOptions_1 extends _i1.SmartFake implements _i3.BaseOptions {
  _FakeBaseOptions_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeHttpClientAdapter_2 extends _i1.SmartFake
    implements _i3.HttpClientAdapter {
  _FakeHttpClientAdapter_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeTransformer_3 extends _i1.SmartFake implements _i3.Transformer {
  _FakeTransformer_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeInterceptors_4 extends _i1.SmartFake implements _i3.Interceptors {
  _FakeInterceptors_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeResponse_5<T> extends _i1.SmartFake implements _i3.Response<T> {
  _FakeResponse_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [SurahRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockSurahRepository extends _i1.Mock implements _i4.SurahRepository {
  MockSurahRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.Either<_i6.Failure, List<_i7.Surah>>> getSurah() =>
      (super.noSuchMethod(Invocation.method(#getSurah, []),
              returnValue:
                  _i5.Future<_i2.Either<_i6.Failure, List<_i7.Surah>>>.value(
                      _FakeEither_0<_i6.Failure, List<_i7.Surah>>(
                          this, Invocation.method(#getSurah, []))))
          as _i5.Future<_i2.Either<_i6.Failure, List<_i7.Surah>>>);
}

/// A class which mocks [SurahRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockSurahRemoteDataSource extends _i1.Mock
    implements _i8.SurahRemoteDataSource {
  MockSurahRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<List<_i9.SurahModel>> getSurah() =>
      (super.noSuchMethod(Invocation.method(#getSurah, []),
              returnValue:
                  _i5.Future<List<_i9.SurahModel>>.value(<_i9.SurahModel>[]))
          as _i5.Future<List<_i9.SurahModel>>);
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDio extends _i1.Mock implements _i3.Dio {
  MockDio() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.BaseOptions get options => (super.noSuchMethod(
          Invocation.getter(#options),
          returnValue: _FakeBaseOptions_1(this, Invocation.getter(#options)))
      as _i3.BaseOptions);
  @override
  set options(_i3.BaseOptions? _options) =>
      super.noSuchMethod(Invocation.setter(#options, _options),
          returnValueForMissingStub: null);
  @override
  _i3.HttpClientAdapter get httpClientAdapter =>
      (super.noSuchMethod(Invocation.getter(#httpClientAdapter),
              returnValue: _FakeHttpClientAdapter_2(
                  this, Invocation.getter(#httpClientAdapter)))
          as _i3.HttpClientAdapter);
  @override
  set httpClientAdapter(_i3.HttpClientAdapter? _httpClientAdapter) => super
      .noSuchMethod(Invocation.setter(#httpClientAdapter, _httpClientAdapter),
          returnValueForMissingStub: null);
  @override
  _i3.Transformer get transformer =>
      (super.noSuchMethod(Invocation.getter(#transformer),
              returnValue:
                  _FakeTransformer_3(this, Invocation.getter(#transformer)))
          as _i3.Transformer);
  @override
  set transformer(_i3.Transformer? _transformer) =>
      super.noSuchMethod(Invocation.setter(#transformer, _transformer),
          returnValueForMissingStub: null);
  @override
  _i3.Interceptors get interceptors =>
      (super.noSuchMethod(Invocation.getter(#interceptors),
              returnValue:
                  _FakeInterceptors_4(this, Invocation.getter(#interceptors)))
          as _i3.Interceptors);
  @override
  void close({bool? force = false}) =>
      super.noSuchMethod(Invocation.method(#close, [], {#force: force}),
          returnValueForMissingStub: null);
  @override
  _i5.Future<_i3.Response<T>> get<T>(String? path,
          {Map<String, dynamic>? queryParameters,
          _i3.Options? options,
          _i3.CancelToken? cancelToken,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#get, [
            path
          ], {
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#get, [
                path
              ], {
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> getUri<T>(Uri? uri,
          {_i3.Options? options,
          _i3.CancelToken? cancelToken,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#getUri, [
            uri
          ], {
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#getUri, [
                uri
              ], {
                #options: options,
                #cancelToken: cancelToken,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> post<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i3.Options? options,
          _i3.CancelToken? cancelToken,
          _i3.ProgressCallback? onSendProgress,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#post, [
            path
          ], {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#post, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> postUri<T>(Uri? uri,
          {dynamic data,
          _i3.Options? options,
          _i3.CancelToken? cancelToken,
          _i3.ProgressCallback? onSendProgress,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#postUri, [
            uri
          ], {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#postUri, [
                uri
              ], {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> put<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i3.Options? options,
          _i3.CancelToken? cancelToken,
          _i3.ProgressCallback? onSendProgress,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#put, [
            path
          ], {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#put, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> putUri<T>(Uri? uri,
          {dynamic data,
          _i3.Options? options,
          _i3.CancelToken? cancelToken,
          _i3.ProgressCallback? onSendProgress,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#putUri, [
            uri
          ], {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#putUri, [
                uri
              ], {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> head<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i3.Options? options,
          _i3.CancelToken? cancelToken}) =>
      (super.noSuchMethod(
          Invocation.method(#head, [
            path
          ], {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#head, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> headUri<T>(Uri? uri,
          {dynamic data, _i3.Options? options, _i3.CancelToken? cancelToken}) =>
      (super.noSuchMethod(Invocation.method(#headUri, [uri], {#data: data, #options: options, #cancelToken: cancelToken}),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#headUri, [
                uri
              ], {
                #data: data,
                #options: options,
                #cancelToken: cancelToken
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> delete<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i3.Options? options,
          _i3.CancelToken? cancelToken}) =>
      (super.noSuchMethod(
          Invocation.method(#delete, [
            path
          ], {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#delete, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> deleteUri<T>(Uri? uri,
          {dynamic data, _i3.Options? options, _i3.CancelToken? cancelToken}) =>
      (super.noSuchMethod(Invocation.method(#deleteUri, [uri], {#data: data, #options: options, #cancelToken: cancelToken}),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#deleteUri, [
                uri
              ], {
                #data: data,
                #options: options,
                #cancelToken: cancelToken
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> patch<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i3.Options? options,
          _i3.CancelToken? cancelToken,
          _i3.ProgressCallback? onSendProgress,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#patch, [
            path
          ], {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#patch, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> patchUri<T>(Uri? uri,
          {dynamic data,
          _i3.Options? options,
          _i3.CancelToken? cancelToken,
          _i3.ProgressCallback? onSendProgress,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#patchUri, [
            uri
          ], {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#patchUri, [
                uri
              ], {
                #data: data,
                #options: options,
                #cancelToken: cancelToken,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  void lock() => super.noSuchMethod(Invocation.method(#lock, []),
      returnValueForMissingStub: null);
  @override
  void unlock() => super.noSuchMethod(Invocation.method(#unlock, []),
      returnValueForMissingStub: null);
  @override
  void clear() => super.noSuchMethod(Invocation.method(#clear, []),
      returnValueForMissingStub: null);
  @override
  _i5.Future<_i3.Response<dynamic>> download(String? urlPath, dynamic savePath,
          {_i3.ProgressCallback? onReceiveProgress,
          Map<String, dynamic>? queryParameters,
          _i3.CancelToken? cancelToken,
          bool? deleteOnError = true,
          String? lengthHeader = r'content-length',
          dynamic data,
          _i3.Options? options}) =>
      (super.noSuchMethod(
          Invocation.method(#download, [
            urlPath,
            savePath
          ], {
            #onReceiveProgress: onReceiveProgress,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options
          }),
          returnValue:
              _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_5<dynamic>(
                  this,
                  Invocation.method(#download, [
                    urlPath,
                    savePath
                  ], {
                    #onReceiveProgress: onReceiveProgress,
                    #queryParameters: queryParameters,
                    #cancelToken: cancelToken,
                    #deleteOnError: deleteOnError,
                    #lengthHeader: lengthHeader,
                    #data: data,
                    #options: options
                  })))) as _i5.Future<_i3.Response<dynamic>>);
  @override
  _i5.Future<_i3.Response<dynamic>> downloadUri(Uri? uri, dynamic savePath,
          {_i3.ProgressCallback? onReceiveProgress,
          _i3.CancelToken? cancelToken,
          bool? deleteOnError = true,
          String? lengthHeader = r'content-length',
          dynamic data,
          _i3.Options? options}) =>
      (super.noSuchMethod(
          Invocation.method(#downloadUri, [
            uri,
            savePath
          ], {
            #onReceiveProgress: onReceiveProgress,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options
          }),
          returnValue:
              _i5.Future<_i3.Response<dynamic>>.value(_FakeResponse_5<dynamic>(
                  this,
                  Invocation.method(#downloadUri, [
                    uri,
                    savePath
                  ], {
                    #onReceiveProgress: onReceiveProgress,
                    #cancelToken: cancelToken,
                    #deleteOnError: deleteOnError,
                    #lengthHeader: lengthHeader,
                    #data: data,
                    #options: options
                  })))) as _i5.Future<_i3.Response<dynamic>>);
  @override
  _i5.Future<_i3.Response<T>> request<T>(String? path,
          {dynamic data,
          Map<String, dynamic>? queryParameters,
          _i3.CancelToken? cancelToken,
          _i3.Options? options,
          _i3.ProgressCallback? onSendProgress,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#request, [
            path
          ], {
            #data: data,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#request, [
                path
              ], {
                #data: data,
                #queryParameters: queryParameters,
                #cancelToken: cancelToken,
                #options: options,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> requestUri<T>(Uri? uri,
          {dynamic data,
          _i3.CancelToken? cancelToken,
          _i3.Options? options,
          _i3.ProgressCallback? onSendProgress,
          _i3.ProgressCallback? onReceiveProgress}) =>
      (super.noSuchMethod(
          Invocation.method(#requestUri, [
            uri
          ], {
            #data: data,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress
          }),
          returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
              this,
              Invocation.method(#requestUri, [
                uri
              ], {
                #data: data,
                #cancelToken: cancelToken,
                #options: options,
                #onSendProgress: onSendProgress,
                #onReceiveProgress: onReceiveProgress
              })))) as _i5.Future<_i3.Response<T>>);
  @override
  _i5.Future<_i3.Response<T>> fetch<T>(_i3.RequestOptions? requestOptions) =>
      (super.noSuchMethod(Invocation.method(#fetch, [requestOptions]),
              returnValue: _i5.Future<_i3.Response<T>>.value(_FakeResponse_5<T>(
                  this, Invocation.method(#fetch, [requestOptions]))))
          as _i5.Future<_i3.Response<T>>);
}
