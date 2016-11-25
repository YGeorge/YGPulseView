# YGPulseView

YGPulseView is Objective-C Category for making pulsing animation with UIView:

![alt tag](https://raw.githubusercontent.com/YGeorge/YGPulseView/master/animation.gif)

## How to use:

```obj-c

- (void)viewDidLoad {
    [super viewDidLoad];
    self.plusView.layer.cornerRadius = 30;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.plusView startPulseWithColor:[UIColor greenColor] animation:YGPulseViewAnimationTypeRadarPulsing];
}

```
