#import "Output.h"

@implementation Output

+ (void)printMessage:(NSString *)message {
    
    // print this to the console
    NSData *data = [message dataUsingEncoding:NSUTF8StringEncoding];
    NSFileHandle *handle = [NSFileHandle fileHandleWithStandardOutput];
    [handle writeData:data];
}

//+ (NSString *)getZodiac: (NSString *)birthDay {
   
@end
