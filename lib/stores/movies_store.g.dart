// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MoviesStore on _MoviesStoreBase, Store {
  late final _$moviesAtom =
      Atom(name: '_MoviesStoreBase.movies', context: context);

  @override
  ObservableList<Movie> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(ObservableList<Movie> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  late final _$_MoviesStoreBaseActionController =
      ActionController(name: '_MoviesStoreBase', context: context);

  @override
  void addMovie(Movie movie) {
    final _$actionInfo = _$_MoviesStoreBaseActionController.startAction(
        name: '_MoviesStoreBase.addMovie');
    try {
      return super.addMovie(movie);
    } finally {
      _$_MoviesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateMovie(Movie updatedMovie) {
    final _$actionInfo = _$_MoviesStoreBaseActionController.startAction(
        name: '_MoviesStoreBase.updateMovie');
    try {
      return super.updateMovie(updatedMovie);
    } finally {
      _$_MoviesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteMovie(int id) {
    final _$actionInfo = _$_MoviesStoreBaseActionController.startAction(
        name: '_MoviesStoreBase.deleteMovie');
    try {
      return super.deleteMovie(id);
    } finally {
      _$_MoviesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movies: ${movies}
    ''';
  }
}
