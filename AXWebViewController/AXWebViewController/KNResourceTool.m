//
//  KNResourceTool.m
//  KNPodlib
//
//  Created by devzkn on 26/04/2018.
//

//#import "KNResourceTool.h"
#import "Const.h"
@implementation KNResourceTool

/**
 devzkndeMacBook-Pro:KNPodlib_Example.app devzkn$ tree -L 4
 .
 ├── Base.lproj
 │   └── LaunchScreen.storyboardc
 │       ├── 01J-lp-oVM-view-Ze5-6b-2t3.nib
 │       ├── Info.plist
 │       └── UIViewController-01J-lp-oVM.nib
 ├── Frameworks
 │   └── KNPodlib.framework
 │       ├── HCPCMPayProgress.nib
 │       ├── Info.plist
 │       ├── KNFeedbackViewController.nib
 │       ├── KNPodlib
 │       ├── KNPodlib.bundle
 │       │   ├── Info.plist
 │       │   ├── deleteX.png
 │       │   ├── hebaoGrayPoint.png
 │       │   ├── hebaoWhitePoint.png
 │       │   └── store_add.png
 │       └── _CodeSignature
 │           └── CodeResources
 
 */
+ (UIImage*)setupPng:(NSString*)name{
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                            stringByAppendingPathComponent:MYBUNDLE_NAME];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
//     MYBUNDLE
//
    UIImage *image = [UIImage imageNamed:name
                                inBundle:resource_bundle
           compatibleWithTraitCollection:nil];
    return image;
}

+ (UIImage*)processPng:(NSString*)name{
    UIImage *image = [UIImage imageNamed:name
                                inBundle:knpngBUNDLE
           compatibleWithTraitCollection:nil];
    NSLog(@"processPng %@:",knpngBUNDLE);//NSBundle </var/containers/Bundle/Application/CE2AAD90-C360-4226-8DD6-BB0D46B5C138/KNPodlib_Example.app/Frameworks/KNPodlib.framework/KNPodlib.bundle>
    return image;
}
@end
