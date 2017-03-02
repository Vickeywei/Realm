//
//  WQDataBaseManager.m
//  Realm
//
//  Created by 魏琦 on 17/1/12.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//

#import "WQDataBaseManager.h"
@interface WQDataBaseManager ()
@property (nonatomic, strong,readwrite) RLMRealm *realm;

@end
@implementation WQDataBaseManager
+(instancetype)shareInstance {
    static WQDataBaseManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[WQDataBaseManager alloc] init];
    });
    return instance;
}

- (void)creatDataBaseWithFilePath:(NSString*)filePath encryptionKey:(NSString*)encryptionKey{
   
    RLMRealmConfiguration *configuration = [RLMRealmConfiguration defaultConfiguration];
    configuration.fileURL = [NSURL fileURLWithPath:filePath];
    configuration.encryptionKey = [[NSData alloc] initWithBase64EncodedString:encryptionKey options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSError *error;
    self.realm = [RLMRealm realmWithConfiguration:configuration error:&error];
}

- (void)creatDefaultRealm{
    self.realm = [RLMRealm defaultRealm];
}

- (void)creatRealmWithFilePath:(NSString *)filePath {
    if (filePath.length <= 0) {
        [self creatDefaultRealm];
    }
    else {
        self.realm = [RLMRealm realmWithURL:[NSURL fileURLWithPath:filePath]];
    }
}

@end
