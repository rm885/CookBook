//
//  WebViewViewController.h
//  CookBook
//
//  Created by Mfon,Robert on 6/5/14.
//  Copyright (c) 2014 Mfon,Robert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;


- (IBAction)refresh:(id)sender;


@end
