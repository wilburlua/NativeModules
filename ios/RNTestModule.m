//
//  RNTestModule.m
//  NativeModules
//
//  Created by Wilbur Lua  on 1/12/22.
//

#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#elif __has_include(“RCTBridgeModule.h”)
#import “RCTBridgeModule.h”
#else
#import “React/RCTBridgeModule.h” // Required when used as a Pod in a Swift project
#endif

#import <Foundation/Foundation.h>
// Export a native module
// https://facebook.github.io/react-native/docs/native-modules-ios.html#exporting-swift
@interface RCT_EXTERN_MODULE(RNTestModule, NSObject)

// Export methods to a native module
// https://facebook.github.io/react-native/docs/native-modules-ios.html#exporting-swift
RCT_EXTERN_METHOD(
                  logMessage: (NSString *)name
                  message:(NSString *)message
                  resolve: (RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject
                  )
@end
