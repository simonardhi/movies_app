// movie_list_screen.dart
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/stores/movies_store.dart';

class MovieListScreen extends StatelessWidget {
  final MoviesStore _moviesStore = GetIt.I<MoviesStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies Collection'),
      ),
      body: Column(
        children: [
          // Implement UI using MobX
          Observer(
            builder: (_) {
              return ListView.builder(
                itemCount: _moviesStore.movies.length,
                itemBuilder: (context, index) {
                  // Build UI for each movie
                },
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to Add Movie Screen
          context.router.push(AddMovieScreenRoute());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
