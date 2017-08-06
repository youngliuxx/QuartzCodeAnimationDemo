//
//  CustomView.m
//
//  Code generated using QuartzCode 1.54.0 on 2017/8/7.
//  www.quartzcodeapp.com
//

#import "CustomView.h"
#import "QCMethod.h"

@interface CustomView ()

@property (nonatomic, strong) NSMutableDictionary * layers;
@property (nonatomic, strong) NSMapTable * completionBlocks;
@property (nonatomic, assign) BOOL  updateLayerValueForCompletedAnimation;


@end

@implementation CustomView

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}



- (void)setupProperties{
	self.completionBlocks = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];;
	self.layers = [NSMutableDictionary dictionary];
	self.updateLayerValueForCompletedAnimation = YES;
	self.mainColor = [UIColor colorWithRed:0.165 green: 0.11 blue:0.051 alpha:1];
	self.color10 = [UIColor colorWithRed:0.608 green: 0.192 blue:0.961 alpha:1];
	self.color11 = [UIColor colorWithRed:0.341 green: 0.408 blue:0.69 alpha:1];
	self.color12 = [UIColor colorWithRed:0.953 green: 0.475 blue:0.0706 alpha:1];
}

- (void)setupLayers{
	CALayer * Round = [CALayer layer];
	Round.frame = CGRectMake(24, 52, 160.5, 160.5);
	
	[self.layer addSublayer:Round];
	self.layers[@"Round"] = Round;
	{
		CAShapeLayer * progress_background = [CAShapeLayer layer];
		progress_background.frame         = CGRectMake(0.5, 0.5, 160, 160);
		progress_background.lineCap       = kCALineCapRound;
		progress_background.fillColor     = nil;
		progress_background.strokeColor   = [UIColor colorWithRed:0.992 green: 0.718 blue:0.306 alpha:1].CGColor;
		progress_background.lineWidth     = 10;
		progress_background.shadowColor   = [UIColor colorWithRed:0 green: 0 blue:0 alpha:0.955].CGColor;
		progress_background.shadowOpacity = 0.96;
		progress_background.shadowOffset  = CGSizeMake(0, -0);
		progress_background.shadowRadius  = 4;
		progress_background.path          = [self progress_backgroundPath].CGPath;
		[Round addSublayer:progress_background];
		self.layers[@"progress_background"] = progress_background;
		CAShapeLayer * background = [CAShapeLayer layer];
		background.frame         = CGRectMake(5.5, 5.5, 150, 150);
		background.lineCap       = kCALineCapRound;
		background.fillColor     = [UIColor colorWithRed:0.341 green: 0.408 blue:0.69 alpha:1].CGColor;
		background.strokeColor   = [UIColor colorWithRed:0.341 green: 0.408 blue:0.588 alpha:1].CGColor;
		background.shadowColor   = [UIColor colorWithRed:0 green: 0 blue:0 alpha:0.33].CGColor;
		background.shadowOpacity = 0.33;
		background.shadowOffset  = CGSizeMake(100, 100);
		background.shadowRadius  = 400;
		background.path          = [self backgroundPath].CGPath;
		[Round addSublayer:background];
		self.layers[@"background"] = background;
		CAShapeLayer * progress_line = [CAShapeLayer layer];
		progress_line.frame       = CGRectMake(0, 0, 160, 160);
		progress_line.lineCap     = kCALineCapRound;
		progress_line.fillColor   = nil;
		progress_line.strokeColor = [UIColor colorWithRed:0.165 green: 0.11 blue:0.051 alpha:0].CGColor;
		progress_line.lineWidth   = 10;
		progress_line.strokeStart = 1;
		progress_line.path        = [self progress_linePath].CGPath;
		[Round addSublayer:progress_line];
		self.layers[@"progress_line"] = progress_line;
	}
	
	
	CALayer * Draw = [CALayer layer];
	Draw.frame = CGRectMake(69.5, 109.69, 70, 45.62);
	
	[self.layer addSublayer:Draw];
	self.layers[@"Draw"] = Draw;
	{
		CAShapeLayer * left_path = [CAShapeLayer layer];
		left_path.frame       = CGRectMake(0, 21.53, 24.09, 24.09);
		left_path.lineCap     = kCALineCapRound;
		left_path.fillColor   = nil;
		left_path.strokeColor = [UIColor whiteColor].CGColor;
		left_path.lineWidth   = 8;
		left_path.strokeStart = 1;
		left_path.path        = [self left_pathPath].CGPath;
		[Draw addSublayer:left_path];
		self.layers[@"left_path"] = left_path;
		CAShapeLayer * right_path = [CAShapeLayer layer];
		right_path.frame       = CGRectMake(24.38, 0, 45.62, 45.62);
		right_path.lineCap     = kCALineCapRound;
		right_path.fillColor   = nil;
		right_path.strokeColor = [UIColor whiteColor].CGColor;
		right_path.lineWidth   = 8;
		right_path.strokeEnd   = 0;
		right_path.path        = [self right_pathPath].CGPath;
		[Draw addSublayer:right_path];
		self.layers[@"right_path"] = right_path;
	}
	
	
	CAShapeLayer * cloud_icon = [CAShapeLayer layer];
	cloud_icon.frame       = CGRectMake(69, 110.69, 70, 39.98);
	cloud_icon.fillColor   = [UIColor whiteColor].CGColor;
	cloud_icon.strokeColor = [UIColor blackColor].CGColor;
	cloud_icon.lineWidth   = 0;
	cloud_icon.path        = [self cloud_iconPath].CGPath;
	[self.layer addSublayer:cloud_icon];
	self.layers[@"cloud_icon"] = cloud_icon;
}



