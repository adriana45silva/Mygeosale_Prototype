//
//  PrincipalViewController.m
//  mygeosale
//
//  Created by Paulo Eduardo Almeida de Klerk Pontes on 10/09/14.
//  Copyright (c) 2014 mygeosale. All rights reserved.
//

#import "PrincipalViewController.h"
#import "CadastroViewController.h"
#import "GoogleMapsTestViewController.h"
#import "Parse/Parse.h"

#import <GoogleMaps/GoogleMaps.h>

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

- (void)viewDidLoad
{
    
    //TESTE PARSE
    
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
    
//    self.title = @"Voltar";
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    uiiv_Logotipo.image = [UIImage imageNamed:@"logotipo.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Função do botão ENTRAR

-(IBAction)Entrar{
    
    NSInteger success = 0;
    
    @try {
        if([[self.uitf_Usuario text] isEqualToString:@""] || [[self.uitf_Senha text] isEqualToString:@""]){
            
            [self alertStatus:@"Usuário e/ou Senha Inválido":@"Login Inválido" :0];
        
        }else{
            NSString *post = [[NSString alloc] initWithFormat:@"usuario=%@&senha=%@",[self.uitf_Usuario text], [self.uitf_Senha text]];
            NSLog(@"PostData: %@", post);
        }
    }
    @catch (NSException  * e) {
        NSLog(@"Exeception: %@" , e);
        [self alertStatus:@"Login Invalido" :@"Erro" :0];
    }
    
    
}

-(IBAction)Cadastro{

    CadastroViewController *cvc = [self.storyboard instantiateViewControllerWithIdentifier:@"CadastroViewController"];
    
    [cvc setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    
    //Passando parametros para a segunda tela. No exemplo abaixo, o nsma_Votos é uma Array da Classe
    //"PrincipalViewController" que esta passando os paramentos para o Array da Classe
    //"ResultadoViewController".
    
    //rvc.nsma_Resultados = nsma_Votos;
    
    [self presentViewController: cvc animated:YES completion:nil];

}

// Criação do Alerta
-(void) alertStatus:(NSString *) msg:(NSString *)title :(int) tag
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                        message:msg
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil,nil];
    alertView.tag = tag;
    [alertView show];
}

// Ação para retirar o teclado da tela clicando BG
- (IBAction)backgroundTap:(id)sender {
    
    [self.view endEditing:YES];
}

// Ação para retirar o teclado da tela clicando no Botão Retorno do teclado
-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    [textField resignFirstResponder];
    return YES;
}

@end
