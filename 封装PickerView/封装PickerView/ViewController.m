//
//  ViewController.m
//  封装PickerView
//
//  Created by xby on 2016/12/19.
//  Copyright © 2016年 xby. All rights reserved.
//

#import "ViewController.h"
#import "XBYPickerView.h"
@interface ViewController ()
//@property (nonatomic,weak) UIView *grayBgView;
@property (nonatomic,weak) XBYEditPickerView *editView;
@property (nonatomic,weak) UILabel *label;
@property (nonatomic,weak) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(0, 0, 100, 100);
    button.backgroundColor=[UIColor redColor];
    [self.view addSubview:button];
    self.button=button;
    [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)clickBtn{
    [XBYPickerView showEditPickerViewWithController:self andData:@[@"早晨",@"中午",@"下午"] andBlock:^(NSString *temp) {
        [self.button setTitle:temp forState:UIControlStateNormal];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
