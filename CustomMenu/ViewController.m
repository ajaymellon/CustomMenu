//
//  ViewController.m
//  CustomMenu
//
//  Created by Ajay Jha on 21/07/15.
//
//

#import "ViewController.h"
#import "MenuViewController.h"

@interface ViewController ()<CustomMenuDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.btnOpenOutlet.layer.cornerRadius = 40;
    self.btnOpenOutlet.clipsToBounds = YES;
    

        // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnOpenTapped:(id)sender {
       UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    
    MenuViewController *menuViewControllerObj = [mainStoryboard instantiateViewControllerWithIdentifier:@"MenuViewController"];
    menuViewControllerObj.delegate = self;
    [self addChildViewController:menuViewControllerObj];
    
    [self.view addSubview:menuViewControllerObj.view];
    
    [menuViewControllerObj
     makeSettingForThisViewController];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)method :(NSString *)sender{
    NSLog(@"Button %@ Pressed",sender);
}
@end
