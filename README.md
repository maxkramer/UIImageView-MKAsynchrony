# UIImageView+MKAsynchrony

UIImageView+MKAsynchrony is an easy to implement alternative to AFNetworking's UIImageView+AFNetworking. 

This simple category allows you to easily and asynchronously download an image from the web and place it into your UIImageView.

The major difference between this category and [AFNetworking's](https://github.com/AFNetworking/AFNetworking/blob/master/AFNetworking/UIImageView%2BAFNetworking.h) is that this category does not require you to have to fully integrate the AFNetworking framework in order to use one single class. Instead, this class is a lightweight alternative that runs straight off of objective-c's own NSURLConnection implementation.

## Defined Methods

    // ability to asynchronously set the UIImageView's image with an image from the web .
    - (void) setImageWithURL:(NSURL *) _url;            

	// ability to asynchronously set the UIImageView's image with an image from the web with use of a placeholder while the image downloads.
    - (void) setImageWithURL:(NSURL *) _url placeholderImage:(UIImage *) _placeholder;

## Basic usage

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)]; //declare the UIImageView
    //use either the -setImageWithURL: or -setImageWithURL:placeholderImage: methods
    [imageView setImageWithURL:[NSURL URLWithString:@"https://api.browshot.com/api/v1/simple/565149?width=640&height=480&scale=&key=SoETUecnNZYIcZAAoGmECgsDBnLrPbcO&t=42"]];
    [imageView setContentMode:UIViewContentModeScaleAspectFill];
    [self.view addSubview:imageView];
    [imageView release];
    
## Fin

From here, I am not really looking to add any further methods to the category, but feel free to add any issues or pull requests if you have any issues to report or would like to add some features to the category.

Furthermore, feel free to email me through my [website](http://maxk.me) or through [twitter](http://twitter.com/_max_k).

Enjoy!