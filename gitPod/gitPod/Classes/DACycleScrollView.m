//
//  DACycleScrollView.m
//  gitPod_Example
//
//  Created by zpf_fly on 2021/8/23.
//  Copyright © 2021 git. All rights reserved.
//

#import "DACycleScrollView.h"

@implementation DACycleScrollView

+ (instancetype)cycleScrollViewWithFrame:(CGRect)frame delegate:(id<DACycleScrollViewDelegate>)delegate placeholderImage:(UIImage *)placeholderImage {
    
    DACycleScrollView *cycleScrollView = [[self alloc] initWithFrame:frame];
    cycleScrollView.delegate = delegate;
    cycleScrollView.placeholderImage = placeholderImage;
    
    return cycleScrollView;
}

@end
