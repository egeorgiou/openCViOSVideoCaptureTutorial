//
//  ViewController.h
//  openCViOSVideoCaptureTutorial
//
//  Created by Evangelos Georgiou on 15/03/2013.
//  Copyright (c) 2013 Evangelos Georgiou. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <opencv2/highgui/cap_ios.h>
using namespace cv;

@interface ViewController : UIViewController<CvVideoCameraDelegate>
{
    IBOutlet UIImageView* imageView;
    
    CvVideoCamera* videoCamera;
}

@property (nonatomic, retain) CvVideoCamera* videoCamera;

- (IBAction)cameraStart:(id)sender;
- (IBAction)cameraStop:(id)sender;

@end
