import 'package:envied/envied.dart';

part 'env.stg.g.dart';

@Envied(path: '.env.stg')
abstract class EnvStg {
  @EnviedField(
    varName: 'API_ENDPOINT',
    defaultValue: '',
  )
  static const String apiEndpoint = _EnvStg.apiEndpoint;
}
