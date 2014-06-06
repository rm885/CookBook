//
//  CookingSitesViewController.h
//  CookBook
//
//  Created by Mfon,Robert on 6/5/14.
//  Copyright (c) 2014 Mfon,Robert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Websites.h"

@interface CookingSitesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) Websites *database;
@property (strong, nonatomic) Websites *selectedWebsite;

- (IBAction)createNewWebsite:(id)sender;



@end
