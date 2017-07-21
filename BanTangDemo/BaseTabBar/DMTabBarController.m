//
//  DMTabBarController.m
//  BanTangDemo
//
//  Created by MacBook on 2017/7/20.
//  Copyright © 2017年 MacBook. All rights reserved.
//

#import "DMTabBarController.h"
#import "DMHomePageController.h"
@interface DMTabBarController ()

@end

@implementation DMTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //背景颜色
    self.tabBar.backgroundImage  = [UIImage imageNamed:@"tabbar_back.png"];
    
    //默认的字体颜色
    UIColor * tabBarTitleColor = [UIColor colorWithRed:102/255.0 green:102/255.0 blue:102/255.0 alpha:1];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       tabBarTitleColor, NSForegroundColorAttributeName,
                                                       nil] forState:UIControlStateNormal];
    //选中时的字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       MainColor, NSForegroundColorAttributeName,
                                                       nil] forState:UIControlStateSelected];
    //首页
    [self setupFirstChildVC:[[DMHomePageController alloc]init] title:@"首页" image:@"tab_首页" selectedImage:@"tab_首页_pressed"];
}


- (void)setupFirstChildVC:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    [self addChildViewController:vc];
    // 设置子控制器的tabBarItem
    vc.tabBarItem.title         = title;
    vc.tabBarItem.image         = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}
@end
