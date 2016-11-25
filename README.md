# YGPulseView

YGPulseView is Objective-C Category for making pulsing animation with UIView:

![alt tag](https://raw.githubusercontent.com/YGeorge/YGPulseView/master/animation.gif)

## How to use:

```obj-c

- (void)viewDidLoad {
    [super viewDidLoad];
    self.buttonOne.layer.cornerRadius = 34;
    self.buttonTwo.layer.cornerRadius = 34;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.buttonOne startPulseWithColor:[UIColor greenColor] animation:YGPulseViewAnimationTypeRegularPulsing];
    [self.buttonTwo startPulseWithColor:[UIColor greenColor] animation:YGPulseViewAnimationTypeRadarPulsing];
}

```
