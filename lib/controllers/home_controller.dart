import 'package:miu_lanches/mock_data/mock_data.dart';
import 'package:miu_lanches/models/category_model.dart';

class HomeController {
  MockData mockData = MockData();

  List<CategoryModel> getCategories() {
    return mockData.getCategories();
  }
}
