#import <Foundation/Foundation.h>

@interface Input : NSObject

/**This program will take string input, check valid input
and return NSArray to Birthday. 
**/
+ (NSString *)getUserInput;
+ (void)checkString:(NSString *)inputBD;
+ (NSArray *)checkArrayInput:(NSString *)inputBD;
+ (NSNumber *)isNumber:(NSString *)item;
+ (NSArray *)getBirthdayInput:(NSString *)inputBD;

@end
