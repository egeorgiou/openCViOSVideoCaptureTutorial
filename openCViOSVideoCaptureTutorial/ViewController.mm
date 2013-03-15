//
//  ViewController.m
//  openCViOSVideoCaptureTutorial
//
//  Created by Evangelos Georgiou on 15/03/2013.
//  Copyright (c) 2013 Evangelos Georgiou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize videoCamera;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    self.videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionFront;
    self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset352x288;
    self.videoCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    self.videoCamera.defaultFPS = 30;
    self.videoCamera.grayscaleMode = NO;
    
    self.videoCamera.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Protocol CvVideoCameraDelegate

#ifdef __cplusplus
- (void)processImage:(Mat&)image;
{
    //do stuff to image
}
#endif

#pragma mark - UI Actions

- (IBAction)cameraStart:(id)sender
{
    [self.videoCamera start];
}

- (IBAction)cameraStop:(id)sender
{
    [self.videoCamera stop];
}

@end
