//
//  CustomView.swift
//
//  Code generated using QuartzCode 1.54.0 on 2017/8/6.
//  www.quartzcodeapp.com
//

import UIKit


class CustomView: UIView, CAAnimationDelegate {
	
	var layers : Dictionary<String, AnyObject> = [:]
	var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
	var updateLayerValueForCompletedAnimation : Bool = true
	
	var mainColor : UIColor!
	var color10 : UIColor!
	var color11 : UIColor!
	var color12 : UIColor!
	
	//MARK: - Life Cycle
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupProperties()
		setupLayers()
	}
	
	required init?(coder aDecoder: NSCoder)
	{
		super.init(coder: aDecoder)
		setupProperties()
		setupLayers()
	}
	
	
	
	func setupProperties(){
		self.mainColor = UIColor(red:0.165, green: 0.11, blue:0.051, alpha:1)
		self.color10 = UIColor(red:0.608, green: 0.192, blue:0.961, alpha:1)
		self.color11 = UIColor(red:0.341, green: 0.408, blue:0.69, alpha:1)
		self.color12 = UIColor(red:0.953, green: 0.475, blue:0.0706, alpha:1)
	}
	
	func setupLayers(){
		let Round = CALayer()
		Round.frame = CGRect(x: 24, y: 52, width: 160.5, height: 160.5)
		
		self.layer.addSublayer(Round)
		layers["Round"] = Round
		let progress_background = CAShapeLayer()
		progress_background.frame         = CGRect(x: 0.5, y: 0.5, width: 160, height: 160)
		progress_background.lineCap       = kCALineCapRound
		progress_background.fillColor     = nil
		progress_background.strokeColor   = UIColor(red:0.992, green: 0.718, blue:0.306, alpha:1).cgColor
		progress_background.lineWidth     = 10
		progress_background.shadowColor   = UIColor(red:0, green: 0, blue:0, alpha:0.955).cgColor
		progress_background.shadowOpacity = 0.96
		progress_background.shadowOffset  = CGSize(width: 0, height: -0)
		progress_background.shadowRadius  = 4
		progress_background.path          = progress_backgroundPath().cgPath
		Round.addSublayer(progress_background)
		layers["progress_background"] = progress_background
		let background = CAShapeLayer()
		background.frame         = CGRect(x: 5.5, y: 5.5, width: 150, height: 150)
		background.lineCap       = kCALineCapRound
		background.fillColor     = UIColor(red:0.341, green: 0.408, blue:0.69, alpha:1).cgColor
		background.strokeColor   = UIColor(red:0.341, green: 0.408, blue:0.588, alpha:1).cgColor
		background.shadowColor   = UIColor(red:0, green: 0, blue:0, alpha:0.33).cgColor
		background.shadowOpacity = 0.33
		background.shadowOffset  = CGSize(width: 100, height: 100)
		background.shadowRadius  = 400
		background.path          = backgroundPath().cgPath
		Round.addSublayer(background)
		layers["background"] = background
		let progress_line = CAShapeLayer()
		progress_line.frame       = CGRect(x: 0, y: 0, width: 160, height: 160)
		progress_line.lineCap     = kCALineCapRound
		progress_line.fillColor   = nil
		progress_line.strokeColor = UIColor(red:0.165, green: 0.11, blue:0.051, alpha:0).cgColor
		progress_line.lineWidth   = 10
		progress_line.strokeStart = 1
		progress_line.path        = progress_linePath().cgPath
		Round.addSublayer(progress_line)
		layers["progress_line"] = progress_line
		
		let Draw = CALayer()
		Draw.frame = CGRect(x: 69.5, y: 109.69, width: 70, height: 45.62)
		
		self.layer.addSublayer(Draw)
		layers["Draw"] = Draw
		let left_path = CAShapeLayer()
		left_path.frame       = CGRect(x: 0, y: 21.53, width: 24.09, height: 24.09)
		left_path.lineCap     = kCALineCapRound
		left_path.fillColor   = nil
		left_path.strokeColor = UIColor.white.cgColor
		left_path.lineWidth   = 8
		left_path.strokeStart = 1
		left_path.path        = left_pathPath().cgPath
		Draw.addSublayer(left_path)
		layers["left_path"] = left_path
		let right_path = CAShapeLayer()
		right_path.frame       = CGRect(x: 24.38, y: 0, width: 45.62, height: 45.62)
		right_path.lineCap     = kCALineCapRound
		right_path.fillColor   = nil
		right_path.strokeColor = UIColor.white.cgColor
		right_path.lineWidth   = 8
		right_path.strokeEnd   = 0
		right_path.path        = right_pathPath().cgPath
		Draw.addSublayer(right_path)
		layers["right_path"] = right_path
		
		let cloud_icon = CAShapeLayer()
		cloud_icon.frame       = CGRect(x: 69, y: 110.69, width: 70, height: 39.98)
		cloud_icon.fillColor   = UIColor.white.cgColor
		cloud_icon.strokeColor = UIColor.black.cgColor
		cloud_icon.lineWidth   = 0
		cloud_icon.path        = cloud_iconPath().cgPath
		self.layer.addSublayer(cloud_icon)
		layers["cloud_icon"] = cloud_icon
	}
	
	
	
	//MARK: - Animation Setup
	
	func addAnimationAnimation(completionBlock: ((_ finished: Bool) -> Void)? = nil){
		if completionBlock != nil{
			let completionAnim = CABasicAnimation(keyPath:"completionAnim")
			completionAnim.duration = 3.683
			completionAnim.delegate = self
			completionAnim.setValue("Animation", forKey:"animId")
			completionAnim.setValue(false, forKey:"needEndAnim")
			layer.add(completionAnim, forKey:"Animation")
			if let anim = layer.animation(forKey: "Animation"){
				completionBlocks[anim] = completionBlock
			}
		}
		
		let fillMode : String = kCAFillModeForwards
		
		////Progress_background animation
		let progress_backgroundOpacityAnim    = CAKeyframeAnimation(keyPath:"opacity")
		progress_backgroundOpacityAnim.values = [0, 1, 1, 0]
		progress_backgroundOpacityAnim.keyTimes = [0, 0.138, 0.952, 1]
		progress_backgroundOpacityAnim.duration = 3.13
		
		let progress_backgroundAnimationAnim : CAAnimationGroup = QCMethod.group(animations: [progress_backgroundOpacityAnim], fillMode:fillMode)
		layers["progress_background"]?.add(progress_backgroundAnimationAnim, forKey:"progress_backgroundAnimationAnim")
		
		////Background animation
		let backgroundFillColorAnim       = CAKeyframeAnimation(keyPath:"fillColor")
		backgroundFillColorAnim.values    = [UIColor(red:0.4, green: 0.4, blue:1, alpha:1).cgColor, 
			 self.color12.cgColor]
		backgroundFillColorAnim.keyTimes  = [0, 1]
		backgroundFillColorAnim.duration  = 0.551
		backgroundFillColorAnim.beginTime = 2.98
		
		let backgroundAnimationAnim : CAAnimationGroup = QCMethod.group(animations: [backgroundFillColorAnim], fillMode:fillMode)
		layers["background"]?.add(backgroundAnimationAnim, forKey:"backgroundAnimationAnim")
		
		////Progress_line animation
		let progress_lineStrokeStartAnim       = CABasicAnimation(keyPath:"strokeStart")
		progress_lineStrokeStartAnim.fromValue = 1;
		progress_lineStrokeStartAnim.toValue   = 0;
		progress_lineStrokeStartAnim.duration  = 2.54
		progress_lineStrokeStartAnim.beginTime = 0.433
		progress_lineStrokeStartAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
		
		let progress_lineStrokeColorAnim       = CAKeyframeAnimation(keyPath:"strokeColor")
		progress_lineStrokeColorAnim.values    = [self.color12.cgColor, 
			 self.color12.cgColor]
		progress_lineStrokeColorAnim.keyTimes  = [0, 1]
		progress_lineStrokeColorAnim.duration  = 2.54
		progress_lineStrokeColorAnim.beginTime = 0.433
		
		let progress_lineTransformAnim       = CABasicAnimation(keyPath:"transform.rotation")
		progress_lineTransformAnim.fromValue = 0;
		progress_lineTransformAnim.toValue   = 360 * CGFloat(M_PI/180);
		progress_lineTransformAnim.duration  = 2.54
		progress_lineTransformAnim.beginTime = 0.433
		progress_lineTransformAnim.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
		
		let progress_lineOpacityAnim       = CAKeyframeAnimation(keyPath:"opacity")
		progress_lineOpacityAnim.values    = [1, 0]
		progress_lineOpacityAnim.keyTimes  = [0, 1]
		progress_lineOpacityAnim.duration  = 0.15
		progress_lineOpacityAnim.beginTime = 2.98
		
		let progress_lineAnimationAnim : CAAnimationGroup = QCMethod.group(animations: [progress_lineStrokeStartAnim, progress_lineStrokeColorAnim, progress_lineTransformAnim, progress_lineOpacityAnim], fillMode:fillMode)
		layers["progress_line"]?.add(progress_lineAnimationAnim, forKey:"progress_lineAnimationAnim")
		
		////Left_path animation
		let left_pathStrokeStartAnim       = CAKeyframeAnimation(keyPath:"strokeStart")
		left_pathStrokeStartAnim.values    = [1, 0]
		left_pathStrokeStartAnim.keyTimes  = [0, 1]
		left_pathStrokeStartAnim.duration  = 0.556
		left_pathStrokeStartAnim.beginTime = 3.13
		
		let left_pathAnimationAnim : CAAnimationGroup = QCMethod.group(animations: [left_pathStrokeStartAnim], fillMode:fillMode)
		layers["left_path"]?.add(left_pathAnimationAnim, forKey:"left_pathAnimationAnim")
		
		////Right_path animation
		let right_pathStrokeEndAnim       = CAKeyframeAnimation(keyPath:"strokeEnd")
		right_pathStrokeEndAnim.values    = [0, 1]
		right_pathStrokeEndAnim.keyTimes  = [0, 1]
		right_pathStrokeEndAnim.duration  = 0.556
		right_pathStrokeEndAnim.beginTime = 3.13
		
		let right_pathAnimationAnim : CAAnimationGroup = QCMethod.group(animations: [right_pathStrokeEndAnim], fillMode:fillMode)
		layers["right_path"]?.add(right_pathAnimationAnim, forKey:"right_pathAnimationAnim")
		
		////Cloud_icon animation
		let cloud_iconOpacityAnim       = CAKeyframeAnimation(keyPath:"opacity")
		cloud_iconOpacityAnim.values    = [1, 0]
		cloud_iconOpacityAnim.keyTimes  = [0, 1]
		cloud_iconOpacityAnim.duration  = 0.151
		cloud_iconOpacityAnim.beginTime = 2.98
		
		let cloud_iconAnimationAnim : CAAnimationGroup = QCMethod.group(animations: [cloud_iconOpacityAnim], fillMode:fillMode)
		layers["cloud_icon"]?.add(cloud_iconAnimationAnim, forKey:"cloud_iconAnimationAnim")
	}
	
	//MARK: - Animation Cleanup
	
	func animationDidStop(_ anim: CAAnimation, finished flag: Bool){
		if let completionBlock = completionBlocks[anim]{
			completionBlocks.removeValue(forKey: anim)
			if (flag && updateLayerValueForCompletedAnimation) || anim.value(forKey: "needEndAnim") as! Bool{
				updateLayerValues(forAnimationId: anim.value(forKey: "animId") as! String)
				removeAnimations(forAnimationId: anim.value(forKey: "animId") as! String)
			}
			completionBlock(flag)
		}
	}
	
	func updateLayerValues(forAnimationId identifier: String){
		if identifier == "Animation"{
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["progress_background"] as! CALayer).animation(forKey: "progress_backgroundAnimationAnim"), theLayer:(layers["progress_background"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["background"] as! CALayer).animation(forKey: "backgroundAnimationAnim"), theLayer:(layers["background"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["progress_line"] as! CALayer).animation(forKey: "progress_lineAnimationAnim"), theLayer:(layers["progress_line"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["left_path"] as! CALayer).animation(forKey: "left_pathAnimationAnim"), theLayer:(layers["left_path"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["right_path"] as! CALayer).animation(forKey: "right_pathAnimationAnim"), theLayer:(layers["right_path"] as! CALayer))
			QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloud_icon"] as! CALayer).animation(forKey: "cloud_iconAnimationAnim"), theLayer:(layers["cloud_icon"] as! CALayer))
		}
	}
	
	func removeAnimations(forAnimationId identifier: String){
		if identifier == "Animation"{
			(layers["progress_background"] as! CALayer).removeAnimation(forKey: "progress_backgroundAnimationAnim")
			(layers["background"] as! CALayer).removeAnimation(forKey: "backgroundAnimationAnim")
			(layers["progress_line"] as! CALayer).removeAnimation(forKey: "progress_lineAnimationAnim")
			(layers["left_path"] as! CALayer).removeAnimation(forKey: "left_pathAnimationAnim")
			(layers["right_path"] as! CALayer).removeAnimation(forKey: "right_pathAnimationAnim")
			(layers["cloud_icon"] as! CALayer).removeAnimation(forKey: "cloud_iconAnimationAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			(layer as! CALayer).removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func progress_backgroundPath() -> UIBezierPath{
		let progress_backgroundPath = UIBezierPath(ovalIn:CGRect(x: 0, y: 0, width: 160, height: 160))
		return progress_backgroundPath
	}
	
	func backgroundPath() -> UIBezierPath{
		let backgroundPath = UIBezierPath(ovalIn:CGRect(x: 0, y: 0, width: 150, height: 150))
		return backgroundPath
	}
	
	func progress_linePath() -> UIBezierPath{
		let progress_linePath = UIBezierPath()
		progress_linePath.move(to: CGPoint(x: 80, y: 0))
		progress_linePath.addCurve(to: CGPoint(x: 0, y: 80), controlPoint1:CGPoint(x: 35.817, y: 0), controlPoint2:CGPoint(x: 0, y: 35.817))
		progress_linePath.addCurve(to: CGPoint(x: 80, y: 160), controlPoint1:CGPoint(x: 0, y: 124.183), controlPoint2:CGPoint(x: 35.817, y: 160))
		progress_linePath.addCurve(to: CGPoint(x: 160, y: 80), controlPoint1:CGPoint(x: 124.183, y: 160), controlPoint2:CGPoint(x: 160, y: 124.183))
		progress_linePath.addCurve(to: CGPoint(x: 80, y: 0), controlPoint1:CGPoint(x: 160, y: 35.817), controlPoint2:CGPoint(x: 124.183, y: 0))
		
		return progress_linePath
	}
	
	func left_pathPath() -> UIBezierPath{
		let left_pathPath = UIBezierPath()
		left_pathPath.move(to: CGPoint(x: 0, y: -0))
		left_pathPath.addCurve(to: CGPoint(x: 24.092, y: 24.092), controlPoint1:CGPoint(x: 0, y: -0), controlPoint2:CGPoint(x: 24.023, y: 24.275))
		
		return left_pathPath
	}
	
	func right_pathPath() -> UIBezierPath{
		let right_pathPath = UIBezierPath()
		right_pathPath.move(to: CGPoint(x: 0, y: 45.625))
		right_pathPath.addLine(to: CGPoint(x: 45.625, y: 0))
		
		return right_pathPath
	}
	
	func cloud_iconPath() -> UIBezierPath{
		let cloud_iconPath = UIBezierPath()
		cloud_iconPath.move(to: CGPoint(x: 69.996, y: 28.224))
		cloud_iconPath.addCurve(to: CGPoint(x: 60.667, y: 16.461), controlPoint1:CGPoint(x: 69.996, y: 22.694), controlPoint2:CGPoint(x: 65.883, y: 17.711))
		cloud_iconPath.addCurve(to: CGPoint(x: 44.333, y: 0), controlPoint1:CGPoint(x: 60.446, y: 7.791), controlPoint2:CGPoint(x: 53.18, y: 0))
		cloud_iconPath.addCurve(to: CGPoint(x: 31.5, y: 7.055), controlPoint1:CGPoint(x: 39.151, y: 0), controlPoint2:CGPoint(x: 34.48, y: 3.334))
		cloud_iconPath.addCurve(to: CGPoint(x: 24.5, y: 3.527), controlPoint1:CGPoint(x: 29.829, y: 4.927), controlPoint2:CGPoint(x: 27.44, y: 3.527))
		cloud_iconPath.addCurve(to: CGPoint(x: 15.167, y: 12.933), controlPoint1:CGPoint(x: 19.453, y: 3.527), controlPoint2:CGPoint(x: 15.167, y: 7.958))
		cloud_iconPath.addCurve(to: CGPoint(x: 15.167, y: 15.285), controlPoint1:CGPoint(x: 15.167, y: 13.366), controlPoint2:CGPoint(x: 15.105, y: 14.869))
		cloud_iconPath.addCurve(to: CGPoint(x: 10.5, y: 14.109), controlPoint1:CGPoint(x: 14.219, y: 14.403), controlPoint2:CGPoint(x: 12.797, y: 14.109))
		cloud_iconPath.addCurve(to: CGPoint(x: 0, y: 26.916), controlPoint1:CGPoint(x: 3.184, y: 14.109), controlPoint2:CGPoint(x: 0, y: 19.704))
		cloud_iconPath.addCurve(to: CGPoint(x: 13.244, y: 39.976), controlPoint1:CGPoint(x: 0, y: 34.13), controlPoint2:CGPoint(x: 5.928, y: 39.976))
		cloud_iconPath.addLine(to: CGPoint(x: 28, y: 39.976))
		cloud_iconPath.addCurve(to: CGPoint(x: 32.667, y: 35.273), controlPoint1:CGPoint(x: 30.577, y: 39.976), controlPoint2:CGPoint(x: 32.667, y: 37.87))
		cloud_iconPath.addLine(to: CGPoint(x: 32.667, y: 25.867))
		cloud_iconPath.addLine(to: CGPoint(x: 28, y: 25.867))
		cloud_iconPath.addCurve(to: CGPoint(x: 26.118, y: 25.341), controlPoint1:CGPoint(x: 26.948, y: 25.867), controlPoint2:CGPoint(x: 26.719, y: 25.947))
		cloud_iconPath.addCurve(to: CGPoint(x: 26.118, y: 23.22), controlPoint1:CGPoint(x: 25.516, y: 24.735), controlPoint2:CGPoint(x: 25.516, y: 23.75))
		cloud_iconPath.addLine(to: CGPoint(x: 35.063, y: 14.28))
		cloud_iconPath.addCurve(to: CGPoint(x: 36.191, y: 13.825), controlPoint1:CGPoint(x: 35.364, y: 13.977), controlPoint2:CGPoint(x: 35.815, y: 13.825))
		cloud_iconPath.addCurve(to: CGPoint(x: 37.319, y: 14.28), controlPoint1:CGPoint(x: 36.567, y: 13.825), controlPoint2:CGPoint(x: 37.018, y: 13.901))
		cloud_iconPath.addLine(to: CGPoint(x: 46.265, y: 23.22))
		cloud_iconPath.addCurve(to: CGPoint(x: 46.265, y: 25.417), controlPoint1:CGPoint(x: 46.866, y: 23.826), controlPoint2:CGPoint(x: 46.866, y: 24.811))
		cloud_iconPath.addCurve(to: CGPoint(x: 44.333, y: 25.867), controlPoint1:CGPoint(x: 45.663, y: 25.947), controlPoint2:CGPoint(x: 45.311, y: 25.867))
		cloud_iconPath.addLine(to: CGPoint(x: 39.667, y: 25.867))
		cloud_iconPath.addLine(to: CGPoint(x: 39.667, y: 35.273))
		cloud_iconPath.addCurve(to: CGPoint(x: 44.333, y: 39.976), controlPoint1:CGPoint(x: 39.667, y: 37.87), controlPoint2:CGPoint(x: 41.756, y: 39.976))
		cloud_iconPath.addLine(to: CGPoint(x: 58.105, y: 39.976))
		cloud_iconPath.addCurve(to: CGPoint(x: 70, y: 28.226), controlPoint1:CGPoint(x: 64.677, y: 39.963), controlPoint2:CGPoint(x: 70, y: 34.709))
		cloud_iconPath.addLine(to: CGPoint(x: 69.996, y: 28.224))
		cloud_iconPath.close()
		cloud_iconPath.move(to: CGPoint(x: 69.996, y: 28.224))
		
		return cloud_iconPath
	}
	
	
}
