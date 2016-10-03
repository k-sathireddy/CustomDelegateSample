//
//  SecondViewController.h
//  CustomDelegateSample


#import <UIKit/UIKit.h>

@protocol SecondViewControllerPotocol <NSObject>

@optional
- (void)changeButtonTitleWithText:(NSString *)title;

@end


@interface SecondViewController : UIViewController
//delegate
@property (nonatomic, assign) id<SecondViewControllerPotocol> delegate;
@end
