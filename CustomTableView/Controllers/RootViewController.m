//
//  ViewController.m
//  CustomTableView
//
//  Created by kazumi hayashida on 2020/11/03.
//

#import "RootViewController.h"

#import "CustomTableViewCell.h"

@interface RootViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation RootViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  self.tableView.dataSource = self;
  NSString *cellName = NSStringFromClass([CustomTableViewCell class]);
  [self.tableView registerNib:[UINib nibWithNibName:cellName bundle:nil] forCellReuseIdentifier:cellName];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 10;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
  NSString *cellName = NSStringFromClass([CustomTableViewCell class]);
  CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName forIndexPath:indexPath];

  return cell;
}

@end
