//
//  ViewController.m
//  Example
//
//  Created by WLY on 16/7/7.
//  Copyright © 2016年 WLY. All rights reserved.
//

#import "ViewController.h"
#import "ICEKeyboardNotifaction.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [ICEKeyboardNotifaction registerKeyBoardHide:self];
    [ICEKeyboardNotifaction registerKeyBoardShow:self];
    
    
}

- (void)dealloc{
    [ICEKeyboardNotifaction removeKeyBoardHide:self];
    [ICEKeyboardNotifaction removekeyBoardShow:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


 
 - (void)keyboardWillShowNotification:(NSNotification *)notification{
     //键盘大小
     CGRect frame = [ICEKeyboardNotifaction returnKeyBoardWindow:notification];
     //键盘动画时间
     double animationDuration = [ICEKeyboardNotifaction returnKeyBoardDuration:notification];
     //键盘动画路径
     UIViewAnimationCurve animationCurve = [ICEKeyboardNotifaction returnKeyBoardAnimationCurve:notification];
     [UIView animateWithDuration:animationDuration
                           delay:0
                         options:(UIViewAnimationOptions)
                                    animationCurve << 16
                      animations:^{
 
                      } completion:^(BOOL finished) {
 
                      }];
    }
 
 - (void)keyboardWillHideNotification:(NSNotification *)notification{
 
     CGRect frame = [ICEKeyboardNotifaction returnKeyBoardWindow:notification];
     double animationDuration = [ICEKeyboardNotifaction     returnKeyBoardDuration:notification];
     UIViewAnimationCurve animationCurve = [ICEKeyboardNotifaction returnKeyBoardAnimationCurve:notification];
     [UIView animateWithDuration:animationDuration
                           delay:0
                         options:(UIViewAnimationOptions)
                                animationCurve << 16
                      animations:^{
 
                      } completion:^(BOOL finished) {
 
    }];
 }
 



@end
