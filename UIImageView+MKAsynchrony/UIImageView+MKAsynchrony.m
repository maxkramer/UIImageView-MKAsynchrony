//
//  UIImageView+MKAsynchrony.m
//  UIImageView+MKAsynchrony
//
//  Created by Max Kramer on 16/10/2012.
//  Copyright (c) 2012 Max Kramer. All rights reserved.
//

#import "UIImageView+MKAsynchrony.h"

@implementation UIImageView (MKAsynchrony)

- (void) setImageWithURL:(NSURL *)_url placeholderImage:(UIImage *)_placeholder {
    
    [self setImage:_placeholder];
    
    [self setImageWithURL:_url];
    
}

- (void) setImageWithURL:(NSURL *) _url {
    
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:_url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30.0f] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error)
            return;
        
        [self setImage:[UIImage imageWithData:data]];
        
    }];
    
}

- (void) dealloc {
    [super dealloc];
}

@end
