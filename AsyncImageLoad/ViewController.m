//
//  ViewController.m
//  AsyncImageLoad
//
//  Created by Vivek Seth on 1/13/14.
//  Copyright (c) 2014 Vivek Seth. All rights reserved.
//

#import "ViewController.h"

#define IMAGE_URL @"http://www.online-image-editor.com/styles/2013/images/example_image.png"
#define NYTIMES_IMAGE_URL @"http://www.hhhta.com/wp-content/uploads/2013/08/nyt-t.gif"

@interface ViewController ()
@end

@implementation ViewController

@synthesize imageView = _imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.imageView setImageURL: NYTIMES_IMAGE_URL];
}

@end
