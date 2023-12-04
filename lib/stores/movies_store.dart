import 'package:mobx/mobx.dart';
import 'package:movies_app/models/movie.dart';

part 'movies_store.g.dart';

class MoviesStore = _MoviesStoreBase with _$MoviesStore;

abstract class _MoviesStoreBase with Store {
  @observable
  ObservableList<Movie> movies = ObservableList<Movie>();

  @action
  void addMovie(Movie movie) {
    movie.id = movies.length + 1;
    movies.add(movie);
  }

  @action
  void updateMovie(Movie updatedMovie) {
    int index = movies.indexWhere((movie) => movie.id == updatedMovie.id);
    if (index != -1) {
      movies[index] = updatedMovie;
    }
  }

  @action
  void deleteMovie(int id) {
    movies.removeWhere((movie) => movie.id == id);
  }

  List<Movie> searchMovies(String query) {
    return movies
        .where((movie) => movie.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
