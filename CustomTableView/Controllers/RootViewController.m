//
//  ViewController.m
//  CustomTableView
//
//  Created by kazumi hayashida on 2020/11/03.
//

#import "RootViewController.h"

#import "CustomCell.h"
#import "RandomColor.h"

@interface RootViewController () <UITableViewDelegate ,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) NSArray *colorContents;

@end

@implementation RootViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  [self makeContents];

  _tableView.delegate = self;
  _tableView.dataSource = self;
  NSString *cellName = NSStringFromClass([CustomCell class]);
  [_tableView registerNib:[UINib nibWithNibName:cellName bundle:nil] forCellReuseIdentifier:cellName];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [_colorContents count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
  NSString *cellName = NSStringFromClass([CustomCell class]);
  CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName forIndexPath:indexPath];
  cell.iconImageView.backgroundColor = _colorContents[indexPath.row];
  return cell;
}

- (void)makeContents {
  NSMutableArray *colorContents = [NSMutableArray array];

  for (int i = 0; i < 30; i++) {
    [colorContents addObject:[[RandomColor shared] color]];
  }

  _colorContents = colorContents;
}

@end
