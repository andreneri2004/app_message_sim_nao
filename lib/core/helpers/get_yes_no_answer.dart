import 'package:dio/dio.dart';
import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/infrastruture/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  final _url = 'https://yesno.wtf/api';
  Future<Message> getAnswer() async {
    final response = await _dio.get(_url);

    final YesNoModel yesNoModel = YesNoModel.fromJsonMap(response.data);
    
    return yesNoModel.toMessage();
  }
}
