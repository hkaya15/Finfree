import 'package:finfree_assignment/ui/Finfree/service/api.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => API());
}