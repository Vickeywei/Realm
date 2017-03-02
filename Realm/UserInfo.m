//
//  UserInfo.m
//  Realm
//
//  Created by 魏琦 on 17/1/12.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo
//为数据模型建立索引,可以更加快速的插入和检索
+ (NSArray<NSString *> *)indexedProperties {
    return @[@"userId",@"nickName",@"headeImg"];
}
//属性的默认值
+ (nullable NSDictionary *)defaultPropertyValues {
    return @{
             @"userId":@0,
             @"nickName":@"小白",
             @"birthday":@(1111111111111)
             };
}
//主键
+ (nullable NSString *)primaryKey {
    return @"userId";
    
}
//忽略属性
+ (nullable NSArray<NSString *> *)ignoredProperties {
    return @[@"account"];
}
//不能为空的属性,如果为这个数组返回的属性设置空,会抛出异常.通常情况下NSString *、NSData * 以及 NSDate * 属性可以设置为 nil.RLMProperty 的子类属性始终都可以为 nil，因此这些类型不能够放在 requiredProperties中，并且 RLMArray 不支持存储 nil 值
+ (NSArray<NSString *> *)requiredProperties {
    return @[@"userId",@"nickName"];
    
}

//
//+ (NSDictionary<NSString *, RLMPropertyDescriptor *> *)linkingObjectsProperties {
//    
//}

- (NSString *)account {
    return @"默认值";
}
@end
