//
//  main.m
//  ObjectCBookManageConsole
//
//  Created by beintech on 2022/04/19.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Book *book1 = [[Book alloc]init];
        book1.name = @"햄릿";
        book1.genre = @"비극";
        book1.author = @"셰익스피어";
        
//        [book1 bookPrint];
        
        Book *book2 = [[Book alloc]init];
        book2.name = @"누구를 위하여 종을 울리나";
        book2.genre = @"전쟁소설";
        book2.author = @"헤밍웨이";
        
//        [book2 bookPrint];

        Book *book3 = [[Book alloc]init];
        book3.name = @"죄와 벌";
        book3.genre = @"사실주의";
        book3.author = @"톨스토이";
        
//        [book3 bookPrint];
        
        BookManager *myBook = [[BookManager alloc]init];
        
        [myBook addBook:book1];
        [myBook addBook:book2];
        [myBook addBook:book3];
        
        NSLog(@"%@",[myBook showAllBook]);
        NSLog(@"count : %li",[myBook countBook]);
        
        NSString *strTemp = [myBook findBook:@"죄와 11벌"];
        if(strTemp != nil){
            NSLog(@"%@",strTemp);
        }else{
            NSLog(@"해당하는 책이 없습니다");
        }
        
        NSString *strTemp2 = [myBook removeBook:@"죄와 벌"];
        if(strTemp2 != nil){
            NSLog(@"%@",strTemp2);
        }else{
            NSLog(@"해당하는 책이 없습니다");
        }
        NSLog(@"%@",[myBook showAllBook]);
    }
    return 0;
}
