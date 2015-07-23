//
//  MasterViewController.h
//  CustomTableView
//
//  Created by HayashidaKazumi on 2015/07/19.
//  Copyright (c) 2015年 HayashidaKazumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

#import "iOSMacro.h"
#import "CustomTableViewCell.h"

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

