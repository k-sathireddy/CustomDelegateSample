//
//  SecondViewController.m
//  CustomDelegateSample


#import "SecondViewController.h"

@interface SecondViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *colorsTableView;
@property (strong, nonatomic) NSArray *colorsArray;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.colorsTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.colorsArray = @[@"Red",@"Blue",@"Green",@"Yellow",@"Pink"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.colorsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *customCell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    customCell.textLabel.text = self.colorsArray[indexPath.row];   
    
    return customCell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *selectedCell = (UITableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    [_delegate changeButtonTitleWithText:selectedCell.textLabel.text];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


@end
