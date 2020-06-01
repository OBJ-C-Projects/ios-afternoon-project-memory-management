//
//  FGTContactsTableViewController.m
//  Contacts
//
//  Created by FGT MAC on 6/1/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

#import "FGTContactsTableViewController.h"

@interface FGTContactsTableViewController ()

@end

@implementation FGTContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}
#pragma mark - Actions

- (IBAction)addNewContact:(UIBarButtonItem *)sender {
    
    NSLog(@"Add new contact button pressed!");
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = @"Fritz Gamboa";
    return cell;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
