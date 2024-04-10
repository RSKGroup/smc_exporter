# smc_exporter
### Swift smc exporter for Prometheus

Usage:
This exporter is designed to be run by a LauchDaemon, i.e.

```xml
<?xml version="1.0" encoding="UTF-8"?>  
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">  
<plist version="1.0">  
<dict>  
    <key>Label</key>  
    <string>org.rskgroup.smc_exporter</string>  
    <key>RunAtLoad</key>  
    <true/>  
    <key>KeepAlive</key>  
    <true/>  
    <key>ProgramArguments</key>  
    <array>  
        <string>/usr/local/bin/smc_exporter</string>  
        <string>9119</string>  
        <string>temperature</string>  
        <string>fans</string>  
        <string>power</string>  
    </array>  
</dict>  
</plist>  
```

The arguments allowed are port number (defaults to 9101),  
then a list of sensor types you want from (they can all be singular or plural)  
* 	`temperature(s)`    
* 	`voltage(s)`  
* 	`current(s)`   
* 	`power(s)`  
* 	`fan(s)`  
 
you can also put `all` for all of them.  
the default with no sensors listed is `temperature` only  

Sensors and smc.swift adapted from https://github.com/exelban/stats

smc_exporter_installer.pkgproj is a [Packages](http://s.sudre.free.fr/Software/Packages/about.html) project file to install the binary into `/usr/loca/bin/smc_exporter` and the org.rskgroup.smc_exporter.plist LaunchDaemon into /Library/LaunchDaemons, with a postinstall to bootout an existing LaunchDaemon and bootstrap the new one.