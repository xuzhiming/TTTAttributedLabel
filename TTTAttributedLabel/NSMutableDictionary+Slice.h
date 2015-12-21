//
//  NSMutableDictionary+Slice.h
//  ProtoDesign
//
//  Created by xzming on 15/3/9.
//  Copyright (c) 2015年 HZMC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Slice)

@property(nonatomic, readonly)int location;
@property(nonatomic, readonly)int patten;
@property(nonatomic, readonly)NSString *orignalString;
@property(nonatomic, readonly)NSAttributedString *replaceString;
@property(nonatomic, readonly)NSDictionary *extra;

+(instancetype)sliceWith:(NSUInteger)location
           orignalString:(id)orignalString
           replaceString:(id)replaceString
                  patten:(int)patten;

-(instancetype)updateLocation:(NSUInteger)location;

-(void)setExtra:(NSDictionary *)extra;

@end
