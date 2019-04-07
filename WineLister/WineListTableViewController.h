//
//  WineListTableViewController.h
//  Labb2
//
//  Created by Elisabeth Roozen on 2019-02-20.
//  Copyright © 2019 Elisabeth Roozen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WineListTableViewController : UITableViewController <UISearchBarDelegate>{
    
    //create arrays and reference them to display within the objects
    NSArray *title;
    NSArray *description;
    NSArray *image;
    
}

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;



@end

NS_ASSUME_NONNULL_END
