//
//  AsyncImageView.h
//  AsyncImageLoad
//
//  Created by Vivek Seth on 1/13/14.
//  Copyright (c) 2014 Vivek Seth. All rights reserved.
//

#import <UIKit/UIKit.h>

//this variable will turn off delay
static BOOL debug = true;

@interface AsyncImageView : UIImageView

@property (nonatomic, strong) NSString * imageURL;

@end
