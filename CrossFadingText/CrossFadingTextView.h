#import <UIKit/UIKit.h>

@interface CrossFadingTextView : UITextView

@property double duration; //Defaults to 0.25

@end


@interface UITextView(CrossFadingTextView)

-(void)setText:(NSString*)text withDuration:(double)duration;

@end