#pragma mark - Animation Setup

- (void)addAnimationAnimation{
	[self addAnimationAnimationCompletionBlock:nil];
}

- (void)addAnimationAnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 3.683;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Animation" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Animation"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Animation"]];
	}
	
	NSString * fillMode = kCAFillModeForwards;
	
	////Progress_background animation
	CAKeyframeAnimation * progress_backgroundOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	progress_backgroundOpacityAnim.values = @[@0, @1, @1, @0];
	progress_backgroundOpacityAnim.keyTimes = @[@0, @0.138, @0.952, @1];
	progress_backgroundOpacityAnim.duration = 3.13;
	
	CAAnimationGroup * progress_backgroundAnimationAnim = [QCMethod groupAnimations:@[progress_backgroundOpacityAnim] fillMode:fillMode];
	[self.layers[@"progress_background"] addAnimation:progress_backgroundAnimationAnim forKey:@"progress_backgroundAnimationAnim"];
	
	////Background animation
	CAKeyframeAnimation * backgroundFillColorAnim = [CAKeyframeAnimation animationWithKeyPath:@"fillColor"];
	backgroundFillColorAnim.values    = @[(id)[UIColor colorWithRed:0.4 green: 0.4 blue:1 alpha:1].CGColor, 
		 (id)self.color12.CGColor];
	backgroundFillColorAnim.keyTimes  = @[@0, @1];
	backgroundFillColorAnim.duration  = 0.551;
	backgroundFillColorAnim.beginTime = 2.98;
	
	CAAnimationGroup * backgroundAnimationAnim = [QCMethod groupAnimations:@[backgroundFillColorAnim] fillMode:fillMode];
	[self.layers[@"background"] addAnimation:backgroundAnimationAnim forKey:@"backgroundAnimationAnim"];
	
	////Progress_line animation
	CABasicAnimation * progress_lineStrokeStartAnim = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
	progress_lineStrokeStartAnim.fromValue = @1;
	progress_lineStrokeStartAnim.toValue   = @0;
	progress_lineStrokeStartAnim.duration  = 2.54;
	progress_lineStrokeStartAnim.beginTime = 0.433;
	progress_lineStrokeStartAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAKeyframeAnimation * progress_lineStrokeColorAnim = [CAKeyframeAnimation animationWithKeyPath:@"strokeColor"];
	progress_lineStrokeColorAnim.values    = @[(id)self.color12.CGColor, 
		 (id)self.color12.CGColor];
	progress_lineStrokeColorAnim.keyTimes  = @[@0, @1];
	progress_lineStrokeColorAnim.duration  = 2.54;
	progress_lineStrokeColorAnim.beginTime = 0.433;
	
	CABasicAnimation * progress_lineTransformAnim = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
	progress_lineTransformAnim.fromValue = @(0);
	progress_lineTransformAnim.toValue   = @(360 * M_PI/180);
	progress_lineTransformAnim.duration  = 2.54;
	progress_lineTransformAnim.beginTime = 0.433;
	progress_lineTransformAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	
	CAKeyframeAnimation * progress_lineOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	progress_lineOpacityAnim.values    = @[@1, @0];
	progress_lineOpacityAnim.keyTimes  = @[@0, @1];
	progress_lineOpacityAnim.duration  = 0.15;
	progress_lineOpacityAnim.beginTime = 2.98;
	
	CAAnimationGroup * progress_lineAnimationAnim = [QCMethod groupAnimations:@[progress_lineStrokeStartAnim, progress_lineStrokeColorAnim, progress_lineTransformAnim, progress_lineOpacityAnim] fillMode:fillMode];
	[self.layers[@"progress_line"] addAnimation:progress_lineAnimationAnim forKey:@"progress_lineAnimationAnim"];
	
	////Left_path animation
	CAKeyframeAnimation * left_pathStrokeStartAnim = [CAKeyframeAnimation animationWithKeyPath:@"strokeStart"];
	left_pathStrokeStartAnim.values    = @[@1, @0];
	left_pathStrokeStartAnim.keyTimes  = @[@0, @1];
	left_pathStrokeStartAnim.duration  = 0.556;
	left_pathStrokeStartAnim.beginTime = 3.13;
	
	CAAnimationGroup * left_pathAnimationAnim = [QCMethod groupAnimations:@[left_pathStrokeStartAnim] fillMode:fillMode];
	[self.layers[@"left_path"] addAnimation:left_pathAnimationAnim forKey:@"left_pathAnimationAnim"];
	
	////Right_path animation
	CAKeyframeAnimation * right_pathStrokeEndAnim = [CAKeyframeAnimation animationWithKeyPath:@"strokeEnd"];
	right_pathStrokeEndAnim.values    = @[@0, @1];
	right_pathStrokeEndAnim.keyTimes  = @[@0, @1];
	right_pathStrokeEndAnim.duration  = 0.556;
	right_pathStrokeEndAnim.beginTime = 3.13;
	
	CAAnimationGroup * right_pathAnimationAnim = [QCMethod groupAnimations:@[right_pathStrokeEndAnim] fillMode:fillMode];
	[self.layers[@"right_path"] addAnimation:right_pathAnimationAnim forKey:@"right_pathAnimationAnim"];
	
	////Cloud_icon animation
	CAKeyframeAnimation * cloud_iconOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
	cloud_iconOpacityAnim.values    = @[@1, @0];
	cloud_iconOpacityAnim.keyTimes  = @[@0, @1];
	cloud_iconOpacityAnim.duration  = 0.151;
	cloud_iconOpacityAnim.beginTime = 2.98;
	
	CAAnimationGroup * cloud_iconAnimationAnim = [QCMethod groupAnimations:@[cloud_iconOpacityAnim] fillMode:fillMode];
	[self.layers[@"cloud_icon"] addAnimation:cloud_iconAnimationAnim forKey:@"cloud_iconAnimationAnim"];
}

