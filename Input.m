#import "Input.h"
#import "Output.h" 
@implementation Input

+ (NSString *)getUserInput {
   NSFileHandle *handle = [NSFileHandle fileHandleWithStandardInput];
   NSData *data = handle.availableData;
   NSString *input = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];

   NSCharacterSet *set = [NSCharacterSet newlineCharacterSet];
   NSString *userInput = [input stringByTrimmingCharactersInSet:set];
   return userInput; 
}


+ (void)checkString:(NSString *)inputBD{
   int times = [[inputBD componentsSeparatedByString:@"/"] count] - 1;
   if (times < 2 || times > 2) {
	NSLog(@"Invalid Input");
      	exit(0);
   } 
}


+ (NSArray *)checkArrayInput:(NSString *)inputBD {
   NSArray *inputArray =[inputBD componentsSeparatedByString:@"/"];
   NSMutableArray *bdArray = [[NSMutableArray alloc] init];
   for(id item in inputArray) {
	   [bdArray addObject:[self isNumber:item]];
   }
   return bdArray;
}

+ (NSNumber *)isNumber:(NSString *)item {
   NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
   formatter.numberStyle = NSNumberFormatterDecimalStyle;
   NSNumber *myNum = [formatter numberFromString:item];
   if (myNum == nil) {
      NSLog(@"Invalid number");
      exit(0);
   }
   return myNum;
}

+ (NSArray *)getBirthdayInput:(NSString *)inputBD {
   [self checkString:inputBD];
   NSArray *array = [self checkArrayInput:inputBD];
   return array;
}
@end
