//
//  PrincipalViewController.h
//  mygeosale
//
//  Created by Paulo Eduardo Almeida de Klerk Pontes on 10/09/14.
//  Copyright (c) 2014 mygeosale. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <GoogleMaps/GoogleMaps.h>

@interface PrincipalViewController : UIViewController <UITextFieldDelegate>{

    IBOutlet UIImageView *uiiv_Logotipo;
    
}

@property(weak,nonatomic) IBOutlet UITextField *uitf_Usuario;

@property(weak, nonatomic) IBOutlet UITextField *uitf_Senha;


// Botão Entrar
-(IBAction)Entrar;

//Botão para Cadastro
-(IBAction)Cadastro;

// Ação BG da tela
- (IBAction)backgroundTap:(id)sender;

@end
