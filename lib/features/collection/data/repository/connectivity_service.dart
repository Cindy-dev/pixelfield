import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pixelfield/common/utils/app_extension.dart';

class ConnectivityService {
  Future<bool> get isConnected async {
    var connectivityResult = await Connectivity().checkConnectivity();
    printOnlyInDebugMode(connectivityResult);
    return connectivityResult.first != ConnectivityResult.none;
  }
}
