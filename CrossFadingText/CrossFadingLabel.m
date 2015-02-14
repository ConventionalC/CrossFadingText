#import "CrossFadingLabel.h"
#import "CrossFadeTransition.h"

@implementation CrossFadingLabel
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

-(void)setText:(NSString*)text
{
    [self.layer addAnimation:[CrossFadeTransition transitionWithDuration:_duration] forKey:@"changeTextTransition"];
    super.text = text;
}

@end


@implementation UILabel(CrossFadingLabel)

-(void)setText:(NSString*)text withDuration:(double)duration
{
    [self.layer addAnimation:[CrossFadeTransition transitionWithDuration:duration] forKey:@"changeTextTransition"];
    self.text = text;
}

@end