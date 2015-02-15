#import <UIKit/UIKit.h>

@interface CrossFadingTextField : UITextField

@property double duration; //Defaults to 0.25

@end


@interface UITextField(CrossFadingTextField)

-(void)setText:(NSString*)text withDuration:(double)duration;

@end