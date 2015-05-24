//
//  NewEntryViewController.m
//  Diary
//
//  Created by JIAN WANG on 5/24/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "NewEntryViewController.h"
#import "CoreDataStack.h"
#import "DiaryEntry.h"

@interface NewEntryViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation NewEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertDiaryEntry {
    CoreDataStack *coreDataStack = [CoreDataStack defaultStack];
    DiaryEntry *newEntry = [NSEntityDescription insertNewObjectForEntityForName:@"DiaryEntry" inManagedObjectContext:coreDataStack.managedObjectContext];
    newEntry.body = self.textField.text;
    newEntry.date = [[NSDate date] timeIntervalSince1970];
    [coreDataStack saveContext];
}

-(void)dismissSelf {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneButtonPressed:(UIBarButtonItem *)sender {
    [self insertDiaryEntry];
    [self dismissSelf];
}

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender {
    [self dismissSelf];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
