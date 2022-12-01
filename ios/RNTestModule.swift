//
//  RNTestModule.swift
//  NativeModules
//
//  Created by Wilbur Lua  on 1/12/22.
//

import Foundation

@objc(RNTestModule)
class RNTestModule : NSObject {
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  @objc
  func logMessage(_ name: String, message: String, resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) -> Void {
    resolve("name: '\(name)', message: '\(message)'")
  }
}
