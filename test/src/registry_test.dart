import 'package:flutter_test/flutter_test.dart';
import 'package:yao_registry_service/src/registry.dart';

void main() {
  test('registry ...', () async {
    YaoRegistryService service = YaoRegistryService();
    await service.run();
    await service.set("test", {"version": "1.0.0"});
    expect((await service.get("test"))!["version"], equals("1.0.0"));
    await service.delete("test");
    expect(await service.get("test"), isNull);
  });
}
