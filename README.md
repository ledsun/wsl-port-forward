This project creates a windows installer to install a batch file to enable/disable portforwarding for WSL.

## Build

Depend on WiX Toolset.

```
candle.exe port-forward.wxs
light.exe port-forward.wixobj
```

