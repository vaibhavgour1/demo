import 'package:demo/data_model.dart';
import 'package:demo/event.dart';
import 'package:demo/main.dart';
import 'package:demo/state.dart';
import 'package:dio/src/response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(InitialState()) {
    on<GetDataEvent>(getData);
  }

  Future<TestResponse> getData(GetDataEvent event, Emitter<HomeState> emit) async {
    //try {
    Response response = await dio.get(
      "http://cgprojects.in/flutter/",
    );
    if (response.statusCode == 200) {
      emit(GetDataState(response: TestResponse.fromJson(response.toString())));
    } else {
      emit(FailureState(message: "Data not found"));
    }
    return TestResponse.fromJson(response.toString());
    // } catch (error) {
    //   String message = "";
    //   if (error is DioError) {
    //     ServerError e = ServerError.withError(error: error);
    //     message = e.getErrorMessage();
    //   } else {
    //     message = "Something Went wrong";
    //   }
    //   print("Exception occurred: $message");
    //   return TestResponse(packages: []);
    // }
  }
}
