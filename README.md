# QuartzCode介绍

QuartzCode一款快速，轻量，强大的动画工具，可快速得到原生的ObjC/Siwft代码。

这是QuartzCode实现的动画效果：

![](http://upload-images.jianshu.io/upload_images/747651-a9a7a0578fe8aa6d.gif?imageMogr2/auto-orient/strip)
![](http://upload-images.jianshu.io/upload_images/747651-fad1f9fd1a7c3c73.gif?imageMogr2/auto-orient/strip)
![](http://i2.wp.com/www.quartzcodeapp.com/wp-content/uploads/2014/09/water-fill-animation-220.gif)
![](http://i0.wp.com/www.quartzcodeapp.com/wp-content/uploads/2014/10/watch2.gif)
![](http://i2.wp.com/www.quartzcodeapp.com/wp-content/uploads/2014/09/iphone-vote-animate-example.gif)

软件布局，如下图：

![QuartzCode](http://i1.wp.com/www.quartzcodeapp.com/wp-content/uploads/2015/05/main1.3_3.png?w=1138)

更多介绍可以到官网查阅：[QuartzCode](http://www.quartzcodeapp.com/)

# QuartzCode实践

这是本次教程要实现的动画效果，这个图是在Google上扒的，已无法知道出处。

![](http://upload-images.jianshu.io/upload_images/747651-84019157b3d12c74.gif?imageMogr2/auto-orient/strip)

## 解析动画

下载.gif,用预览打开，找出动画的关键帧。这个比较简单就没什么好讲的。贴几张关键帧的照片就可以了。

![第一帧](http://upload-images.jianshu.io/upload_images/747651-2a1b31dd28f6848c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

动画开始的第一帧
，由一个背景圆和中间的icon组成。

![](http://upload-images.jianshu.io/upload_images/747651-1f4edda3328aef22.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

这一帧进度条开始运动，进度条运动的时候并带旋转。同时进度条背景开始显现。

![](http://upload-images.jianshu.io/upload_images/747651-c2e23a09e31e9238.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

![](http://upload-images.jianshu.io/upload_images/747651-551c7f4d1e3dec81.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

进度条显示完之后，进度条背景和进度条逐渐消失。中间的iCon消失，勾开始显现，圆的背景色逐渐改变为橙色。

![](http://upload-images.jianshu.io/upload_images/747651-d23b00d666b24390.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)

最后一帧效果

## 开始动手

创建视图，如下：

![](http://upload-images.jianshu.io/upload_images/747651-f2d7da6107d6b498.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* `progress_background`对应进度条背景
* `background`对应中间的大圆
* `progress_line`对应滚动的进度条
* `left_path`对应勾的左边
* `right_path`对应勾的右边
* `cloud_icon`对应云图标

这几个视图很好创建，无非就是调位置和颜色。

需要的注意的`progress_background`和`progress_line`的默认透明度设置为0，在动画中添加透明度，达到渐显的效果。

将`left_path`和`right_path`和`progress_line`的`start`和`end`属性设置为1,1的`stroke`属性中的`start`和`end`属性设置为0,0或1,1，以保证勾并没有绘制，后面添加动画的时候再绘制。

![](http://upload-images.jianshu.io/upload_images/747651-4ba6a82e059cc166.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/600)

### 添加动画

所有的动画和时间轴预览

![](http://upload-images.jianshu.io/upload_images/747651-2aa88772d253980d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/600)

#### Progress_background动画设置

为`Progress_background动画配置`添加`Opacity`属性。

![](http://upload-images.jianshu.io/upload_images/747651-3f5838ae015ded2d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

如图所示有1，2，3，4四个节点。1节点的`value`值设置为0，2节点的`value`值设置为1。这样渐显的效果就有了。3节点设置为1保持不变，4节点设置为0，以达到渐隐的效果。

#### progress_line动画设置

这个动画只有进度条稍微复杂一点。进度条所有动画预览，下图：

![](http://upload-images.jianshu.io/upload_images/747651-9f088bd67dc92570.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/600)

第一步设置`Stroke start`属性，From Value为第一个节点，To Value为第二个节点。时间可以自己调整。这样进度条顺时针旋转的动画就完成了。

![](http://upload-images.jianshu.io/upload_images/747651-d05e2926800cb83c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![](http://upload-images.jianshu.io/upload_images/747651-4cb164fb43cede09.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

第二步设置`Transform`的`To value`节点，设置旋转360度旋转。

![](http://upload-images.jianshu.io/upload_images/747651-a302da49668a4fbc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

其它的动画属性，原理类似，就不一一列举了。最后导出代码，在模拟器的运行，不知道为什么在100%尺寸的模拟器上会有卡顿现象，但是我用真机和50%尺寸的模拟器就不会卡顿，如有知道原因的小伙伴，请留言。最后效果图如下：

![](http://upload-images.jianshu.io/upload_images/747651-669aea065492ca02.gif?imageMogr2/auto-orient/strip)

