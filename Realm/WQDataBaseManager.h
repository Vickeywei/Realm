//
//  WQDataBaseManager.h
//  Realm
//
//  Created by 魏琦 on 17/1/12.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm.h>
@interface WQDataBaseManager : NSObject

@property (nonatomic, strong,readonly) RLMRealm *realm;

+(instancetype)shareInstance;
- (void)creatDataBaseWithFilePath:(NSString*)filePath encryptionKey:(NSString*)encryptionKey;
- (void)creatDefaultRealm;
- (void)creatRealmWithFilePath:(NSString *)filePath;

@end
