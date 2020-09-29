# Boris Bikes Project

## Domain Model from User Stories
Object | Messages
------ | --------
Person|         
Bike| working?
DockingStation|release_bike

![User Stories Diagram](https://i.imgur.com/TfR3p0q.jpg)

## Errors are Good:
**Type Error:** NameError (uninitialized constant DockingStation)
**Path:** from /Users/kcthomas/.rvm/rubies/ruby-2.7.0/bin/irb:23:in `<main>'
**Line number:** 1: from (irb#1):1

**Meaning:** This error happened because IRB could not find a constant or class to initialize a new DockingStation.
**Fix:** Create a file with the DockingStation class, and require it upon starting IRB.