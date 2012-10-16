//
//  UIImageView+MKAsynchrony.h
//  UIImageView+MKAsynchrony
//
//  Created by Max Kramer on 16/10/2012.
//  Copyright (c) 2012 Max Kramer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (MKAsynchrony) <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

- (void) setImageWithURL:(NSURL *) _url;

- (void) setImageWithURL:(NSURL *) _url placeholderImage:(UIImage *) _placeholder;

@end