//
//  AddToDoItemViewController.m
//  ToDoListObjectiveC
//
//  Created by Jitendra Kulkarni on 5/28/15.
//  Copyright (c) 2015 Second Opinion. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if(sender != self.saveButton) return;
    if(self.textField.text.length > 0) {
        self.toToItem = [[ToDoItem alloc] init];
        self.toToItem.itemName = self.textField.text;
        self.toToItem.completed = NO;
    }
}


@end
