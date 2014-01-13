//
//  ViewController.h
//  AsyncImageLoad
//
//  Created by Vivek Seth on 1/13/14.
//  Copyright (c) 2014 Vivek Seth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncImageView.h"

@interface ViewController : UIViewController

@property (nonatomic, weak, setter = setImageURL:) IBOutlet AsyncImageView * imageView;

@end
