import 'package:dio/dio.dart';
import 'package:yes_no/domain/entities/message.dart';

class GetYesNoAnswer {
  Future<Message> getAnswer() async {
    final _dio = Dio();
    final _url = 'https://yesno.wtf/api';
    final response = await _dio.get(_url);
    throw UnimplementedError();
  }
}
