//
//  Utilizador.h
//  aula1
//
//  Created by Pedro Brito on 01/07/2019.
//  Copyright © 2019 Pedro ML Brito. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utilizador : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger number;
@property (nonatomic, strong) NSString *userType;
@property (nonatomic, strong) NSString *contact;

-(instancetype)initWith:(NSString*)name and:(NSInteger)number and:(NSString*)type and:(NSString*)contact;

-(NSString*)getUserDescription;

@end

NS_ASSUME_NONNULL_END
