import 'package:movies_app/models/movie.dart';

class MovieService {
  List<Movie> movies = [];

  void addMovie(Movie movie) {
    movie.id = movies.length + 1;
    movies.add(movie);
  }

  void updateMovie(Movie updatedMovie) {
    int index = movies.indexWhere((movie) => movie.id == updatedMovie.id);
    if (index != -1) {
      movies[index] = updatedMovie;
    }
  }

  void deleteMovie(int id) {
    movies.removeWhere((movie) => movie.id == id);
  }

  List<Movie> searchMovies(String query) {
    return movies
        .where((movie) => movie.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
