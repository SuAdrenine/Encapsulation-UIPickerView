//
//  XBYPickerView.h
//  封装PickerView
//
//  Created by xby on 2016/12/19.
//  Copyright © 2016年 xby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBYEditPickerView.h"

@interface XBYPickerView : UIView

@property (nonatomic,weak) UIView *grayBgView;
@property (nonatomic,weak) XBYEditPickerView *editView;
@property (nonatomic,weak) UIViewController *controller;
@property (nonatomic,copy)void (^bottomResultPresent)(NSString *);
@property (nonatomic,strong) UITapGestureRecognizer *recognizer;

+(instancetype)showWithController:(UIViewController *)controller andData:(NSArray *)data;
-(instancetype)initWithController:(UIViewController *)controller;

+(void)showEditPickerViewWithController:(UIViewController *)controller andData:(NSArray *)data andBlock:(void (^)(NSString *temp))bottomResultPresent;

@end