#pragma mark - Animation Cleanup

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
	void (^completionBlock)(BOOL) = [self.completionBlocks objectForKey:anim];;
	if (completionBlock){
		[self.completionBlocks removeObjectForKey:anim];
		if ((flag && self.updateLayerValueForCompletedAnimation) || [[anim valueForKey:@"needEndAnim"] boolValue]){
			[self updateLayerValuesForAnimationId:[anim valueForKey:@"animId"]];
			[self removeAnimationsForAnimationId:[anim valueForKey:@"animId"]];
		}
		completionBlock(flag);
	}
}

- (void)updateLayerValuesForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"Animation"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"progress_background"] animationForKey:@"progress_backgroundAnimationAnim"] theLayer:self.layers[@"progress_background"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"background"] animationForKey:@"backgroundAnimationAnim"] theLayer:self.layers[@"background"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"progress_line"] animationForKey:@"progress_lineAnimationAnim"] theLayer:self.layers[@"progress_line"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"left_path"] animationForKey:@"left_pathAnimationAnim"] theLayer:self.layers[@"left_path"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"right_path"] animationForKey:@"right_pathAnimationAnim"] theLayer:self.layers[@"right_path"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"cloud_icon"] animationForKey:@"cloud_iconAnimationAnim"] theLayer:self.layers[@"cloud_icon"]];
	}
}

