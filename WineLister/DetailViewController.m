//
//  DetailViewController.m
//  Labb2
//
//  Created by Elisabeth Roozen on 2019-02-20.
//  Copyright © 2019 Elisabeth Roozen. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"All information from detailarray is being placed in detailview");
    self.headerImageView.image = [UIImage imageNamed:@"header.jpg"];
    self.detailTitleLabel.text = _detailArray[0];
    self.detailDescriptionLabel.text = _detailArray[1];
    self.detailImageView.image = [UIImage imageNamed:_detailArray[2]];
   
    self.navigationItem.title = _detailArray[0];
    [self.detailButton setTitle:@"Go to Store" forState:UIControlStateNormal];
    NSLog(@"detailButtonPressed: go to Systembolaget");
    
    if ([self.detailTitleLabel.text isEqualToString:@"Barolo Villaforte"]) {
        self.detailTextView.text = @"Kryddig, nyanserad smak med inslag av fat, torkade körsbär, choklad, rosor, nypon, lakrits och kanel. Serveras vid cirka 18°C till smakrika rätter av mörkt kött.";
    }
    
    if ([self.detailTitleLabel.text isEqualToString:@"Chianti Castelsina Riserva"]) {
        self.detailTextView.text = @"Kryddig smak med fatkaraktär, inslag av torkade körsbär, salvia, muskot, kardemumma och apelsinskal. Serveras vid 16-18°C till rätter av lamm- eller nötkött.";
    }
    
    if ([self.detailTitleLabel.text isEqualToString:@"Lioco Pinot Noir"]) {
        self.detailTextView.text = @"Komplex, kryddig, bärig smak med fatkaraktär, inslag av jordgubbar, lingon, nektarin, nougat, sandelträ, vanilj och pomerans. Serveras vid cirka 16°C till feta eller vilda fåglar, eller till inte alltför smakrika rätter av fläsk- eller lammkött.";
    }
    
    if ([self.detailTitleLabel.text isEqualToString:@"Grande Crevette"]) {
        self.detailTextView.text = @"Ungdomlig, aromatisk, mycket frisk smak med inslag av passionsfrukt, svartvinbärsblad, päron och citron. Serveras vid cirka 8°C till rätter av fisk och skaldjur.";
    }
    
    if ([self.detailTitleLabel.text isEqualToString:@"Keller Riesling"]) {
        self.detailTextView.text = @"Fruktig, mycket frisk smak med inslag av päron, honung, gröna äpplen, mineral och lime. Serveras vid 8-10°C som aperitif eller till rätter av fisk eller skaldjur.";
    }
    
    if ([self.detailTitleLabel.text isEqualToString:@"Pol Roger Brut Réserve"]) {
        self.detailTextView.text = @"Nyanserad, fruktig, mycket frisk smak med inslag av gula äpplen, nougat, ljust bröd, mineral och citron. Serveras vid 8-10°C som aperitif eller till rätter av fisk eller skaldjur.";
    }
    
    if ([self.detailTitleLabel.text isEqualToString:@"Bandol"]) {
        self.detailTextView.text = @"Bärig, nyanserad, mycket frisk smak med inslag av röda vinbär, lavendel, vattenmelon, örter och blodgrapefrukt. Serveras vid 8-10°C som sällskapsdryck, till fisk- och kycklingrätter eller sallader.";
    }
    
    if ([self.detailTitleLabel.text isEqualToString:@"Majella"]) {
        self.detailTextView.text = @"Nyanserad, fruktig smak med rostad fatkaraktär, inslag av svarta vinbär, plommon, mintchoklad, vanilj, örter och ceder. Serveras vid cirka 18°C till rätter av mörkt kött.";
    }
    
    if ([self.detailTitleLabel.text isEqualToString:@"Maquis"]) {
        self.detailTextView.text = @"Fruktig smak med inslag av svarta vinbär, granatäpplen, jordgubbar, persika och blodapelsin. Serveras vid cirka 8°C som sällskapsdryck, eller till fiskrätter, sallader och kyckling.";
    }
    
    if ([self.detailTitleLabel.text isEqualToString:@"Aniara Barrique"]) {
        self.detailTextView.text = @"Fruktig, påtagligt frisk smak med fatkaraktär, inslag av gröna äpplen, bivax, kryddor och citron. Serveras vid 8-10°C till smakrika rätter av fisk eller till ljust kött.";
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)detailButtonPressed:(id)sender {
}
@end
