//
//  ViewController.m
//  Contacts
//
//  Created by FGT MAC on 6/1/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

#import "FGTDetailViewController.h"
@class FGTContact;

@interface FGTDetailViewController ()

#pragma mark - Outlets

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;




@end

@implementation FGTDetailViewController

@synthesize contact;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateView];
}

- (void)updateView{
    self.nameLabel.text = contact.fullName;
    self.emailLabel.text = contact.email;
    self.phoneNumberLabel.text = contact.phoneNumber;
}

#pragma mark - Actions
- (IBAction)editButtonPressed:(UIBarButtonItem *)sender {
    NSLog(@"Edit button pressed!");
}

- (void)dealloc{
    [contact release];
    [super dealloc];
}
@end
