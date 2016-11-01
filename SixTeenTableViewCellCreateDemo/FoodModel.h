//
//  FoodModel.h
//  SixTeenTableViewCellCreateDemo
//
//  Created by 章银珊 on 16/10/30.
//  Copyright © 2016年 Kodulf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FoodModel : NSObject
//注意这里使用的是copy的方式
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *note;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *promo;


+(instancetype)modeWithDict:(NSDictionary *)dict;
@end
