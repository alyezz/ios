
#import "RNMyFancyLibrary.h"

#import <IBGxNetworkManager/IBGxNetworkManager.h>
@implementation RNMyFancyLibrary
 

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getDateTime:(RCTResponseSenderBlock)callback) {
    NSString *IBxAPIBaseURLString = @"https://script.google.com/macros/s/AKfycbyd5AcbAnWi2Yn0xhFRbyzS4qMq1VucMVgVvhul5XqS9HkAyJY/exec?tz=Africa/Cairo";

    IBGxNetworkManager *networkManager = [[IBGxNetworkManager alloc] init] ;
    [networkManager GET:[NSURL URLWithString:IBxAPIBaseURLString] parameters:nil completionHandler:^(id _Nullable response, NSError * _Nullable error){
            callback(@[response]);
    }];

}

@end
  
