import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  Future<bool> get isConnected async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult.first != ConnectivityResult.none;
  }
}
