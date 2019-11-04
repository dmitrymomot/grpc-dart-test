///
//  Generated code. Do not modify.
//  source: proto/todo/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $1;

class ToDo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ToDo', package: const $pb.PackageName('todo'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'text')
    ..aOB(3, 'completed')
    ..aOM<$1.Timestamp>(4, 'createdAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(5, 'updatedAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ToDo._() : super();
  factory ToDo() => create();
  factory ToDo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToDo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ToDo clone() => ToDo()..mergeFromMessage(this);
  ToDo copyWith(void Function(ToDo) updates) => super.copyWith((message) => updates(message as ToDo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ToDo create() => ToDo._();
  ToDo createEmptyInstance() => create();
  static $pb.PbList<ToDo> createRepeated() => $pb.PbList<ToDo>();
  @$core.pragma('dart2js:noInline')
  static ToDo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToDo>(create);
  static ToDo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get completed => $_getBF(2);
  @$pb.TagNumber(3)
  set completed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompleted() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompleted() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(4)
  set createdAt($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreatedAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Timestamp get updatedAt => $_getN(4);
  @$pb.TagNumber(5)
  set updatedAt($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureUpdatedAt() => $_ensure(4);
}

class ListReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListReq', package: const $pb.PackageName('todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListReq._() : super();
  factory ListReq() => create();
  factory ListReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListReq clone() => ListReq()..mergeFromMessage(this);
  ListReq copyWith(void Function(ListReq) updates) => super.copyWith((message) => updates(message as ListReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListReq create() => ListReq._();
  ListReq createEmptyInstance() => create();
  static $pb.PbList<ListReq> createRepeated() => $pb.PbList<ListReq>();
  @$core.pragma('dart2js:noInline')
  static ListReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReq>(create);
  static ListReq _defaultInstance;
}

class ListResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListResp', package: const $pb.PackageName('todo'), createEmptyInstance: create)
    ..pc<ToDo>(1, 'items', $pb.PbFieldType.PM, subBuilder: ToDo.create)
    ..hasRequiredFields = false
  ;

  ListResp._() : super();
  factory ListResp() => create();
  factory ListResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListResp clone() => ListResp()..mergeFromMessage(this);
  ListResp copyWith(void Function(ListResp) updates) => super.copyWith((message) => updates(message as ListResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListResp create() => ListResp._();
  ListResp createEmptyInstance() => create();
  static $pb.PbList<ListResp> createRepeated() => $pb.PbList<ListResp>();
  @$core.pragma('dart2js:noInline')
  static ListResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListResp>(create);
  static ListResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ToDo> get items => $_getList(0);
}

class GetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetReq', package: const $pb.PackageName('todo'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  GetReq._() : super();
  factory GetReq() => create();
  factory GetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetReq clone() => GetReq()..mergeFromMessage(this);
  GetReq copyWith(void Function(GetReq) updates) => super.copyWith((message) => updates(message as GetReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetReq create() => GetReq._();
  GetReq createEmptyInstance() => create();
  static $pb.PbList<GetReq> createRepeated() => $pb.PbList<GetReq>();
  @$core.pragma('dart2js:noInline')
  static GetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReq>(create);
  static GetReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateReq', package: const $pb.PackageName('todo'), createEmptyInstance: create)
    ..aOS(2, 'text')
    ..hasRequiredFields = false
  ;

  CreateReq._() : super();
  factory CreateReq() => create();
  factory CreateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateReq clone() => CreateReq()..mergeFromMessage(this);
  CreateReq copyWith(void Function(CreateReq) updates) => super.copyWith((message) => updates(message as CreateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateReq create() => CreateReq._();
  CreateReq createEmptyInstance() => create();
  static $pb.PbList<CreateReq> createRepeated() => $pb.PbList<CreateReq>();
  @$core.pragma('dart2js:noInline')
  static CreateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateReq>(create);
  static CreateReq _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class UpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateReq', package: const $pb.PackageName('todo'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'text')
    ..aOB(3, 'completed')
    ..hasRequiredFields = false
  ;

  UpdateReq._() : super();
  factory UpdateReq() => create();
  factory UpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateReq clone() => UpdateReq()..mergeFromMessage(this);
  UpdateReq copyWith(void Function(UpdateReq) updates) => super.copyWith((message) => updates(message as UpdateReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateReq create() => UpdateReq._();
  UpdateReq createEmptyInstance() => create();
  static $pb.PbList<UpdateReq> createRepeated() => $pb.PbList<UpdateReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReq>(create);
  static UpdateReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get completed => $_getBF(2);
  @$pb.TagNumber(3)
  set completed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompleted() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompleted() => clearField(3);
}

class DeleteReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteReq', package: const $pb.PackageName('todo'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  DeleteReq._() : super();
  factory DeleteReq() => create();
  factory DeleteReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteReq clone() => DeleteReq()..mergeFromMessage(this);
  DeleteReq copyWith(void Function(DeleteReq) updates) => super.copyWith((message) => updates(message as DeleteReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteReq create() => DeleteReq._();
  DeleteReq createEmptyInstance() => create();
  static $pb.PbList<DeleteReq> createRepeated() => $pb.PbList<DeleteReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteReq>(create);
  static DeleteReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteResp', package: const $pb.PackageName('todo'), createEmptyInstance: create)
    ..aOB(1, 'result')
    ..hasRequiredFields = false
  ;

  DeleteResp._() : super();
  factory DeleteResp() => create();
  factory DeleteResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteResp clone() => DeleteResp()..mergeFromMessage(this);
  DeleteResp copyWith(void Function(DeleteResp) updates) => super.copyWith((message) => updates(message as DeleteResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteResp create() => DeleteResp._();
  DeleteResp createEmptyInstance() => create();
  static $pb.PbList<DeleteResp> createRepeated() => $pb.PbList<DeleteResp>();
  @$core.pragma('dart2js:noInline')
  static DeleteResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteResp>(create);
  static DeleteResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

