//
//  NSMutableDictionary+Slice.m
//  ProtoDesign
//
//  Created by xzming on 15/3/9.
//  Copyright (c) 2015年 HZMC. All rights reserved.
//

#import "NSMutableDictionary+Slice.h"

@implementation NSMutableDictionary (Slice)

-(int)location{
    return [self[@"location"] intValue];
}

-(id)orignalString{
    return self[@"originalString"];
}

-(id)replaceString{
    return self[@"replaceString"];
}
-(int)patten{
    return [self[@"patten"] intValue];
}
-(NSDictionary *)extra{
    return self[@"extra"];
}

-(void)setExtra:(NSDictionary *)extra{
    self[@"extra"] = extra;
}

+(instancetype)sliceWith:(int)location orignalString:(id)orignalString replaceString:(id)replaceString patten:(int)patten{
//    return [[self alloc] initSliceWith:location orignalString:orignalString replaceString:replaceString];
    
    return [NSMutableDictionary dictionaryWithDictionary: @{
             @"location" : @(location),
             @"originalString" : orignalString,
             @"replaceString" : replaceString,
             @"patten" : @(patten),
             }];
}

-(instancetype)updateLocation:(int)location{
    self[@"location"] = @(location);
    
    return self;
}


@end
