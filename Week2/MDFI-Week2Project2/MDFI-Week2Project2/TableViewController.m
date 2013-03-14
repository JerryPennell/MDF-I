//
//  TableViewController.m
//  MDFI-Week2Project2
//
//  Created by Wayne Pennell on 3/13/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "TableViewController.h"
#import "CustomCellView.h"
#import "DetailView.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //An array of game titles
    articleTitlesUI = [NSArray arrayWithObjects:@"Timeless Reels.", nil];
    
    //Any array of platforms
    articleInfoUI = [NSArray arrayWithObjects:@"By: Roehrig, Lucy; Roehrig, Gregory. Library Journal. 9/1/2011, Vol. 136 Issue 14, p38-41. 4p. 3 Color Photographs, 1 Chart. Abstract: The authors of this article discuss what criteria libraries should use when developing a collection of classic films on digital video discs (DVDs). They suggest that one obvious criteria is the awards a film has received. Other requirements are that the collection contain a sampling of notable directors and actors and a wide range of genres. The authors have compiled a list of films divided by decade, including \"Wizard of Oz,\" \"Gone with the Wind,\" and \"Butch Cassidy and the Sundance Kid\". (AN: 65255716)", nil];
    
    //Date of the choosen article
    articleDateInfoUI = [NSArray arrayWithObjects:@"9/1/2011", nil];
    
    //Article to link choosen
    articleLinkUI = [NSArray arrayWithObjects:@"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=65255716&site=ehost-live", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the articles provided.
    return articleTitlesUI.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"CustomCell";
    
    CustomCellView *cell = (CustomCellView *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    //Setting title and date
    cell.customCellTitle.text = [articleTitlesUI objectAtIndex:indexPath.row];
    cell.customCellDate.text = [articleDateInfoUI objectAtIndex:indexPath.row];
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return NO;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailView *detailView = [[DetailView alloc] initWithNibName:@"DetailView" bundle:nil];
    
    //Shows detailview
    [self.navigationController pushViewController:detailView animated:YES];
    
    //Fills detail view info from array
    detailView.articlesTitle.text = [articleTitlesUI objectAtIndex:indexPath.row];
    detailView.articlesSummary.text = [articleInfoUI objectAtIndex:indexPath.row];
    detailView.articlesDate.text = [articleDateInfoUI objectAtIndex:indexPath.row];
    detailView.articlesLink.text = [articleLinkUI objectAtIndex:indexPath.row];
}

@end
