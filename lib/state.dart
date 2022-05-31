import 'package:demo/data_model.dart';
import 'package:equatable/equatable.dart';
class HomeState extends Equatable{
  @override
  List<Object?> get props => [];
}
class InitialState extends HomeState{}
class LoadingState extends HomeState{}

class GetDataState extends HomeState{
 final TestResponse response;
 GetDataState({required this.response});
  @override
  List<Object?> get props => [response];
}
class FailureState extends HomeState{
  final String message;
  FailureState({required this.message});
  @override
  List<Object?> get props => [];
}