#import "CrossFadingButton.h"
#import "CrossFadeTransition.h"

@implementation CrossFadingButton
{
    BOOL _durationSet;
}

@synthesize duration = _duration;
-(double)duration { return _duration; }
-(void)setDuration:(double)duration
{
    _duration = duration;
    _durationSet = YES;
}

-(void)setTitle:(NSString*)title forState:(UIControlState)state
{
    [self.layer addAnimation:[CrossFadeTransition transitionWithDuration:_durationSet ? _duration : 0.25] forKey:@"changeTextTransition"];
    if(self.state == state)
    {
        self.titleLabel.text = title;
    }
    [super setTitle:title forState:state];
}

@end


@implementation UIButton(CrossFadingButton)

-(void)setTitle:(NSString*)title forState:(UIControlState)state withDuration:(double)duration
{
    [self.titleLabel.layer addAnimation:[CrossFadeTransition transitionWithDuration:duration] forKey:@"changeTextTransition"];
    if(self.state == state)
    {
        self.titleLabel.text = title;
    }
    [self setTitle:title forState:state];
}

@end