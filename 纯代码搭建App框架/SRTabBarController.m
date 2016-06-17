//
//  SRTabBarController.m
//  纯代码搭建App框架
//
//  Created by Mag1cPanda on 16/6/17.
//  Copyright © 2016年 Mag1cPanda. All rights reserved.
//

#import "SRTabBarController.h"
#import "SRSwitchViewController.h"
#import "SRNavigationController.h"
#import "TheaterViewController.h"
#import "MineViewController.h"
#import "LocationViewController.h"
#import "MovieFirstViewController.h"
#import "MovieSecondViewController.h"
#import "MovieThirdViewController.h"
#import "FoundFirstViewController.h"
#import "FoundSecondViewController.h"

@interface SRTabBarController ()

@property (strong, nonatomic) SRNavigationController *locationNavController;
@property (strong, nonatomic) SRSwitchViewController *movieController;
@property (strong, nonatomic) TheaterViewController *theaterViewController;
@property (strong, nonatomic) SRSwitchViewController *foundController;
@property (strong, nonatomic) MineViewController *mineViewController;

@end

@implementation SRTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadSubViewControllers];
    self.tabBar.tintColor = [UIColor colorWithRed:208.0f/255 green:38.0f/255 blue:43.0f/255 alpha:1.0f];
    self.tabBar.barTintColor = [UIColor whiteColor];
    //    self.delegate = self;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showLocationViewWithNotification:) name:@"PresentLocationViewController" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (SRNavigationController *)locationNavController {
    if (nil == _locationNavController) {
        LocationViewController *locationViewController = [LocationViewController new];
        _locationNavController = [[SRNavigationController alloc]initWithRootViewController:locationViewController];
    } else {
        [_locationNavController popToRootViewControllerAnimated:YES];
    }
    return _locationNavController;
}

- (SRSwitchViewController *)movieController{
    if (nil == _movieController) {
        _movieController = [[SRSwitchViewController alloc]init];
        [_movieController setLeftNaviItemWithTitle:@"苏州 >" size:12 imageName:nil];
        [_movieController setRightNaviItemWithTitle:nil imageName:@"btn_search.png"];
        MovieFirstViewController *firstVC = [[MovieFirstViewController alloc] init];
        MovieSecondViewController *secondVC = [[MovieSecondViewController alloc] init];
        MovieThirdViewController *thirdVC = [[MovieThirdViewController alloc] init];
        [_movieController setViewControllerArray:@[firstVC, secondVC, thirdVC]];
        [_movieController setTitleArray:@[@"热映", @"待映", @"影库"]];
        _movieController.tabBarItem.title = @"电影";
        _movieController.tabBarItem.image = [UIImage imageNamed:@"icon_movie"];
    }
    return _movieController;
}

- (TheaterViewController *)theaterViewController{
    if (nil == _theaterViewController) {
        _theaterViewController = [[TheaterViewController alloc] init];
        _theaterViewController.tabBarItem.title = @"影院";
        _theaterViewController.tabBarItem.image = [UIImage imageNamed:@"icon_theater"];
    }
    return _theaterViewController;
}

- (SRSwitchViewController *)foundController{
    if (nil == _foundController) {
        _foundController = [[SRSwitchViewController alloc]init];
        FoundFirstViewController *foundFirstVC = [FoundFirstViewController new];
        FoundSecondViewController *foundSecVC = [FoundSecondViewController new];
        [_foundController setViewControllerArray:@[foundFirstVC,foundSecVC]];
        [_foundController setTitleArray:@[@"推荐",@"社区"]];
        _foundController.itemWidth = 60;
        _foundController.tabBarItem.title = @"发现";
        _foundController.tabBarItem.image = [UIImage imageNamed:@"icon_found"];
        
    }
    return _foundController;
}

- (MineViewController *)mineViewController{
    if (nil == _mineViewController) {
        _mineViewController = [[MineViewController alloc] init];
        _mineViewController.tabBarItem.title = @"我的";
        _mineViewController.tabBarItem.image = [UIImage imageNamed:@"icon_mine"];
    }
    return _mineViewController;
}

- (void)loadSubViewControllers{
    //懒加载需要用点方法实现取方法
    UINavigationController *vc1 = [[UINavigationController alloc]initWithRootViewController:self.movieController];
    UINavigationController *vc2 = [[UINavigationController alloc]initWithRootViewController:self.theaterViewController];
    UINavigationController *vc3 = [[UINavigationController alloc]initWithRootViewController:self.foundController];
    UINavigationController *vc4 = [[UINavigationController alloc]initWithRootViewController:self.mineViewController];
    
    self.viewControllers = @[vc1,vc2,vc3,vc4];
}

#pragma mark - Notification Methods
- (void)showLocationViewWithNotification:(NSNotification *)notification
{
    if(self.presentedViewController)
        [self dismissViewControllerAnimated:NO completion:nil];
    [self presentViewController:self.locationNavController animated:YES completion:nil];
}




@end
