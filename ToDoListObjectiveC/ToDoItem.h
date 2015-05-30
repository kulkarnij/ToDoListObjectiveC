//
//  ToDoItem.h
//  ToDoListObjectiveC
//
//  Created by Jitendra Kulkarni on 5/29/15.
//  Copyright (c) 2015 Second Opinion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
