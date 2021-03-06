//
//  ViewController.m
//  CoreAdvancedAnimation
//
//  Created by mac on 2018/8/7.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"
#import "HiddenAnimationViewController.h"
#import "JitterViewController.h"
#import "TransitionViewController.h"
#import "SkidViewController.h"
#import "LinkViewController.h"
#import "MatchstickMenViewController.h"
#import "SublayerViewController.h"
#import "CustomTransitionViewController.h"
#import "NumberAnimationViewController.h"
#import "BubbleDragViewController.h"
#import "PhysicsEngineViewController.h"
#import "SpringHeaderViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
   
    CGFloat width =100;
    CGFloat height = 20;
    CGFloat l_space = 20;
    CGFloat v_space = 20;
    CGFloat top = 80;
    
    
    UIButton * hiddenBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space, top, width, height)];
    [self createButton:hiddenBtn setTitle:@"隐式动画" addAction:@selector(hiddenBtnClick:)];
    
    UIButton * jitterBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space+width+l_space, top, width, height)];
    [self createButton:jitterBtn setTitle:@"关键帧动画" addAction:@selector(jitterBtnClick:)];
    
    UIButton * transition =[[UIButton alloc]initWithFrame:CGRectMake(l_space+(width+l_space)*2, top, width, height)];
    [self createButton:transition setTitle:@"转场动画" addAction:@selector(transitionClick:)];
    
    UIButton * skid =[[UIButton alloc]initWithFrame:CGRectMake(l_space, top+height+v_space, width, height)];
    [self createButton:skid setTitle:@"侧滑动画" addAction:@selector(skidClick:)];
    
    
    UIButton * matchstickMenBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space+width+l_space, top+height+v_space, width, height)];
    [self createButton:matchstickMenBtn setTitle:@"火柴人图形" addAction:@selector(matchstickMenBtnClick:)];
    
    UIButton * subLayerBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space+(width+l_space)*2, top+height+v_space, width, height)];
    [self createButton:subLayerBtn setTitle:@"子图层" addAction:@selector(subLayerBtnClick:)];
    
    UIButton *customTransitionBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space, top+(height+v_space)*2, width, height)];
    [self createButton:customTransitionBtn setTitle:@"自定义转场" addAction:@selector(customTransitionBtnClick:)];
    
    UIButton *numberAnimationBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space+width+l_space, top+(height+v_space)*2, width, height)];
    [self createButton:numberAnimationBtn setTitle:@"数字跳动" addAction:@selector(numberAnimationBtnClick:)];
    
    UIButton * likeBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space+(width+l_space)*2, top+(height+v_space)*2, width, height)];
    [self createButton:likeBtn setTitle:@"粒子动画" addAction:@selector(likeBtnClick:)];
    
    UIButton *bdBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space, top+(height+v_space)*3, width, height)];
    [self createButton:bdBtn setTitle:@"气泡拖拽" addAction:@selector(bdBtnClick:)];
    
    
    UIButton *pe2DBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space+(width+l_space), top+(height+v_space)*3, width, height)];
    [self createButton:pe2DBtn setTitle:@"物理引擎" addAction:@selector(pe2DBtnClick:)];
    
    UIButton *springHeaderBtn =[[UIButton alloc]initWithFrame:CGRectMake(l_space+(width+l_space)*2, top+(height+v_space)*3, width, height)];
    [self createButton:springHeaderBtn setTitle:@"弹簧Header" addAction:@selector(springHeaderBtnClick:)];
}
#pragma mark --弹簧Header效果
-(void)springHeaderBtnClick:(UIButton *)btn{
    SpringHeaderViewController * controller =[[SpringHeaderViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --2D物理引擎
-(void)pe2DBtnClick:(UIButton *)btn{
    PhysicsEngineViewController * controller =[[PhysicsEngineViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --隐式动画
-(void)hiddenBtnClick:(UIButton *)btn{
    HiddenAnimationViewController * controller =[[HiddenAnimationViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --QQ气泡拖拽效果动画
-(void)bdBtnClick:(UIButton *)btn{
    BubbleDragViewController * controller =[[BubbleDragViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --抖动效果-关键帧动画
-(void)jitterBtnClick:(UIButton *)btn{
    JitterViewController * controller =[[JitterViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --转场动画
-(void)transitionClick:(UIButton *)btn{
    TransitionViewController * controller =[[TransitionViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --侧滑
-(void)skidClick:(UIButton *)btn{
    SkidViewController * controller =[[SkidViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --粒子动画(点赞&雪花)
-(void)likeBtnClick:(UIButton *)btn{
    LinkViewController * controller =[[LinkViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --赛贝尔绘制火柴人
-(void)matchstickMenBtnClick:(UIButton *)btn{
    MatchstickMenViewController * controller =[[MatchstickMenViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --子图层(渐变+3D+富文本等)
-(void)subLayerBtnClick:(UIButton *)btn{
    SublayerViewController * controller =[[SublayerViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --自定义转场动画
-(void)customTransitionBtnClick:(UIButton *)btn{
    CustomTransitionViewController * controller =[[CustomTransitionViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

#pragma mark --数字跳动动画
-(void)numberAnimationBtnClick:(UIButton *)btn{
    NumberAnimationViewController * controller =[[NumberAnimationViewController alloc]init];
    [self.navigationController pushViewController:controller animated:NO];
}

-(void)createButton:(UIButton *)btn setTitle:(NSString *)title addAction:(SEL)action{
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    btn.titleLabel.font =[UIFont systemFontOfSize:12.0];
    [btn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:btn];
}


@end
