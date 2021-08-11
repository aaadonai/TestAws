//
//  AWSS3TransferUtility+Extensions.h
//  TestAWS
//
//  Created by Antonio Rodrigues on 8/11/21.
//

#import <AWSS3/AWSS3.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWSS3TransferUtility (Extensions)

@property (nonatomic, nullable, strong) AWSS3TransferUtilityProgressBlock uploadProgressBlock;
@property (nonatomic, nullable, strong) AWSS3TransferUtilityUploadCompletionHandlerBlock completionHandler;

- (void)reassignBlocks;

//- (void)reassignBlocks: (nullable AWSS3TransferUtilityProgressBlock _Nullable  *) uploadProgressBlock
//            completion: (nullable AWSS3TransferUtilityUploadCompletionHandlerBlock _Nullable *) completionHandler;

- (void) setCompletionHandler: (AWSS3TransferUtilityUploadCompletionHandlerBlock _Nullable )completionHandler;
- (void) setProgressBlock: (AWSS3TransferUtilityProgressBlock _Nullable ) progressBlock;

@end

NS_ASSUME_NONNULL_END
