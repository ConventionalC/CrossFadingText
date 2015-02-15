#import "CrossFadingTextField.h"
#import "CrossFadeTransition.h"

@implementation CrossFadingTextField
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


@implementation UITextField(CrossFadingTextField)

-(void)setText:(NSString*)text withDuration:(double)duration
{
    [self.layer addAnimation:[CrossFadeTransition transitionWithDuration:duration] forKey:@"changeTextTransition"];
    self.text = text;
}

@end