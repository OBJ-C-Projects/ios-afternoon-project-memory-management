//
//  FGTContactsTableViewController.m
//  Contacts
//
//  Created by FGT MAC on 6/1/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

#import "FGTContactsTableViewController.h"
#import "FGTContact.h"

@interface FGTContactsTableViewController ()

@property (nonatomic) NSMutableArray<FGTContact *> *contactsArray;


@end

@implementation FGTContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.contactsArray = [[NSMutableArray alloc] init];
}
#pragma mark - Actions

- (IBAction)addNewContact:(UIBarButtonItem *)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Add New Entry" message:@"Enter info below" preferredStyle:UIAlertControllerStyleAlert];

    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Full Name.";
    }];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"email.";
    }];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Phone number.";
    }];
    
    UIAlertAction *save = [UIAlertAction actionWithTitle:@"Save" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UITextField *fullNameInput = alert.textFields[0];
        UITextField *emailInput = alert.textFields[1];
        UITextField *phoneNumberInput = alert.textFields[2];
        
        if ([fullNameInput hasText] && [phoneNumberInput hasText]){
            FGTContact *newEntry = [[FGTContact alloc] initWithFullName:fullNameInput.text email:emailInput.text phoneNumber:phoneNumberInput.text];
            [self saveNewContact:(newEntry)];
            
            [alert dismissViewControllerAnimated:YES completion:nil];
        }else{
            NSLog(@"Empty filds.");
        }
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alert dismissViewControllerAnimated:true completion:nil];
    }];
    
    [alert addAction:cancel];
    [alert addAction:save];
    
    
    [self presentViewController:alert animated:YES completion:nil];
    
}
#pragma mark - Methods

- (void) saveNewContact:(FGTContact *)contact{
    //Add the new contact to the contacts array
    [self.contactsArray addObject:contact];
    
    NSLog(@"Array count: %lu",(unsigned long)self.contactsArray.count);
    
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.contactsArray.count;
}

 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    FGTContact *contact = self.contactsArray[indexPath.row];
    
    cell.textLabel.text = contact.fullName;
    return cell;
}
 
#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}
 

@end
