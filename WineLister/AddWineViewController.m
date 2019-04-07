//
//  AddWineViewController.m
//  Labb2
//
//  Created by Elisabeth Roozen on 2019-02-21.
//  Copyright © 2019 Elisabeth Roozen. All rights reserved.
//

#import "AddWineViewController.h"

@interface AddWineViewController ()

@end

@implementation AddWineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.headerImageView.image = [UIImage imageNamed:@"header.jpg"];
    [self.addWineButton setTitle:@"Add to List" forState:UIControlStateNormal];
    NSLog(@"detailButtonPressed: add to list");
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addWineToListButtonPressed:(id)sender {
    NSLog(@"Not ready yet, sorry!");
}
@end
