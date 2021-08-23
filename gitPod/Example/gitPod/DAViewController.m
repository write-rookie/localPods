//
//  DAViewController.m
//  gitPod
//
//  Created by git on 08/23/2021.
//  Copyright (c) 2021 git. All rights reserved.
//

#import "DAViewController.h"
#import "DACycleScrollView.h"

@interface DAViewController ()

@end

@implementation DAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = UIColor .whiteColor;
    DACycleScrollView *cycleView = [[DACycleScrollView alloc]initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen]bounds].size.height - 100) /2 )];
    cycleView.backgroundColor = UIColor .darkGrayColor;
    [self.view addSubview:cycleView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
