// add_movie_screen.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/models/movie.dart';
import 'package:movies_app/stores/movies_store.dart';

class AddMovieScreen extends StatelessWidget {
  final MoviesStore _moviesStore = GetIt.I<MoviesStore>();
  final TextEditingController _titleController = TextEditingController();
  // Add controllers for other fields

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Movie'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            // Add input fields for other movie attributes
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add movie to the store
                _moviesStore.addMovie(
                  Movie(
                    title: _titleController.text, id: null, director: '', summary: '', genres: [],
                    // Set other attributes
                  ),
                );

                // Navigate back to the movie list screen
                context.router.pop();
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