- (void)removeAnimationsForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"Animation"]){
		[self.layers[@"progress_background"] removeAnimationForKey:@"progress_backgroundAnimationAnim"];
		[self.layers[@"background"] removeAnimationForKey:@"backgroundAnimationAnim"];
		[self.layers[@"progress_line"] removeAnimationForKey:@"progress_lineAnimationAnim"];
		[self.layers[@"left_path"] removeAnimationForKey:@"left_pathAnimationAnim"];
		[self.layers[@"right_path"] removeAnimationForKey:@"right_pathAnimationAnim"];
		[self.layers[@"cloud_icon"] removeAnimationForKey:@"cloud_iconAnimationAnim"];
	}
}

- (void)removeAllAnimations{
	[self.layers enumerateKeysAndObjectsUsingBlock:^(id key, CALayer *layer, BOOL *stop) {
		[layer removeAllAnimations];
	}];
}

#pragma mark - Bezier Path

- (UIBezierPath*)progress_backgroundPath{
	UIBezierPath * progress_backgroundPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 160, 160)];
	return progress_backgroundPath;
}

- (UIBezierPath*)backgroundPath{
	UIBezierPath * backgroundPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 150, 150)];
	return backgroundPath;
}

- (UIBezierPath*)progress_linePath{
	UIBezierPath *progress_linePath = [UIBezierPath bezierPath];
	[progress_linePath moveToPoint:CGPointMake(80, 0)];
	[progress_linePath addCurveToPoint:CGPointMake(0, 80) controlPoint1:CGPointMake(35.817, 0) controlPoint2:CGPointMake(0, 35.817)];
	[progress_linePath addCurveToPoint:CGPointMake(80, 160) controlPoint1:CGPointMake(0, 124.183) controlPoint2:CGPointMake(35.817, 160)];
	[progress_linePath addCurveToPoint:CGPointMake(160, 80) controlPoint1:CGPointMake(124.183, 160) controlPoint2:CGPointMake(160, 124.183)];
	[progress_linePath addCurveToPoint:CGPointMake(80, 0) controlPoint1:CGPointMake(160, 35.817) controlPoint2:CGPointMake(124.183, 0)];
	
	return progress_linePath;
}

- (UIBezierPath*)left_pathPath{
	UIBezierPath *left_pathPath = [UIBezierPath bezierPath];
	[left_pathPath moveToPoint:CGPointMake(0, -0)];
	[left_pathPath addCurveToPoint:CGPointMake(24.092, 24.092) controlPoint1:CGPointMake(0, -0) controlPoint2:CGPointMake(24.023, 24.275)];
	
	return left_pathPath;
}

- (UIBezierPath*)right_pathPath{
	UIBezierPath *right_pathPath = [UIBezierPath bezierPath];
	[right_pathPath moveToPoint:CGPointMake(0, 45.625)];
	[right_pathPath addLineToPoint:CGPointMake(45.625, 0)];
	
	return right_pathPath;
}

