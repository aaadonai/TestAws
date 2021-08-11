//
//  ViewController.swift
//  TestAWS
//
//  Created by Antonio Rodrigues on 8/10/21.
//

import UIKit

import AWSS3


class ViewController: UIViewController {

    let transferUtility = AWSS3TransferUtility.default()

    var uploadProgressBlock: AWSS3TransferUtilityProgressBlock? = {(task: AWSS3TransferUtilityTask, progress: Progress) in
        DispatchQueue.main.async {
            // Handle progress feedback, e.g. update progress bar
        }
    }
    var downloadProgressBlock: AWSS3TransferUtilityProgressBlock? = {
        (task: AWSS3TransferUtilityTask, progress: Progress) in DispatchQueue.main.async {
            // Handle progress feedback, e.g. update progress bar
        }
    }
    var completionBlockUpload:AWSS3TransferUtilityUploadCompletionHandlerBlock? = {
        (task, error) in DispatchQueue.main.async {
            // perform some action on completed upload operation
        }
    }
    var completionBlockDownload:AWSS3TransferUtilityDownloadCompletionHandlerBlock? = {
        (task, url, data, error) in DispatchQueue.main.async {
            // perform some action on completed download operation
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        transferUtility.uploadProgressBlock = uploadProgressBlock
        transferUtility.completionHandler = completionBlockUpload
        transferUtility.reassignBlocks();

//        transferUtility.enumerateToAssignBlocks(forUploadTask: {
//            (task, progress, completion) -> Void in
//
//            let progressPointer = AutoreleasingUnsafeMutablePointer<AWSS3TransferUtilityProgressBlock?>(&self.uploadProgressBlock)
//
//            let completionPointer = AutoreleasingUnsafeMutablePointer<AWSS3TransferUtilityUploadCompletionHandlerBlock?>(&self.completionBlockUpload)
//
//                // Reassign your progress feedback
//                progress?.pointee = progressPointer.pointee
//
//                // Reassign your completion handler.
//                completion?.pointee = completionPointer.pointee
//
//        }, downloadTask: {
//            (task, progress, completion) -> Void in
//
//            let progressPointer = AutoreleasingUnsafeMutablePointer<AWSS3TransferUtilityProgressBlock?>(&self.downloadProgressBlock)
//
//            let completionPointer = AutoreleasingUnsafeMutablePointer<AWSS3TransferUtilityDownloadCompletionHandlerBlock?>(&self.completionBlockDownload)
//
//                // Reassign your progress feedback
//                progress?.pointee = progressPointer.pointee
//
//                // Reassign your completion handler.
//                completion?.pointee = completionPointer.pointee
//        })



    }


}

