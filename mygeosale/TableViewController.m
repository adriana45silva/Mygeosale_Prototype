//
//  TableViewController.m
//  mygeosale
//
//  Created by Adriana Silva on 10/5/14.
//  Copyright (c) 2014 mygeosale. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

NSArray *nsa_Servicos;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    uitv_Servicos.delegate = self;
    uitv_Servicos.dataSource = self;
    
    nsa_Servicos = [[NSArray alloc] initWithObjects:@"Serviços",
                    @"Eventos",
                    @"Serviços Domésticos",
                    @"Tecnologia",
                    @"Beleza e Estética",
                    @"Consultorias",
                    @"Educação"
                    @"Produtos em geral",
                    nil];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    return [nsa_Servicos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *categorias = @"Servicos";
    UITableViewCell *thisCategorias = [tableView dequeueReusableCellWithIdentifier:categorias];
    
    if (thisCategorias == nil){
        thisCategorias = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: (NSString *) categorias];
    }
    
    
    
    thisCategorias.textLabel.text = [nsa_Servicos objectAtIndex:indexPath.row];
    return thisCategorias;
    NSLog(thisCategorias);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
