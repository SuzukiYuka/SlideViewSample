//
//  ViewController.h
//  SlideViewSample
//
//  Created by nagata on 6/13/15.
//  Copyright (c) 2015 nagata. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIView *aView;
    
    //タップした時の座標を保存する
    CGFloat x;
    CGFloat y;
}


@end

