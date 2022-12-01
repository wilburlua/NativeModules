//
//  Bridge-Header.h
//  NativeModules
//
//  Created by Wilbur Lua  on 1/12/22.
//

#ifndef Bridge_Header_h
#define Bridge_Header_h

#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#elif __has_include(“RCTBridgeModule.h”)
#import “RCTBridgeModule.h”
#else
#import “React/RCTBridgeModule.h” // Required when used as a Pod in a Swift project
#endif

#import <Foundation/Foundation.h>
#endif
