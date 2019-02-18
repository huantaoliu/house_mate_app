import 'package:house_mate/model/category.dart';
import 'package:house_mate/redux/actions.dart';
import 'package:house_mate/redux/app_state.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    categories: categoriesReducer(state.categories, action),
    categoryInSearch: searchReducer(state.categoryInSearch, action),
  );
}

List<CategoryM> categoriesReducer(List<CategoryM> state, action) {
  if (action is RemoveCategoryAction) {
    return List.unmodifiable(List.from(state)..remove(action.category));
  }
  return state;
}

CategoryM searchReducer(CategoryM state, action) {
  if (action is UpdateSearchCategoryAction) {
    return action.category;
  }
  return state;
}
