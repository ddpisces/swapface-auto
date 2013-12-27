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
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
    {
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.delegate = self;
        imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        
        [self presentViewController:imagePickerController animated:YES completion:NULL];
        
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"select_photo_error_title", nil)
                                                        message:NSLocalizedString(@"select_photo_error", nil)
                                                       delegate:nil
                                              cancelButtonTitle:NSLocalizedString(@"message_ok", nil)
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (IBAction)takePhoto:(id)sender {
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
	{
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.delegate = self;
        imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        [self presentViewController:imagePickerController animated:YES completion:NULL];
	}
	else
	{
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"take_photo_error_title", nil)
                                                        message:NSLocalizedString(@"take_photo_error", nil)
                                                       delegate:nil
                                              cancelButtonTitle:NSLocalizedString(@"message_ok", nil)
                                              otherButtonTitles:nil];
		[alert show];
	}
}

#pragma mark - UIImagePickerController Delegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{

}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
