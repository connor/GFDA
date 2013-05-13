//
//  GFDATextView.m
//  Good Fucking Design Advice
//
//  Created by Connor Montgomery on 2/11/13.
//  Copyright (c) 2013 Connor Montgomery. All rights reserved.
//

#import "GFDATextView.h"

@interface UITextView ()

- (id)styleString;

@end

@implementation GFDATextView

- (id)styleString {
    return [[super styleString] stringByAppendingString:@"; line-height: 1em"];
}

- (void)awakeFromNib {
    [super awakeFromNib];

}

@end
