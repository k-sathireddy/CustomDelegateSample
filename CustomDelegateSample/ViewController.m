//
//  ViewController.m
//  CustomDelegateSample

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<SecondViewControllerPotocol>
@property (weak, nonatomic) IBOutlet UIButton *sampleButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)navigateToSecondVCOnButtonClick:(id)sender {
    
    SecondViewController *second = (SecondViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    second.delegate = self;
    [self.navigationController presentViewController:second animated:YES completion:nil];
}

- (void)changeButtonTitleWithText:(NSString *)title{
    
    [self.sampleButton setTitle:title forState:UIControlStateNormal];
}


@end
