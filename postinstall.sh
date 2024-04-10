#!/bin/sh

launchdID="org.rskgroup.smc_exporter"

if launchctl list "$launchdID"; then
	launchctl bootout system/"$launchdID"
fi

launchctl bootstrap system /Library/LaunchDaemons/"$launchdID".plist