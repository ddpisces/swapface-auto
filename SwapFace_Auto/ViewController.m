//
//  ViewController.m
//  SwapFace_Auto
//
//  Created by dupeng on 13-12-26.
//  Copyright (c) 2013年 dupeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *bg;

- (IBAction)selectPhoto:(id)sender;
- (IBAction)takePhoto:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.bg.layer.contents = (id)[UIImage imageNamed:@"background"].CGImage;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Button Actions (From Camera and Phone)

- (IBAction)selectPhoto:(id)sender {
}

- (IBAction)takePhoto:(id)sender {
}
@end
