//
//  CustomTableViewCell.m
//  CustomTableView
//
//  Created by HayashidaKazumi on 2015/07/19.
//  Copyright (c) 2015年 HayashidaKazumi. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        _icon = [[UIImageView alloc] init];
        _icon.frame = CGRectMake(32, 32, 32, 32);
        _icon.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:_icon];
        
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.frame = CGRectMake(CGRectGetMaxX(_icon.frame)+32,
                                       32,
                                       192,
                                       32);
        _titleLabel.textColor = HEXCOLOR(0xecf0f1);
        [self.contentView addSubview:_titleLabel];
    }
    
    return self;
}

@end
