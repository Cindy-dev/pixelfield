import 'package:equatable/equatable.dart';
import 'package:pixelfield/features/collection/data/model/collection_model.dart';

abstract class CollectionState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CollectionInitial extends CollectionState {}

class CollectionLoading extends CollectionState {}

class CollectionLoaded extends CollectionState {
  final List<Bottle> collection;

  CollectionLoaded(this.collection);

  @override
  List<Object?> get props => [collection];
}

class CollectionError extends CollectionState {
  final String message;

  CollectionError(this.message);

  @override
  List<Object?> get props => [message];
}
