//
//  CadastroViewController.h
//  mygeosale
//
//  Created by Nathan Rorys on 20/09/14.
//  Copyright (c) 2014 mygeosale. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CadastroViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *uipv_Sexo;
@property (weak, nonatomic) IBOutlet UITextField *uitf_CadastroUsuario;
@property (weak, nonatomic) IBOutlet UITextField *uitf_CadastroSenha;
@property (weak, nonatomic) IBOutlet UITextField *uitf_CadastroConfirmaSenha;
@property (weak, nonatomic) IBOutlet UITextField *uitf_CadastroDtNascimento;



-(IBAction)botaoVoltar;
- (IBAction)backgroundTap;

@end
