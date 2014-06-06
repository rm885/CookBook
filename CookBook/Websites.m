//
//  Websites.m
//  CookBook
//
//  Created by Mfon,Robert on 6/5/14.
//  Copyright (c) 2014 Mfon,Robert. All rights reserved.
//

#import "Websites.h"

@implementation Websites

- (id)initWithTitle:(NSString *)title
{
    self  = [super init];
    
    if(self)
    {
        _websites = [[NSMutableArray alloc] init];
        _title = title;
    }
}

- (void)newWebsite:(Websites *)website
{
    [_websites addObject:website];
}

- (BOOL)deleteWebsite:(Websites *)websiteToBeDeleted;
{
    for(NSInteger i = 0; i < _websites.count; i++)
    {
        Websites *website = [_websites objectAtIndex:i];
        if([website isEqual:websiteToBeDeleted])
        {
            [_websites removeObject:websiteToBeDeleted];
            return YES;
        }
    }
    return NO;
}

@end
