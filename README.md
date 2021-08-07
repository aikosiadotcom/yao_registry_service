## Getting Started

```
final app = Yao();
app.inject(YaoRegistryService());
app.run();

//somewhere in your class
final registry = app.find<YaoRegistryService>();
```
