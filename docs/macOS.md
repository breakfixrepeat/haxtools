# Running GUI apps on macOS

Install XQuartz:

```
brew install --cask xquartz
```

Run XQuartz:
```
open -a XQuartz
```
Open XQuartz settings, head to the security tab and enable 'Allow connections from network clients'.

A reboot may be required before you can run GUI apps, logging out and back in might do the trick but YMMV.