- (UIBezierPath*)cloud_iconPath{
	UIBezierPath *cloud_iconPath = [UIBezierPath bezierPath];
	[cloud_iconPath moveToPoint:CGPointMake(69.996, 28.224)];
	[cloud_iconPath addCurveToPoint:CGPointMake(60.667, 16.461) controlPoint1:CGPointMake(69.996, 22.694) controlPoint2:CGPointMake(65.883, 17.711)];
	[cloud_iconPath addCurveToPoint:CGPointMake(44.333, 0) controlPoint1:CGPointMake(60.446, 7.791) controlPoint2:CGPointMake(53.18, 0)];
	[cloud_iconPath addCurveToPoint:CGPointMake(31.5, 7.055) controlPoint1:CGPointMake(39.151, 0) controlPoint2:CGPointMake(34.48, 3.334)];
	[cloud_iconPath addCurveToPoint:CGPointMake(24.5, 3.527) controlPoint1:CGPointMake(29.829, 4.927) controlPoint2:CGPointMake(27.44, 3.527)];
	[cloud_iconPath addCurveToPoint:CGPointMake(15.167, 12.933) controlPoint1:CGPointMake(19.453, 3.527) controlPoint2:CGPointMake(15.167, 7.958)];
	[cloud_iconPath addCurveToPoint:CGPointMake(15.167, 15.285) controlPoint1:CGPointMake(15.167, 13.366) controlPoint2:CGPointMake(15.105, 14.869)];
	[cloud_iconPath addCurveToPoint:CGPointMake(10.5, 14.109) controlPoint1:CGPointMake(14.219, 14.403) controlPoint2:CGPointMake(12.797, 14.109)];
	[cloud_iconPath addCurveToPoint:CGPointMake(0, 26.916) controlPoint1:CGPointMake(3.184, 14.109) controlPoint2:CGPointMake(0, 19.704)];
	[cloud_iconPath addCurveToPoint:CGPointMake(13.244, 39.976) controlPoint1:CGPointMake(0, 34.13) controlPoint2:CGPointMake(5.928, 39.976)];
	[cloud_iconPath addLineToPoint:CGPointMake(28, 39.976)];
	[cloud_iconPath addCurveToPoint:CGPointMake(32.667, 35.273) controlPoint1:CGPointMake(30.577, 39.976) controlPoint2:CGPointMake(32.667, 37.87)];
	[cloud_iconPath addLineToPoint:CGPointMake(32.667, 25.867)];
	[cloud_iconPath addLineToPoint:CGPointMake(28, 25.867)];
	[cloud_iconPath addCurveToPoint:CGPointMake(26.118, 25.341) controlPoint1:CGPointMake(26.948, 25.867) controlPoint2:CGPointMake(26.719, 25.947)];
	[cloud_iconPath addCurveToPoint:CGPointMake(26.118, 23.22) controlPoint1:CGPointMake(25.516, 24.735) controlPoint2:CGPointMake(25.516, 23.75)];
	[cloud_iconPath addLineToPoint:CGPointMake(35.063, 14.28)];
	[cloud_iconPath addCurveToPoint:CGPointMake(36.191, 13.825) controlPoint1:CGPointMake(35.364, 13.977) controlPoint2:CGPointMake(35.815, 13.825)];
	[cloud_iconPath addCurveToPoint:CGPointMake(37.319, 14.28) controlPoint1:CGPointMake(36.567, 13.825) controlPoint2:CGPointMake(37.018, 13.901)];
	[cloud_iconPath addLineToPoint:CGPointMake(46.265, 23.22)];
	[cloud_iconPath addCurveToPoint:CGPointMake(46.265, 25.417) controlPoint1:CGPointMake(46.866, 23.826) controlPoint2:CGPointMake(46.866, 24.811)];
	[cloud_iconPath addCurveToPoint:CGPointMake(44.333, 25.867) controlPoint1:CGPointMake(45.663, 25.947) controlPoint2:CGPointMake(45.311, 25.867)];
	[cloud_iconPath addLineToPoint:CGPointMake(39.667, 25.867)];
	[cloud_iconPath addLineToPoint:CGPointMake(39.667, 35.273)];
	[cloud_iconPath addCurveToPoint:CGPointMake(44.333, 39.976) controlPoint1:CGPointMake(39.667, 37.87) controlPoint2:CGPointMake(41.756, 39.976)];
	[cloud_iconPath addLineToPoint:CGPointMake(58.105, 39.976)];
	[cloud_iconPath addCurveToPoint:CGPointMake(70, 28.226) controlPoint1:CGPointMake(64.677, 39.963) controlPoint2:CGPointMake(70, 34.709)];
	[cloud_iconPath addLineToPoint:CGPointMake(69.996, 28.224)];
	[cloud_iconPath closePath];
	[cloud_iconPath moveToPoint:CGPointMake(69.996, 28.224)];
	
	return cloud_iconPath;
}


@end
