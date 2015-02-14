#import "CrossFadeTransition.h"

@implementation CrossFadeTransition

+(CrossFadeTransition*)transitionWithDuration:(double)duration
{
    CrossFadeTransition *animation = self.new;
    animation.duration = duration;
    return animation;
}

-(id)init
{
    if(self == super.init)
    {
        super.type = kCATransitionFade;
        self.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        self.fillMode = kCAFillModeBoth;
    }
    return self;
}

@end
