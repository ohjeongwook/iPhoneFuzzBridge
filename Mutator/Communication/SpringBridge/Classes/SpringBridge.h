//
//  SpringBridge.h
//  SpringBridge
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>

NSBundle * myBundle;

@interface SpringBridge : NSObject {
    bool isDisplaying;
}

- (void) didInjectIntoProgram;
- (void) listenForRelayConnections;
- (void) launchTheApp:(id) app;

@end

@interface SpringBridgeRelay : NSObject { 
    int sock;
    struct sockaddr_in serverAddr;
}
- (void) sendAppForLaunch:(NSString *) appId;

@end
