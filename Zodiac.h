#import <Foundation/Foundation.h>

@interface Zodiac : NSObject
/**This program will take array of input and calculate a zodiac sign. 
**/
+ (NSString *)findZodiac:(int)month andDate:(int)date;
+ (NSString *)findAnimalSign:(int)year;
+ (NSString *)getZodiac:(NSArray *)bdArray;
+ (NSString *)getAnimalSign:(NSArray *)bdArray;

@end
