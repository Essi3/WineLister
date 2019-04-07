//
//  DetailViewController.h
//  Labb2
//
//  Created by Elisabeth Roozen on 2019-02-20.
//  Copyright © 2019 Elisabeth Roozen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

//all info in cell will be stored in this array
@property (strong, nonatomic) NSArray *detailArray;

@property (strong, nonatomic) IBOutlet UIImageView *headerImageView;
@property (strong, nonatomic) IBOutlet UIImageView *detailImageView;
@property (strong, nonatomic) IBOutlet UILabel *detailTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UITextView *detailTextView;
@property (strong, nonatomic) IBOutlet UIButton *detailButton;

- (IBAction)detailButtonPressed:(id)sender;

@end

NS_ASSUME_NONNULL_END
