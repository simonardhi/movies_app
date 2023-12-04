import 'package:auto_route/auto_route.dart';
import 'package:movies_app/screens/movie_list_screen.dart'; // Create this file
import 'package:movies_app/screens/add_movie_screen.dart'; // Create this file

part 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: MovieListScreen, initial: true),
    MaterialRoute(page: AddMovieScreen),
  ],
)
class $AppRouter {}
