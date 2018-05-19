//
//  MasterViewController.m
//  CustomTableView
//
//  Created by HayashidaKazumi on 2015/07/19.
//  Copyright (c) 2015年 HayashidaKazumi. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (void)awakeFromNib {
  [super awakeFromNib];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.navigationItem.leftBarButtonItem = self.editButtonItem;
  
  UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
  self.navigationItem.rightBarButtonItem = addButton;
  
  [self.tableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)insertNewObject:(id)sender {
}

#pragma mark - UITableViewDataSouce

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
  [self configureCell:cell atIndexPath:indexPath];
  return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
  // Return NO if you do not want the specified item to be editable.
  return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
}

- (void)configureCell:(CustomTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
//  NSManagedObject *object = [self.fetchedResultsController objectAtIndexPath:indexPath];
  
  cell.titleLabel.text = @"The dummy";
  
  NSInteger colorType = indexPath.row;
  if (colorType >= 5) colorType = colorType%5;
  
  switch (colorType) {
    case 0:
      cell.backgroundColor = HEXCOLOR(0x1FC0A3);
      break;
    case 1:
      cell.backgroundColor = HEXCOLOR(0x4894D6);
      break;
    case 2:
      cell.backgroundColor = HEXCOLOR(0x895FB1);
      break;
    case 3:
      cell.backgroundColor = HEXCOLOR(0xD56262);
      break;
    case 4:
      cell.backgroundColor = HEXCOLOR(0x3F4F62);
      break;
    default:
      break;
  }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 96;
}
@end
