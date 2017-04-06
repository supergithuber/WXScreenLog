
## WXScreenLog
---

### 1. Introduction

![image](https://github.com/supergithuber/WXScreenLog/blob/master/ScreenShot.png)

Print debugging information on iPhone's screen also Xcode's console

You can use it during debugging when your iPhone's lightening interface is connected to a external device such as a camera.

### 2. Import

#### 1. Import source file

Drag the folder named ScreenLog with six files into your project.

#### 2. Carthage(recommend)

add this code into your Cartfile


```objc
github "supergithuber/WXScreenLog" ~> 1.0.0
```

perform

```objc
carthage update --platform iOS
```


import <WXScreenLog/WXLogConsole.h> into your file where you want to use it.



### 3.Usage

import "WXLogConsole.h"

You can log your information on your iPhone like these.

You can see and hide the log information by **shaking your iPhone**

```objc
    [WXLogConsole log:@"log"];
    [WXLogConsole warn:@"warn"];
    [WXLogConsole error:@"error"];
    [WXLogConsole info:@"info"];
```

### 4.Friendly Link

about how to make a [carthage](http://www.jianshu.com/p/bf263c596538)