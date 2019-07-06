//
//  ViewController.m
//  aula1
//
//  Created by Pedro Brito on 01/07/2019.
//  Copyright © 2019 Pedro ML Brito. All rights reserved.
//

#import "ViewController.h"
#import "Utilizador.h"

@interface ViewController ()

#pragma mark - UI state
@property (nonatomic, weak) IBOutlet UITextField *inputName;
@property (nonatomic, weak) IBOutlet UITextField *inputNumber;
@property (nonatomic, weak) IBOutlet UITextField *inputType;
@property (nonatomic, weak) IBOutlet UITextField *inputContact;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

#pragma mark - MODEL state
@property (nonatomic, strong) Utilizador *userState;
@property (nonatomic, strong) NSMutableArray *users;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.users = [NSMutableArray new];
}

- (BOOL)validateStringInput:(NSString *)stringParam {
    BOOL isValid = [stringParam length] > 0;
    return isValid;
}

- (IBAction)saveButtonTapped:(id)sender {
    //NSLog(@"%@", @"YAY TOQUEI NO BOTÃO!!");
    
    NSString *nameText = self.inputName.text;
    NSString *numberText = self.inputNumber.text;
    NSString *typeText = self.inputType.text;
    NSString *contactText = self.inputContact.text;
    
    BOOL isNameTextValid = [self validateStringInput:nameText];
    BOOL isNumberValid = [numberText integerValue] > 0;
    BOOL isTypeTextValid = [self validateStringInput:typeText];
    BOOL isContactValid = [contactText containsString:@"@"];
    
    if(isNameTextValid && isNumberValid && isTypeTextValid && isContactValid) {
        Utilizador *current = [[Utilizador alloc] initWith:nameText and:[numberText integerValue] and:typeText and:contactText];
        
        [self.users addObject:current];
        
        self.infoLabel.text = [NSString stringWithFormat:@"Utilizadores Guardados: %ld", [self.users count]];
        self.infoLabel.textColor = [UIColor blackColor];
        
        //v1 - single user state
//        self.userState = = [[Utilizador alloc] initWith:nameText and:[numberText integerValue] and:typeText and:contactText];
//        self.infoLabel.text = [self.userState getUserDescription];
//        self.infoLabel.textColor = [UIColor blackColor];
    } else {
        self.infoLabel.text = @"Dados Inválidos";
        self.infoLabel.textColor = [UIColor redColor];
    }
}

@end
