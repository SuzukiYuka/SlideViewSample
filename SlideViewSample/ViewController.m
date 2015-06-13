//
//  ViewController.m
//  SlideViewSample
//
//  Created by nagata on 6/13/15.
//  Copyright (c) 2015 nagata. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //最初はviewが見えないようにする
    aView.frame = CGRectMake(-aView.frame.size.width, 0, aView.frame.size.width, self.view.frame.size.height);
}

//タッチしたときに呼ばれるメソッド
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    //タッチしたときの座標を保存する
    x = location.x;
    y = location.y;
}


//指を動かしているときに呼ばれる
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    
    if (location.x -x >20 ){ //もし指を右に20px以上動かしたら
        
        //スライドしていくアニメーションをつけてviewを表示する
        [UIView animateWithDuration:0.3 animations:^{
            aView.frame = CGRectMake(0, 0, aView.frame.size.width, self.view.frame.size.height);
            
        }];
    }
    
    if (x -location.x >20 ) { //もし指を左に20px以上動かしたら
        [UIView animateWithDuration:0.3 animations:^{
            
            //スライドしていくアニメーションをつけてviewを隠す
            aView.frame = CGRectMake(-aView.frame.size.width, 0, aView.frame.size.width, self.view.frame.size.height);
            
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
