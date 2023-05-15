import 'package:bloc/bloc.dart';

class ApiKeyCubit extends Cubit<String?> {
  ApiKeyCubit() : super(null);

  void setApiKey({required String apiKey}) async {
    emit(apiKey);
  }
}
