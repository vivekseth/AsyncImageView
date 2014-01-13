//
//  AsyncImageView.m
//  AsyncImageLoad
//
//  Created by Vivek Seth on 1/13/14.
//  Copyright (c) 2014 Vivek Seth. All rights reserved.
//

#import "AsyncImageView.h"

@implementation AsyncImageView

@synthesize imageURL = _imageURL;

- (void) setImageURL:(NSString *)imageURL {
    NSURL * url = [NSURL URLWithString:imageURL];
    NSMutableURLRequest * req = [NSMutableURLRequest requestWithURL:url];
    [req setHTTPMethod:@"GET"];
    
    dispatch_queue_t backgroundQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
    dispatch_async(backgroundQueue, ^{
        if (debug) {
            sleep(2);
        }
        NSURLResponse * res;
        NSError *error;
        NSData * data = [NSURLConnection sendSynchronousRequest:req returningResponse:&res error:&error];
        UIImage * image = [UIImage imageWithData:data];
        dispatch_sync(dispatch_get_main_queue(), ^{
            self.image = image;
        });
    });
}


@end
