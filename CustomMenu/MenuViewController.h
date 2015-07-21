//
//  MenuViewController.h
//  CustomMenu
//
//  Created by Ajay Jha on 21/07/15.
//
//

#import <UIKit/UIKit.h>


@protocol CustomMenuDelegate <NSObject>

-(void)method :(NSString *)sender;

@end

@interface MenuViewController : UIViewController{
     id<CustomMenuDelegate> _delegate;
}

@property (weak, nonatomic) IBOutlet UIButton *button1Outlet;
@property (weak, nonatomic) IBOutlet UIButton *button2Outlet;
@property (weak, nonatomic) IBOutlet UIButton *button3Outlet;
@property (weak, nonatomic) IBOutlet UIView *menuViewObj;

@property(nonatomic,assign)id delegate;
-(void)makeSettingForThisViewController;
@end
