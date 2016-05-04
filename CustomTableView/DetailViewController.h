//
//  DetailViewController.h
//  CustomTableView
//
//  Created by HayashidaKazumi on 2015/07/19. 
//  Copyright (c) 2015年 HayashidaKazumi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

