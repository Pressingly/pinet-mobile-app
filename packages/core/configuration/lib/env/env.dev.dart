import 'package:envied/envied.dart';

part 'env.dev.g.dart';

@Envied(path: '.env.dev')
abstract class EnvDev {
  @EnviedField(
    varName: 'API_ENDPOINT',
    defaultValue: '',
  )
  static const String apiEndpoint = _EnvDev.apiEndpoint;
}
