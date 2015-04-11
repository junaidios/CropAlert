//
//  SignUpViewController.m
//  CropAlerts
//
//  Created by JayD on 11/04/2015.
//  Copyright (c) 2015 NASA. All rights reserved.
//

#import "SignUpViewController.h"
#import "UIImage+JS.h"

@interface SignUpViewController ()<UIActionSheetDelegate,UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *tfName;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;
@property (weak, nonatomic) IBOutlet UITextField *tfPhone;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;
@property (weak, nonatomic) IBOutlet UITextField *tfConfirmPass;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollerView;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@end

@implementation SignUpViewController


#pragma mark - IBActions

- (IBAction)btnCameraPressed:(id)sender {
    
    
    UIActionSheet * sheet = [[UIActionSheet alloc]initWithTitle:@"Choose Media Source" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Camera", @"Photo library", nil];
    
    [sheet showInView:self.view];
}


- (IBAction)btnSignUpPressed:(id)sender {
    
    
    
}

#pragma mark - View Controller Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_scrollerView setContentSize:_containerView.frame.size];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIImagePickerController

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (buttonIndex == 2) {
        return;
    }
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    
    if (buttonIndex == 1) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
            imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    else
    {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
            imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    }
    
    [self presentViewController:imagePicker animated:YES completion:nil];
    
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    NSLog(@"image dictonary : %@", info);
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    
    if (image == nil){
        image = [info objectForKey:UIImagePickerControllerOriginalImage];
        
        if (image == nil){
            NSLog(@"Image with some error.");
        }
        
    }
    
    UIImage *croppedImage = [image imageWithScaledToSize:CGSizeMake(400, 400)];
    
    if (croppedImage) {
        [_btnCamera setImage:croppedImage forState:UIControlStateNormal];
    }
    
}
#pragma mark - TextField Methods

-(void)checktextFields{
    
    BOOL willEnabled = ([_tfEmail.text length] >= 1 && [_tfName.text length] >= 1 && [_tfPhone.text length] >= 1 && [_tfPassword.text length] >= 8)?YES:NO;
    
    [_btnRegister setEnabled:willEnabled];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    [_scrollerView setContentOffset:CGPointMake(0, 64*(textField.tag-1)) animated:YES];
    
//    textField.background = [UIImage imageNamed:@"line_org"];
    return YES;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    //    textField.text = [[textField text] stringByReplacingCharactersInRange:range withString:string];
    
    [self performSelector:@selector(checktextFields) withObject:nil afterDelay:0.5];
    
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
//    textField.background = [UIImage imageNamed:@"line_gray"];
    return YES;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [textField resignFirstResponder];
    
    if ([textField isEqual:_tfName]) {
        [_tfEmail becomeFirstResponder];
    }
    else if ([textField isEqual:_tfEmail]) {
        [_tfPhone becomeFirstResponder];
    }
    else if ([textField isEqual:_tfPhone]) {
        [_tfPassword becomeFirstResponder];
    }
    else if ([textField isEqual:_tfPassword]) {
        [_tfConfirmPass becomeFirstResponder];
    }
    else
    {
        [UIView animateWithDuration:1.0 animations:^{
            [_scrollerView setContentOffset:CGPointMake(0, 0)];
        }];
    }
    
    return YES;
}



@end
