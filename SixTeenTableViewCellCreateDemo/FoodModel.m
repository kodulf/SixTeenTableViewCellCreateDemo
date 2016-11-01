//
//  FoodModel.m
//  SixTeenTableViewCellCreateDemo
//
//  Created by 章银珊 on 16/10/30.
//  Copyright © 2016年 Kodulf. All rights reserved.
//

#import "FoodModel.h"

@implementation FoodModel

//为了防止赋值以后的不匹配导致的崩溃
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}

+(instancetype)modeWithDict:(NSDictionary *)dict{
    FoodModel *footModel = [[self alloc]init];
    [footModel setValuesForKeysWithDictionary:dict];
    return footModel;
}

@end
