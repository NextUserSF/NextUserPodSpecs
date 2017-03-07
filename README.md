# Installation

NextUser is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

**minimal version you should use is 0.0.3!**

```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/NextUserSF/NextUserPodSpecs.git'

target 'MyApp' do
    pod "NextUser", '~> 0.0.3'
end
```

To install the pod:
```shell
pod install
```

To update the pod:
```shell
pod update NextUser
```


# Full minimal example

### Pod file section
```
target 'BeaconsDemo' do
    pod "NextUser", '~> 0.0.3'
end
```

### Objective-C tracking
```objective-c
    @import NextUser; // this goes into the header!
    // ------- 

    NUTracker *tracker = [NUTracker sharedTracker];
    tracker.logLevel = NULogLevelVerbose;
    [tracker startSessionWithTrackIdentifier:@"my_wid"];
    [tracker identifyUserWithIdentifier:@"marin+ios2@test.com"];
    
    NUAction *action = [NUAction actionWithName:@"test_action"];
    [tracker trackAction:action];
 ```
