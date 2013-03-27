//
//  JPMovieListViewController.m
//  Week4Project4
//
//  Created by Wayne Pennell on 3/26/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "JPMovieListViewController.h"
#import "JPMovie.h"
#import "JPAddMovieViewController.h"
#import "JPEditMovieViewController.h"

@interface JPMovieListViewController ()

@end

@implementation JPMovieListViewController

@synthesize movies = _movies;

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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.movies = [[NSMutableArray alloc] init];
    
    //Adding my test movie
//    JPMovie *movie = [[JPMovie alloc] initWithName:@"Die Hard" needMovie:YES];
//    
//    [self.movies addObject:movie];
//    
//    
//    JPMovie *needThisMovie = [[JPMovie alloc] initWithName:@"Finding Nemo" needMovie:NO];
//    
//    [self.movies addObject:needThisMovie];
//    
//    //Refreshing our data of movies
//    [self.tableView reloadData]; 
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //Returns my movies by count
    
    return self.movies.count;
}

//Using Segue to go through the add view controller - reference to itself

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"AddMovieSegue"]){
        
        //Casting the controller
        UINavigationController *navCon = segue.destinationViewController;
        
        //Get the root controller
        JPAddMovieViewController *addMovieController = [navCon.viewControllers objectAtIndex:0];
        addMovieController.movieListViewController = self;
    } else if ([segue.identifier isEqualToString:@"EditHaveMovieSegue"] || [segue.identifier isEqualToString:@"EditDontHaveMovieSegue"]) {
        
        //Editing off to view controller
        JPEditMovieViewController *editMovieViewController = segue.destinationViewController;
        editMovieViewController.movie = [self.movies objectAtIndex:self.tableView.indexPathForSelectedRow.row];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *DontHaveCellIdentifier = @"DoNotHaveCell";
    static NSString *HaveCellIdentifier = @"DoHaveCell";
    
    JPMovie *currentMovie = [self.movies objectAtIndex:indexPath.row];
    
    NSString *cellIdentifier = currentMovie.needMovie ? HaveCellIdentifier : DontHaveCellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell... to get current movie
    
    cell.textLabel.text = currentMovie.nameMovie;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [self.movies removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    JPMovie *movieMove = [self.movies objectAtIndex:fromIndexPath.row];
    
    //Movies are allowed to be moved up and down in the stack
    [self.movies removeObjectAtIndex:fromIndexPath.row];
    [self.movies insertObject:movieMove atIndex:toIndexPath.row];
}



// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

#pragma - IBActions

-(void)editButtonPressed:(id)sender {
    self.editing = !self.editing;
}

@end
