//
//  Websites.h
//  CookBook
//
//  Created by Mfon,Robert on 6/5/14.
//  Copyright (c) 2014 Mfon,Robert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Websites : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSMutableArray *websites;

- (id)initWithTitle:(NSString *)title;
- (void)newWebsite:(NSString *)website;
- (BOOL)deleteWebsite:(NSString *)websiteToBeDeleted;

@end
