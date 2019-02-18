import 'package:house_mate/model/category.dart';
import 'package:house_mate/redux/actions.dart';
import 'package:house_mate/redux/app_state.dart';
import 'package:redux/redux.dart';

class ViewModel {
  final List<CategoryM> categories;
  final CategoryM categoryInSearch;
  final Function(CategoryM) onUpdateCategoryInSearch;

  ViewModel({
    this.categories,
    this.categoryInSearch,
    this.onUpdateCategoryInSearch,
  });

  factory ViewModel.create(Store<AppState> store) {
    _onUpdateCategoryInSearch(CategoryM category) {
      store.dispatch(UpdateSearchCategoryAction(category));
    }

    return ViewModel(
      categories: store.state.categories,
      categoryInSearch: store.state.categoryInSearch,
      onUpdateCategoryInSearch: _onUpdateCategoryInSearch,
    );
  }
}
