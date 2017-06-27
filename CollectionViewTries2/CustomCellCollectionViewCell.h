//
//  CustomCellCollectionViewCell.h
//  CollectionViewTries2
//
//  Created by mac on 6/27/17.
//  Copyright © 2017 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *dataLabel;
@property (nonatomic) NSString *dataToSet;


@end
