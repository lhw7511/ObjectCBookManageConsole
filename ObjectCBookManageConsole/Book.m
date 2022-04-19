//
//  Book.m
//  ObjectCBookManageConsole
//
//  Created by beintech on 2022/04/19.
//

#import "Book.h"

@implementation Book
@synthesize  name;
@synthesize  genre;
@synthesize  author;
-(void)bookPrint{
    NSLog(@"Name : %@",name);
    NSLog(@"Genre : %@",genre);
    NSLog(@"Author  : %@",author);
}
@end
