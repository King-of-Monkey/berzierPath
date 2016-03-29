//
//  RootViewController.m
//  UIBezierPath
//
//  Created by WKY on 16/3/29.
//  Copyright © 2016年 WKY. All rights reserved.
//

#import "RootViewController.h"
#import "FaceView.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    FaceView *faceView = [[FaceView alloc]initWithFrame:self.view.bounds];
    
    [self.view addSubview:faceView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
