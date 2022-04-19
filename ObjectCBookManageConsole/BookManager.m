//
//  BookManager.m
//  ObjectCBookManageConsole
//
//  Created by beintech on 2022/04/19.
//

#import "BookManager.h"
#import "Book.h"
@implementation BookManager
-(id)init{
    self = [super init];
    if(self){
        bookList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addBook:(Book *)bookObject{
    [bookList addObject:bookObject];
}
-(NSString *)showAllBook{
    NSMutableString *strTemp = [[NSMutableString alloc]init];
    for(Book *bookTemp in bookList){
        [strTemp appendString:@"Name : "];
        [strTemp appendString:bookTemp.name];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Genre : "];
        [strTemp appendString:bookTemp.genre];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Author : "];
        [strTemp appendString:bookTemp.author];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"-------------------------------------"];
        [strTemp appendString:@"\n"];
    }
    return strTemp;
}
-(NSUInteger)countBook{
    return [bookList count];
}
-(NSString *)findBook:(NSString *)name{
    NSMutableString *strTemp = [[NSMutableString alloc]init];
    for(Book *bookTemp in bookList){
        if([bookTemp.name isEqualToString:(name)]){
            [strTemp appendString:@"Name : "];
            [strTemp appendString:bookTemp.name];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Genre : "];
            [strTemp appendString:bookTemp.genre];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Author : "];
            [strTemp appendString:bookTemp.author];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"-------------------------------------"];
            return strTemp;
        }
    }
    return nil;
}
@end
