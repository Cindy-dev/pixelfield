import 'package:equatable/equatable.dart';

abstract class CollectionEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadCollection extends CollectionEvent {}
class RefreshCollection extends CollectionEvent {}
