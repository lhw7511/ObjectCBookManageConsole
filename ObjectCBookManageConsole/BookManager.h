//
//  BookManager.h
//  ObjectCBookManageConsole
//
//  Created by beintech on 2022/04/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
 
//Book클래스 import(임포트보다 빠름) 컴파일시 오류내지말아라.
// a<-b<-c<-a 상속시 순환참조 회피기능
@class Book;
@interface BookManager : NSObject{
    NSMutableArray *bookList;
}
-(void)addBook:(Book *)bookObject;
-(NSString *)showAllBook;
-(NSUInteger)countBook;
-(NSString *)findBook:(NSString *)name;
-(NSString *)removeBook:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
