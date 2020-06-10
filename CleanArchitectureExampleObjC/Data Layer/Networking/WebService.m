//
//  WebService.m
//  CleanArchitectureExampleObjC
//
//  Created by Luka Babovic on 30/03/2020.
//  Copyright © 2020 lbabovic. All rights reserved.
//

#import "WebService.h"
#import "CharacterResponse.h"

@interface WebService()

@property (retain, nonatomic) NetworkSession* networkSession;
-(void) handleResponseForData:(NSData*) data withClass:(Class) classToDecode withResponse:(NSURLResponse*) response forError:(NSError*) error withCallback: (void ((^) ( Response* ))) callback;

@end

@implementation WebService

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.networkSession = [[NetworkSession alloc] init];
    }
    return self;
}

- (void)executeRequest:(NSURLRequest *)urlRequest withClass:(Class) classToDecode completion:(void ((^)(Response *)))callback {
    [self.networkSession performRequest:urlRequest withCompletionBlock: ^(NSData* data, NSURLResponse* response, NSError* error) {
        [self handleResponseForData:data withClass: classToDecode withResponse:response forError:error withCallback:callback];
    }];
}

- (void)handleResponseForData:(NSData *)data withClass:(Class) classToDecode withResponse:(NSURLResponse *)response forError:(NSError *)error withCallback:(void ((^)(Response *)))callback {
    if (error) {
        callback([[Response alloc] initWithError:error]);
        return;
    } else if (data) {
        NSError* error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData: data options:kNilOptions error:&error];
        NSArray* albumsvideo = [json objectForKey:@"results"];
        NSMutableArray *arrayToReturn = [NSMutableArray new];
        for(NSDictionary* obj in albumsvideo) {
            @try {
                [arrayToReturn addObject:[[classToDecode alloc] initWithJSONData:obj]];
            }
            @catch (NSException *exception) {
                callback([[Response alloc] initWithCustomError:DECODING_ERROR]);
                return;
            }
        }
        callback([[Response alloc] initWithSuccess:arrayToReturn]);
    } else {
        callback([[Response alloc] initWithCustomError:TIMEOUT_ERROR]);
    }
}

- (void)cancelCurrentTask {
    [self.networkSession cancelTask];
}

@end
