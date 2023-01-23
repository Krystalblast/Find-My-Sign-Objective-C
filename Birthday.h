#import <Foundation/Foundation.h>
#import <objc/Object.h>
/**Birthday will check valid month/date/year. 
  (BOOL)checkBD:(NSArray *)bdArray; is the main program. 
**/
@interface Birthday : NSObject
 
+ (BOOL)isLeapYear:(int)year;
+ (BOOL)isValidYear:(int)inputYear; 
+ (BOOL)isValidDay:(int)day;
+ (BOOL)isValidMonth:(int)month;
+ (BOOL)checkArrayMonth:(int)month andArray:(int[])array andSize:(int)size;
+ (BOOL)isValidFromDate:(int)num1 toDate:(int)num2 Input:(int)inputDay;
+ (BOOL)isValidDayOnFeb:(int)day andYear:(int)year;
+ (BOOL)isValidDay:(int)day withMonth:(int)month;
+ (BOOL)isValidBirthday:(int)day andMonth:(int)month andYear:(int)year;
+ (BOOL)checkBD:(NSArray *)bdArray;

@end
