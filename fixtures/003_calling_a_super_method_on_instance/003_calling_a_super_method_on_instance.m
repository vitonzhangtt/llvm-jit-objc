#import <Foundation/Foundation.h>

@interface ClassA : NSObject
- (int)hello;
@end

@implementation ClassA
- (int)hello {
    return 100;
}
@end

@interface ClassB : ClassA
- (int)hello;
@end

@implementation ClassB
- (int)hello {
    int superHello = [super hello];
    return superHello + 11;
}
@end

int run() {
    ClassB *classB = [[ClassB alloc] init];
    int result = [classB hello];
    return result;
}
