//
//  WineListTableViewController.m
//  Labb2
//
//  Created by Elisabeth Roozen on 2019-02-20.
//  Copyright © 2019 Elisabeth Roozen. All rights reserved.
//

#import "WineListTableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"
#import "AddWineViewController.h"


@interface WineListTableViewController (){
 
    NSMutableArray *filteredWines;
    BOOL isFiltered;
}

@end

@implementation WineListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"App has been created");
    
    //searchBar
    isFiltered = false;
    self.searchBar.delegate = self;
    
    //populate the arrays from the .h-file
    title = @[@"Barolo Villaforte",
              @"Chianti Castelsina Riserva",
              @"Lioco Pinot Noir",
              @"Grande Crevette",
              @"Keller Riesling",
              @"Pol Roger Brut Réserve",
              @"Bandol",
              @"Majella",
              @"Maquis",
              @"Aniara Barrique"];
    description = @[@"Italien 2014",
                    @"Italien 2014",
                    @"USA 2016",
                    @"Frankrike 2017",
                    @"Tyskland 2017",
                    @"Frankrike, Champagne",
                    @"Frankrike 2017",
                    @"Australien 2015",
                    @"Chile 2016",
                    @"Sverige, Skåne län"];
    image = @[@"Barolo.jpg",
              @"Chianti.jpg",
              @"Lioco.jpg",
              @"GrandeCrevette.jpg",
              @"KellerRiesling.jpg",
              @"PolRoger.jpg",
              @"Bandol.jpg",
              @"Majella.jpg",
              @"Maquis.jpg",
              @"AniaraBarrique.jpg"];
    
    //delete bar navigation item text
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    
}

#pragma mark - Searchbar

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    if(searchText.length == 0) {
        isFiltered = false;
    } else {
        isFiltered = true;
        filteredWines = [[NSMutableArray alloc]init];
        
        for(NSString *wine in title) {
            NSRange nameRange = [wine rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if (nameRange.location != NSNotFound) {
                [filteredWines addObject:wine];
            }
        }
    }
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //TODO return the amount of wines we have stored in the app
    NSLog(@"total wines are %ld", title.count);
    
    if (isFiltered) {
        return filteredWines.count;
    }
    return title.count;
}

    //reuses existing table view cells instead of constantly creating new ones.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WineCell" forIndexPath:indexPath];
    
    if (isFiltered) {
        cell.cellTitleLabel.text = filteredWines[indexPath.row];
        cell.cellDescriptionLabel.text = filteredWines[indexPath.row];
    
    }
    else {
    //place titles from array in index place row until nomore (should be 6)
    cell.cellTitleLabel.text = title[indexPath.row];
    cell.cellDescriptionLabel.text = description[indexPath.row];
    cell.cellDescriptionLabel.textColor = [UIColor darkGrayColor];
    //turn it into iamge
    cell.cellImageView.image = [UIImage imageNamed:image[indexPath.row]];
    }
    NSLog(@"all wines appeared in app");
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showDetailSegue"]) {
       
        DetailViewController *detailViewController = [segue destinationViewController];
        NSIndexPath *myIndexpath = [self.tableView indexPathForSelectedRow];
        
        int row = (int)[myIndexpath row];
        detailViewController.detailArray = @[title[row], description[row], image[row]];
        NSLog(@"showDetailSegue");
    }
    
    //TODO addToListSegue
}


@end
