//
//  UserInfo.h
//  Realm
//
//  Created by 魏琦 on 17/1/12.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//

#import <Realm/Realm.h>

@interface UserInfo : RLMObject
@property long userId;
@property NSString *nickName;
@property NSDate *createDate;
@property NSString *headeImg;
@property NSNumber <RLMInt>* age;//存储可控数字已经可以用NSNumber来完成.由于 Realm 对不同类型的数字采取了不同的存储格式，因此设置可空的数字属性必须是 RLMInt、RLMFloat、RLMDouble 或者 RLMBool 类型。所有赋给属性的值都会被转换为其特定的类型。
@property RLMProperty *name;//RLMProperty 的子类属性始终都可以为 nil，因此这些类型不能够放在 requiredProperties中，并且 RLMArray 不支持存储 nil 值。

@property long birthday;

@property (readonly) NSString *account;

@end
