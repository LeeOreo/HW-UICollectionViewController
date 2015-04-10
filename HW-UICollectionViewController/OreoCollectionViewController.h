//
//  OreoCollectionViewController.h
//  HW-UICollectionViewController
//
//  Created by 李育豪 on 2015/4/7.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OreoCollectionViewCell.h"

@interface OreoCollectionViewController : UICollectionViewController
{
    NSMutableArray *imageArray;
}
@property (strong, nonatomic) IBOutlet UICollectionView *colView;

@end
