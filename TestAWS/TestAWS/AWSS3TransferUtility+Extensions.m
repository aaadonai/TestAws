//
//  AWSS3TransferUtility+Extensions.m
//  TestAWS
//
//  Created by Antonio Rodrigues on 8/11/21.
//


#import <AWSS3/AWSS3.h>
#import "AWSS3TransferUtility+Extensions.h"

@implementation AWSS3TransferUtility (Extensions)

AWSS3TransferUtilityProgressBlock uploadProgressBlock;
AWSS3TransferUtilityUploadCompletionHandlerBlock completionHandler;

- (void)reassignBlocks {
    [self enumerateToAssignBlocksForUploadTask:^(AWSS3TransferUtilityUploadTask * _Nonnull uploadTask, AWSS3TransferUtilityProgressBlock  _Nullable __autoreleasing * _Nullable uploadProgressBlockReference, AWSS3TransferUtilityUploadCompletionHandlerBlock  _Nullable __autoreleasing * _Nullable completionHandlerReference) {

        uploadProgressBlockReference = self.uploadProgressBlock;
        completionHandlerReferebnce = self.completionHandler;
    } downloadTask: nil];
}

//- (void)reassignBlocks: (nullable AWSS3TransferUtilityProgressBlock _Nullable  *) uploadProgressBlock
//            completion: (nullable AWSS3TransferUtilityUploadCompletionHandlerBlock _Nullable *) completionHandler {
//    [self enumerateToAssignBlocksForUploadTask:^(AWSS3TransferUtilityUploadTask * _Nonnull uploadTask, AWSS3TransferUtilityProgressBlock  _Nullable __autoreleasing * _Nullable uploadProgressBlockReference, AWSS3TransferUtilityUploadCompletionHandlerBlock  _Nullable __autoreleasing * _Nullable completionHandlerReference) {
//
//        uploadProgressBlockReference = uploadProgressBlock;
//        completionHandlerReference = completionHandler;
//    } downloadTask: nil];
//}

//-(void) setCompletionHandler:(AWSS3TransferUtilityUploadCompletionHandlerBlock)completionHandler {
//
//    self.completionHandler = completionHandler;
//}
//
//-(void) setProgressBlock:(AWSS3TransferUtilityProgressBlock)progressBlock {
//    self.progressBlock = progressBlock;
//}

@end

