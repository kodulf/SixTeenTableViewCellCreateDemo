//
//  FoodCell.h
//  SixTeenTableViewCellCreateDemo
//
//  Created by 章银珊 on 16/11/1.
//  Copyright © 2016年 Kodulf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodModel.h"

@interface FoodCell : UITableViewCell

@property (nonatomic,strong) UIImageView *prompoImageView;
@property (nonatomic,strong) UIImageView *iconImageView;
@property (nonatomic,strong) UILabel *titleLabe;
@property (nonatomic,strong) UILabel *notelabe;


-(void)updateCellWithModel:(FoodModel *)foodModel;
@end
