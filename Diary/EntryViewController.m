//
//  NewEntryViewController.m
//  Diary
//
//  Created by JIAN WANG on 5/24/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "EntryViewController.h"
#import "CoreDataStack.h"
#import "DiaryEntry.h"

@interface EntryViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation EntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.entry != nil) {
        self.textField.text = self.entry.body;
    }
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

- (void)updateDiaryEntry {
    self.entry.body = self.textField.text;
    
    CoreDataStack *coreDataStack = [CoreDataStack defaultStack];
    [coreDataStack saveContext];
}

- (IBAction)doneButtonPressed:(UIBarButtonItem *)sender {
    if (self.entry != nil) {
        [self updateDiaryEntry];
    } else {
        [self insertDiaryEntry];
    }
    [self dismissSelf];
}

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender {
    [self dismissSelf];
}

@end
