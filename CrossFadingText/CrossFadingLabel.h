#import <UIKit/UIKit.h>

@interface CrossFadingLabel : UILabel

@property double duration; //Defaults to 0.25

@end


@interface UILabel(CrossFadingLabel)

-(void)setText:(NSString*)text withDuration:(double)duration;

@end