///
//  Generated code. Do not modify.
//  source: proto/todo/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ToDo$json = const {
  '1': 'ToDo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'completed', '3': 3, '4': 1, '5': 8, '10': 'completed'},
    const {'1': 'created_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

const ListReq$json = const {
  '1': 'ListReq',
};

const ListResp$json = const {
  '1': 'ListResp',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.todo.ToDo', '10': 'items'},
  ],
};

const GetReq$json = const {
  '1': 'GetReq',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const CreateReq$json = const {
  '1': 'CreateReq',
  '2': const [
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

const UpdateReq$json = const {
  '1': 'UpdateReq',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'completed', '3': 3, '4': 1, '5': 8, '10': 'completed'},
  ],
};

const DeleteReq$json = const {
  '1': 'DeleteReq',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const DeleteResp$json = const {
  '1': 'DeleteResp',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

