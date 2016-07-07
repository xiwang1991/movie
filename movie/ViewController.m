//
//  ViewController.m
//  movie
//
//  Created by Pro on 15/10/15.
//  Copyright (c) 2015年 enterprise. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()
{
    MPMoviePlayerController *moviePlayer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIWebView *web = [[UIWebView alloc] initWithFrame:self.view.bounds];
//    NSString *str = @"http://www.youku.com";
//    NSURL *url = [NSURL URLWithString:str];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    [web loadRequest:request];
//    [self.view addSubview:web];
    
    /*这是在测试*/
    
    NSURL *url = [NSURL URLWithString:@"http://175.6.7.244:8080/appdemo/xj.mp4"];
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];

    moviePlayer.view.frame = CGRectMake(0, 20, CGRectGetMaxX(self.view.bounds), CGRectGetHeight(self.view.bounds) * 0.3);
    
    moviePlayer.scalingMode = MPMovieScalingModeAspectFit;
    
    [moviePlayer setFullscreen:YES];
    
    [moviePlayer play];
    
    [self.view addSubview:moviePlayer.view];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
