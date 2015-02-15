#import <UIKit/UIKit.h>

@interface CrossFadingButton : UIButton

@property double duration; //Defaults to 0.25

@end


@interface UIButton(CrossFadingButton)

-(void)setTitle:(NSString*)title forState:(UIControlState)state withDuration:(double)duration;

@end