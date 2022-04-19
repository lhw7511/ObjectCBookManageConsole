//
//  Book.h
//  ObjectCBookManageConsole
//
//  Created by beintech on 2022/04/19.
//

#import <Foundation/Foundation.h>



@interface Book : NSObject
//property 옵션
//nonatomic : 멀티스레딩환경을 지원하는 옵션 기본이 atomic이라 명시적으로 옵션을 선언해주어야함 getter,setter에서 lock처리를 해주기때문에 보통 nonatomic으로사용한다.
//strong : 기본이 string 참조하고있으면 메모리상에서 제거되지않음.
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *author;

-(void)bookPrint;
@end


