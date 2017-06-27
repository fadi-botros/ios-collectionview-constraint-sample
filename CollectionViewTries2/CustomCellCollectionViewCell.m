//
//  CustomCellCollectionViewCell.m
//  CollectionViewTries2
//
//  Created by mac on 6/27/17.
//  Copyright © 2017 mac. All rights reserved.
//

#import "CustomCellCollectionViewCell.h"

@implementation CustomCellCollectionViewCell

-(void)setDataToSet:(NSString *)dataToSet {
    _dataToSet = dataToSet;
    if (self.dataLabel != nil) {
        [self.dataLabel setText:dataToSet];
    }
}

-(void)awakeFromNib {
    [super awakeFromNib];
    [self.dataLabel setText:self.dataToSet];
}


@end
