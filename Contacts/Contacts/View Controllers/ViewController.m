//
//  ViewController.m
//  Contacts
//
//  Created by FGT MAC on 6/1/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

#pragma mark - Outlets

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Actions
- (IBAction)editButtonPressed:(UIBarButtonItem *)sender {
    NSLog(@"Edit button pressed!");
}


@end
