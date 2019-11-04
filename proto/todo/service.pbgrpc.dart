///
//  Generated code. Do not modify.
//  source: proto/todo/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class ToDoServiceClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$0.ListReq, $0.ListResp>(
      '/todo.ToDoService/List',
      ($0.ListReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListResp.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$0.GetReq, $0.ToDo>(
      '/todo.ToDoService/Get',
      ($0.GetReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ToDo.fromBuffer(value));
  static final _$create = $grpc.ClientMethod<$0.CreateReq, $0.ToDo>(
      '/todo.ToDoService/Create',
      ($0.CreateReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ToDo.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.UpdateReq, $0.ToDo>(
      '/todo.ToDoService/Update',
      ($0.UpdateReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ToDo.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.DeleteReq, $0.DeleteResp>(
      '/todo.ToDoService/Delete',
      ($0.DeleteReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteResp.fromBuffer(value));

  ToDoServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.ListResp> list($0.ListReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$list, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ToDo> get($0.GetReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$get, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ToDo> create($0.CreateReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$create, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ToDo> update($0.UpdateReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$update, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeleteResp> delete($0.DeleteReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$delete, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ToDoServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.ToDoService';

  ToDoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListReq, $0.ListResp>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListReq.fromBuffer(value),
        ($0.ListResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetReq, $0.ToDo>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetReq.fromBuffer(value),
        ($0.ToDo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateReq, $0.ToDo>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateReq.fromBuffer(value),
        ($0.ToDo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateReq, $0.ToDo>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateReq.fromBuffer(value),
        ($0.ToDo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteReq, $0.DeleteResp>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteReq.fromBuffer(value),
        ($0.DeleteResp value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListResp> list_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ListReq> request) async {
    return list(call, await request);
  }

  $async.Future<$0.ToDo> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetReq> request) async {
    return get(call, await request);
  }

  $async.Future<$0.ToDo> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CreateReq> request) async {
    return create(call, await request);
  }

  $async.Future<$0.ToDo> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UpdateReq> request) async {
    return update(call, await request);
  }

  $async.Future<$0.DeleteResp> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeleteReq> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.ListResp> list($grpc.ServiceCall call, $0.ListReq request);
  $async.Future<$0.ToDo> get($grpc.ServiceCall call, $0.GetReq request);
  $async.Future<$0.ToDo> create($grpc.ServiceCall call, $0.CreateReq request);
  $async.Future<$0.ToDo> update($grpc.ServiceCall call, $0.UpdateReq request);
  $async.Future<$0.DeleteResp> delete(
      $grpc.ServiceCall call, $0.DeleteReq request);
}
