//
//  OreoCollectionViewController.m
//  HW-UICollectionViewController
//
//  Created by 李育豪 on 2015/4/7.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "OreoCollectionViewController.h"

@interface OreoCollectionViewController ()

@end

@implementation OreoCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)awakeFromNib
{
    
    imageArray = [[NSMutableArray alloc] init];
    [imageArray addObject:[UIImage imageNamed:@"豆花妹1_01"]];
    [imageArray addObject:[UIImage imageNamed:@"豆花妹1_02"]];
    [imageArray addObject:[UIImage imageNamed:@"豆花妹1_03"]];
    [imageArray addObject:[UIImage imageNamed:@"豆花妹1_04"]];
    [imageArray addObject:[UIImage imageNamed:@"豆花妹1_05"]];
    [imageArray addObject:[UIImage imageNamed:@"豆花妹1_06"]];
    [imageArray addObject:[UIImage imageNamed:@"豆花妹1_07"]];
    [imageArray addObject:[UIImage imageNamed:@"豆花妹1_08"]];
    [imageArray addObject:[UIImage imageNamed:@"豆花妹1_09"]];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    
//    [self.collectionView registerClass:[OreoCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
//    
    
    [self.colView reloadData];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [imageArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
     NSString * const identifier = @"Cell";
    
    OreoCollectionViewCell *cell = (OreoCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[OreoCollectionViewCell alloc] init];
    }
    
    NSLog(@"程式有跑喔");
    
    cell.imageView.image = [imageArray objectAtIndex:indexPath.row];

    if (cell.imageView.image)
        NSLog(@"程式也有跑這裏");

    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

#pragma - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(100, 100);
}

@end
