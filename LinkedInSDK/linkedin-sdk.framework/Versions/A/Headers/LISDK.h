//
//  LISDK.h
//
//  Copyright (c) 2015 linkedin. All rights reserved.
//

/**
 file for application to include to interact with LinkedIn SDK for ios.
 
 A typical usage flow might be:
 
 1. use LISDKSessionManager to initialize a linkedin session if it is not already valid.  
 This will ask the user to authorize the application to use his/her linkedin data.
  
 if (! [LISDKSessionManager hasValidSession] ) {
   [LISDKSessionManager createSessionWithAuthorize:[NSArray arrayWithObjects:LISDK_BASIC_PROFILE_PERMISSION, LISDK_EMAILADDRESS_PERMISSION, nil]
                                             state:@"some state"
                            showGoToAppStoreDialog:NO
                                      successBlock:^(NSString *returnState) {
                                      }
                                        errorBlock:^(NSError *error) {
                                        }];
 }
 
 2. use LISDKAPIHelper or LISDKDeeplinkHelper to make API calls or to perform deep link operations
 
 */
#import <linkedin-sdk/LISDKSessionManager.h>
#import <linkedin-sdk/LISDKSession.h>
#import <linkedin-sdk/LISDKAccessToken.h>
#import <linkedin-sdk/LISDKAPIError.h>
#import <linkedin-sdk/LISDKAPIHelper.h>
#import <linkedin-sdk/LISDKAPIResponse.h>
#import <linkedin-sdk/LISDKCallbackHandler.h>
#import <linkedin-sdk/LISDKDeeplinkHelper.h>
#import <linkedin-sdk/LISDKErrorCode.h>
#import <linkedin-sdk/LISDKPermission.h>
