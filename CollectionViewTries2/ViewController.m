//
//  ViewController.m
//  CollectionViewTries2
//
//  Created by mac on 6/27/17.
//  Copyright © 2017 mac. All rights reserved.
//

#import "ViewController.h"
#import "CustomCellCollectionViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [((UICollectionViewFlowLayout *) [self.collectionView collectionViewLayout]) setEstimatedItemSize: CGSizeMake(self.view.frame.size.width, 100)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCellCollectionViewCell *cell = (CustomCellCollectionViewCell *) ([collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath]);
    int rnd = rand();
    int len = rnd % 15;
    NSMutableString *str = [NSMutableString stringWithCapacity:16];
    for (int i=0;i<len;i++) {
        [str appendString:[NSString stringWithFormat:@"New string %i\n", i]];
    }
    [cell setDataToSet:str];
    return cell;
}

@end
