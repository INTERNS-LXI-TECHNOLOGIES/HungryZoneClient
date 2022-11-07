import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for MessageResourceApi
void main() {
  final instance = Openapi().getMessageResourceApi();

  group(MessageResourceApi, () {
    //Future<MessageDTO> createMessage(MessageDTO messageDTO) async
    test('test createMessage', () async {
      // TODO
    });

    //Future deleteMessage(int id) async
    test('test deleteMessage', () async {
      // TODO
    });

    //Future<BuiltList<MessageDTO>> getAllMessages() async
    test('test getAllMessages', () async {
      // TODO
    });

    //Future<MessageDTO> getMessage(int id) async
    test('test getMessage', () async {
      // TODO
    });

    //Future<MessageDTO> partialUpdateMessage(int id, MessageDTO messageDTO) async
    test('test partialUpdateMessage', () async {
      // TODO
    });

    //Future<MessageDTO> updateMessage(int id, MessageDTO messageDTO) async
    test('test updateMessage', () async {
      // TODO
    });

  });
}
