//
//  ViewController.m
//  UIImageView+MKAsynchrony
//
//  Created by Max Kramer on 16/10/2012.
//  Copyright (c) 2012 Max Kramer. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+MKAsynchrony.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [imageView setImageWithURL:[NSURL URLWithString:@"https://api.browshot.com/api/v1/simple/565149?width=640&height=480&scale=&key=SoETUecnNZYIcZAAoGmECgsDBnLrPbcO&t=42"]];
    [imageView setContentMode:UIViewContentModeScaleAspectFill];
    [self.view addSubview:imageView];
    [imageView release];
    
    [self performSelector:@selector(showTwitter) withObject:nil afterDelay:3.0f];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) showTwitter {

    UIButton *button = nil;
    
    if ((button = (UIButton *) [self.view viewWithTag:05]) == nil) {
             
        button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setFrame:CGRectMake(0, -60, 320, 60)];
        [button setTitle:@"Follow me on Twitter - @_max_k!" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor colorWithRed:38.0f/255.0f green:130.0f/255.0f blue:200.0f/255.0f alpha:1.0f] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
        [button setContentMode:UIViewContentModeCenter];
        [button.titleLabel setFont:[UIFont fontWithName:@"Futura" size:14.0f]];
        [button setBackgroundColor:[UIColor colorWithWhite:1.0f alpha:0.5]];
        
        [button addTarget:self action:@selector(gotoTwitter) forControlEvents:UIControlEventTouchUpInside];
        
        [button setTag:05];
        
        [self.view addSubview:button];
        
    }
    
    [UIView animateWithDuration:0.5f animations:^{
       
        [button setFrame:CGRectMake(0, 0, 320, 60)];
        
    }];
    
}

- (void) hideTwitter {
    
    UIButton *button = (UIButton *) [self.view viewWithTag:05];
    
    [UIView animateWithDuration:0.5 animations:^{
       
        [button setFrame:CGRectMake(0, -60, 320, 60)];
        
    }];
    
}

- (void) gotoTwitter {
    
    // Follow: http://twitter.com/_max_k
        
    NSURL *twitterURL = [NSURL URLWithString:@"_max_k" relativeToURL:[NSURL URLWithString:@"http://twitter.com/"]];
    
    if ([[UIApplication sharedApplication] canOpenURL:twitterURL]) {
    
        [[UIApplication sharedApplication] openURL:twitterURL];
    
    }
    
    else {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Twitter" message:@"Please follow me on Twitter: @_max_k" delegate:nil cancelButtonTitle:@"Okay." otherButtonTitles:nil];
        
        [alert show];
        [alert release];
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
