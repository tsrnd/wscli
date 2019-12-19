# `WS` command line tools

To build & run this CLI:

```bash
$ make clean build
# [7/7] Linking ws
$ make run ARGS="--key1 A --key2 B C --key3 D E F"
# [Core.ArgKey.key3: ["D", "E", "F"], Core.ArgKey.key2: ["B", "C"], Core.ArgKey.key1: ["A"]]
```

or
```bash
$ make clean build
# [7/7] Linking ws
$ ./.build/debug/ws --key1 A --key2 B C --key3 D E F
# [Core.ArgKey.key3: ["D", "E", "F"], Core.ArgKey.key2: ["B", "C"], Core.ArgKey.key1: ["A"]]
```
