//
//  AddWineViewController.h
//  Labb2
//
//  Created by Elisabeth Roozen on 2019-02-21.
//  Copyright © 2019 Elisabeth Roozen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddWineViewController : UIViewController

@property (strong, nonatomic) NSArray *addWineArray;


@property (strong, nonatomic) IBOutlet UIImageView *headerImageView;
@property (strong, nonatomic) IBOutlet UIImageView *defaultImageView;
@property (strong, nonatomic) IBOutlet UITextField *addWineTitleTextField;
@property (strong, nonatomic) IBOutlet UITextField *addWineDescriptionTextField;
@property (strong, nonatomic) IBOutlet UITextView *addWineTextView;
@property (strong, nonatomic) IBOutlet UIButton *addWineButton;

- (IBAction)addWineToListButtonPressed:(id)sender;

@end

NS_ASSUME_NONNULL_END
