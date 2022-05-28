import 'package:finfree_assignment/ui/Finfree/model/priceentryinfo.dart';

abstract class APIBase {
    Future<PriceEntryInfo> getStockInfo();
}