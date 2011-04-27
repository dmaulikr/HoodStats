//
//  PhotoViewController.m
//  HoodStats
//
//  Created by Shannon Rush on 4/27/11.
//  Copyright 2011 Rush Devo. All rights reserved.
//

#import "PhotoViewController.h"


@implementation PhotoViewController

@synthesize initialImage, images;

- (void)viewDidLoad {
    [super viewDidLoad];
    photoView.image = initialImage;
    [self initImageViews];
}

-(void)initImageViews {
    imageViews = [[NSMutableArray alloc]init];
    for (UIImage *image in images) {
        UIImageView *view = [[UIImageView alloc]initWithImage:image];
        view.frame = self.view.frame;
        [self.view addSubview:view];
        [imageViews addObject:view];
        [view release];
    }
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end