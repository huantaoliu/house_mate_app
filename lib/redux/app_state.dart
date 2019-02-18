import 'package:house_mate/model/category.dart';
import 'package:meta/meta.dart';

class AppState {
  final CategoryM categoryInSearch;
  final List<CategoryM> categories;

  AppState({@required this.categoryInSearch, @required this.categories});

  AppState.initialState()
      : categories = List.unmodifiable(<CategoryM>[
          CategoryM(
              id: 1,
              image: 'assets/paint.jpg',
              title: 'Indoor Renovation',
              subTitle: 'Floor | Paint'),
          CategoryM(
              id: 2,
              image: 'assets/plumbing.jpg',
              title: 'Plumbering & Electricity',
              subTitle: 'Plumber | Pipes | Electricity'),
          CategoryM(
              id: 3,
              image: 'assets/deck.jpg',
              title: 'Back Yard',
              subTitle: 'Deck | Grass | Fence'),
          CategoryM(
              id: 4,
              image: 'assets/moving.jpeg',
              title: 'Moving',
              subTitle: 'Van | Arrange a pickup'),
        ]),
        categoryInSearch = CategoryM(
            id: 4,
            image: 'assets/moving.jpeg',
            title: 'Moving',
            subTitle: 'Van | Arrange a pickup');
}
