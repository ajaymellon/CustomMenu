//
//  MenuViewController.m
//  CustomMenu
//
//  Created by Ajay Jha on 21/07/15.
//
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController
@synthesize delegate;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
 
    
}
-(void)makeSettingForThisViewController{
    
    self.button1Outlet.layer.cornerRadius = 8;
    self.button1Outlet.clipsToBounds = YES;
    self.button2Outlet.layer.cornerRadius = 8;
    self.button2Outlet.clipsToBounds = YES;
    self.button3Outlet.layer.cornerRadius = 8;
    self.button3Outlet.clipsToBounds = YES;
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.5;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromTop;
    [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [self.menuViewObj.layer addAnimation:transition forKey:nil];
    // self.vsubViewObj.frame =  CGRectMake(0, 0, 320, 568);
    self.menuViewObj.alpha = 1.0f;
    [self.view addSubview:self.menuViewObj];
    
}

-(void)hideSubMenuwithAnimation
{
    CATransition *transition = [CATransition animation];
    transition.duration = 0.6;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromBottom;
    [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [self.menuViewObj.layer addAnimation:transition forKey:nil];
    self.menuViewObj.frame =  CGRectMake(self.view.frame.size.width,0,self.view.frame.size.width,self.view.frame.size.height);
    self.menuViewObj.alpha = 1.0f;
    [self performSelector:@selector(xyz) withObject:nil afterDelay:0.6];
    
}
-(void)xyz
{
    if([delegate respondsToSelector:@selector(method:)])
    {
        //send the delegate function with the amount entered by the user
        [delegate method:@"close"];
        [self.view removeFromSuperview];
    }
    else
        [self.view removeFromSuperview];
    
    
}
-(void)hideMenu{
    CATransition *transition = [CATransition animation];
    transition.duration = 0.6;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromBottom;
    [transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [self.menuViewObj.layer addAnimation:transition forKey:nil];
    self.menuViewObj.frame =  CGRectMake(self.view.frame.size.width,0,self.view.frame.size.width,self.view.frame.size.height);
    self.menuViewObj.alpha = 1.0f;
    
}

- (IBAction)btnCloseTapped:(id)sender {
    
    [self hideSubMenuwithAnimation];
}
- (IBAction)btn2Tapped:(id)sender {
    
    if([delegate respondsToSelector:@selector(method:)])
    {
        //send the delegate function with the amount entered by the user
        [delegate method:@"2"];
        [self.view removeFromSuperview];
    }
}
- (IBAction)btn1Tapped:(id)sender {
    
    if([delegate respondsToSelector:@selector(method:)])
    {
        //send the delegate function with the amount entered by the user
        [delegate method:@"1"];
        [self.view removeFromSuperview];
    }
}
@end
