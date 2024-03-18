import 'package:envied/envied.dart';

part 'env.prod.g.dart';

@Envied(path: '.env.prod')
abstract class EnvProd {
  @EnviedField(
    varName: 'API_ENDPOINT',
    defaultValue: '',
  )
  static const String apiEndpoint = _EnvProd.apiEndpoint;
}
