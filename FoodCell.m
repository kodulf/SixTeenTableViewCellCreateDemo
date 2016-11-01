//
//  FoodCell.m
//  SixTeenTableViewCellCreateDemo
//
//  Created by 章银珊 on 16/11/1.
//  Copyright © 2016年 Kodulf. All rights reserved.
//

#import "FoodCell.h"

@implementation FoodCell
//注销下面的方法
//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}

-(instancetype)init{
    self =[super init];
    if(self){
        [self setIconImageView:[[UIImageView alloc]initWithFrame:CGRectMake(10, 0, 64, 64)]];
        [self.contentView addSubview:self.iconImageView];
        
        [self setPrompoImageView:[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)]];
        [self.contentView addSubview:self.prompoImageView];
        
        [self setTitleLabe:[[UILabel alloc] initWithFrame:CGRectMake(75, 10, 220, 21)]];
         [self.titleLabe setFont:[UIFont systemFontOfSize:18]];
         [self.contentView addSubview:self.titleLabe];
        
        [self setNotelabe:[[UILabel alloc] initWithFrame:CGRectMake(75, 40, 220, 21)]];
        [self.notelabe setFont:[UIFont systemFontOfSize:18]];
        [self.notelabe setTextColor:[UIColor lightGrayColor]];
        [self.contentView addSubview:self.notelabe];
    
    }
    return self;
}

-(void)updateCellWithModel:(FoodModel *)foodModel{
    if(foodModel.promo.length==0){
        [self.prompoImageView setHidden:YES];
    }else{
        [self.prompoImageView setHidden:NO];
        [self.prompoImageView setImage:[UIImage imageNamed:foodModel.promo]];
    }
    
    [self.iconImageView setImage:[UIImage imageNamed:foodModel.icon]];
    [self.titleLabe setText:foodModel.title];
    [self.notelabe setText:foodModel.note];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
