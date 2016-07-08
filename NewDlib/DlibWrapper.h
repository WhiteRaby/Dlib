//
//  DlibWrapper.h
//  NewDlib
//
//  Created by Alexandr on 08.07.16.
//  Copyright © 2016 Alexandr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMedia/CoreMedia.h>

@interface DlibWrapper : NSObject

- (instancetype)init;
-(void)doWorkOnSampleBuffer:(CMSampleBufferRef)sampleBuffer inRects:(NSArray<NSValue *> *)rects;
- (void)prepare;

@end
