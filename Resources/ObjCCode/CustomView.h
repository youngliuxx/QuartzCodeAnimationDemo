//
//  CustomView.h
//
//  Code generated using QuartzCode 1.54.0 on 2017/8/7.
//  www.quartzcodeapp.com
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CustomView : UIView

@property (nonatomic, strong) UIColor * mainColor;
@property (nonatomic, strong) UIColor * color10;
@property (nonatomic, strong) UIColor * color11;
@property (nonatomic, strong) UIColor * color12;

- (void)addAnimationAnimation;
- (void)addAnimationAnimationCompletionBlock:(void (^)(BOOL finished))completionBlock;
- (void)removeAnimationsForAnimationId:(NSString *)identifier;
- (void)removeAllAnimations;

@end
