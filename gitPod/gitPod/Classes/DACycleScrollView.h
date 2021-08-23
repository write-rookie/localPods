//
//  DACycleScrollView.h
//  gitPod_Example
//
//  Created by zpf_fly on 2021/8/23.
//  Copyright © 2021 git. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class DACycleScrollView; // @class只是告诉编译器，这里声明了一个名为cycleScrollView的类

@protocol DACycleScrollViewDelegate <NSObject>

@optional

/** 点击图片回调 */
- (void)cycleScrollView:(DACycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index;

/** 图片滚动回调 */
- (void)cycleScrollView:(DACycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index;

@end

@interface DACycleScrollView : UIView

/** 初始轮播图（推荐使用） */
+ (instancetype)cycleScrollViewWithFrame:(CGRect)frame delegate:(id<DACycleScrollViewDelegate>)delegate placeholderImage:(UIImage *)placeholderImage;

/** 网络图片 url string 数组 */
@property (nonatomic, strong) NSArray *imageURLStringsGroup;

/** 每张图片对应要显示的文字数组 */
@property (nonatomic, strong) NSArray *titlesGroup;

/** 本地图片数组 */
@property (nonatomic, strong) NSArray *localizationImageNamesGroup;

//////////////////////  滚动控制API //////////////////////

/** 自动滚动间隔时间,默认2s */
@property (nonatomic, assign) CGFloat autoScrollTimeInterval;

/** 是否无限循环,默认Yes */
@property (nonatomic,assign) BOOL infiniteLoop;

/** 是否自动滚动,默认Yes */
@property (nonatomic,assign) BOOL autoScroll;

/** 图片滚动方向，默认为水平滚动 */
@property (nonatomic, assign) UICollectionViewScrollDirection scrollDirection;

@property (nonatomic, weak) id<DACycleScrollViewDelegate> delegate;

/** block方式监听点击 */
@property (nonatomic, copy) void (^clickItemOperationBlock)(NSInteger currentIndex);

/** block方式监听滚动 */
@property (nonatomic, copy) void (^itemDidScrollOperationBlock)(NSInteger currentIndex);

//////////////////////  自定义样式API  //////////////////////

/** 轮播图片的ContentMode，默认为 UIViewContentModeScaleToFill */
@property (nonatomic, assign) UIViewContentMode bannerImageViewContentMode;

/** 占位图，用于网络未加载到图片时 */
@property (nonatomic, strong) UIImage *placeholderImage;
@end

NS_ASSUME_NONNULL_END
