//
//  CookingSitesViewController.m
//  CookBook
//
//  Created by Mfon,Robert on 6/5/14.
//  Copyright (c) 2014 Mfon,Robert. All rights reserved.
//

#import "CookingSitesViewController.h"

@interface CookingSitesViewController ()

@end

@implementation CookingSitesViewController


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self  = [super initWithCoder:aDecoder];
    if (self)
    {
        _database = [[Websites alloc] init];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [_tableView reloadData];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _database.websites.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil)
        
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    }
    
    Websites *website = [_database.websites objectAtIndex:indexPath.row];
    cell.textLabel.text = website.title;
    
    return cell;
}



-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        Websites *website = [_database.websites objectAtIndex:indexPath.row];
        [_database deleteWebsite:website];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (IBAction)createNewWebsite:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] init];
    [alert setDelegate:self];
    [alert setTitle:@"New Website"];
    [alert setMessage:@"Please enter a new website"];
    [alert setMessage:@"ex. http://www.apple.com/"];
    [alert addButtonWithTitle:@"Cancel"];
    [alert addButtonWithTitle:@"Create"];
    [alert setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    if([alertView.title isEqualToString:@"New Website"] && buttonIndex == 1)
    {
        UITextField *textField = [alertView textFieldAtIndex:0];
        

    
    }
}
@end













