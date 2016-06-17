

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNaviTitle:@"当前城市—苏州" size:16];
    [self setLeftNaviItemWithTitle:nil imageName:@"icon_header_pop.png"];
}

- (void)leftItemTapped{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
