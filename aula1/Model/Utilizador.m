//
//  Utilizador.m
//  aula1
//
//  Created by Pedro Brito on 01/07/2019.
//  Copyright © 2019 Pedro ML Brito. All rights reserved.
//

#import "Utilizador.h"

@implementation Utilizador

@synthesize name;
@synthesize number;
@synthesize userType;
@synthesize contact;

-(instancetype)initWith:(NSString*)name and:(NSInteger)number and:(NSString*)type and:(NSString*)contact {
    self = [super init];
    if(self){
        self.name = name;
        self.number = number;
        self.userType = type;
        self.contact = contact;
    }
    return self;
}

-(NSString*)getUserDescription {
    NSString *descriptionText = [NSString stringWithFormat:@"Olá eu sou o %@, identifica-me com o numero: %ld, sou do tipo: %@ e podes contactar-me aqui: %@", self.name, self.number, self.userType, self.contact];
    
    return descriptionText;
}

@end
