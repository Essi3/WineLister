//
//  TableViewCell.h
//  Labb2
//
//  Created by Elisabeth Roozen on 2019-02-20.
//  Copyright © 2019 Elisabeth Roozen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *cellImageView;
@property (strong, nonatomic) IBOutlet UILabel *cellTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *cellDescriptionLabel;


@end

NS_ASSUME_NONNULL_END
