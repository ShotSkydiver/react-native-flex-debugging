//
//  UITextField+Range.m
//  IMLEX
//
//  Created by Tanner on 6/13/17.
//

#import "UITextField+Range.h"

@implementation UITextField (Range)

- (NSRange)selectedRange {
    UITextRange *r = self.selectedTextRange;
    if (r) {
        NSInteger loc = [self offsetFromPosition:self.beginningOfDocument toPosition:r.start];
        NSInteger len = [self offsetFromPosition:r.start toPosition:r.end];
        return NSMakeRange(loc, len);
    }

    return NSMakeRange(NSNotFound, 0);
}

@end
