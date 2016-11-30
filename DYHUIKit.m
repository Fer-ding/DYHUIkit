//
//  LHYUIKit.m
//  OOLaGongYi
//
//  Created by YueHui on 16/11/29.
//  Copyright © 2016年 GZ Leihou Software Development CO.,LTD. All rights reserved.
//

#import "DYHUIKit.h"

@implementation DYHUIKit

#pragma mark ------- UIView -------

+ (UIView *)viewWithBackgroudColor:(UIColor *)backgroudColor {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = backgroudColor;
    return view;
}

#pragma mark ------- UILabel -------

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                       fontSize:(CGFloat)size {
    
    return [DYHUIKit labelWithBackgroundColor:[UIColor clearColor] textColor:textColor textAlignment:NSTextAlignmentCenter numberOfLines:1 text:nil fontSize:size];
}

+ (UILabel *)labelWithText:(NSString *)text
                  fontSize:(CGFloat)size {
    
    return [DYHUIKit labelWithBackgroundColor:[UIColor clearColor] textColor:[UIColor blackColor] textAlignment:NSTextAlignmentCenter numberOfLines:1 text:text fontSize:size];
}

+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor
                  fontSize:(CGFloat)size {
    
    return [DYHUIKit labelWithBackgroundColor:[UIColor clearColor] textColor:textColor textAlignment:NSTextAlignmentCenter numberOfLines:1 text:text fontSize:size];
}

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                  numberOfLines:(NSInteger)numberOfLines
                           text:(NSString *)text
                       fontSize:(CGFloat)size {
    
    return [DYHUIKit labelWithBackgroundColor:[UIColor clearColor] textColor:textColor textAlignment:NSTextAlignmentCenter numberOfLines:numberOfLines text:text fontSize:size];
}

+ (UILabel *)labelWithBackgroundColor:(UIColor *)backgroudColor
                            textColor:(UIColor *)textColor
                        textAlignment:(NSTextAlignment)textAlignment
                        numberOfLines:(NSInteger)numberOfLines
                                 text:(NSString *)text
                             fontSize:(CGFloat)size {
    
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = backgroudColor;
    label.textColor = textColor;
    label.textAlignment = textAlignment;
    label.numberOfLines = numberOfLines;
    label.text = text;
    label.font = [UIFont systemFontOfSize:size];
    return label;
    
}

#pragma mark ------- UIButton -------

+ (UIButton *)buttonWithTarget:(id)target action:(SEL)action {
    return [DYHUIKit buttonWithType:UIButtonTypeCustom target:target action:action];
}

+ (UIButton *)buttonWithType:(UIButtonType)buttonType
                      target:(id)target
                      action:(SEL)action {
    UIButton *btn = [UIButton buttonWithType:buttonType];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

#pragma mark ------- UIImageView -------

+ (UIImageView *)createImageView {
    
    return [DYHUIKit imageViewWithImage:nil contentMode:UIViewContentModeScaleAspectFill];
}

+ (UIImageView *)imageViewWithImage:(UIImage *)image {
    
    return [DYHUIKit imageViewWithImage:image contentMode:UIViewContentModeScaleAspectFill];
}

+ (UIImageView *)imageViewWithImage:(UIImage *)image
                        contentMode:(UIViewContentMode)contentMode {
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.contentMode = contentMode;
    return imageView;

}

#pragma mark ------- UITextField -------

+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder {
    
    return [DYHUIKit textFieldWithStyle:UITextBorderStyleNone keyboardType:UIKeyboardTypeDefault placeholder:placeholder];
}

+ (UITextField *)textFieldWithKeyboardType:(UIKeyboardType)keyboardType placeholder:(NSString *)placeholder {
    
    return [DYHUIKit textFieldWithStyle:UITextBorderStyleNone keyboardType:keyboardType placeholder:placeholder];
}

+ (UITextField *)textFieldWithStyle:(UITextBorderStyle)style keyboardType:(UIKeyboardType)keyboardType placeholder:(NSString *)placeholder {
    
    UITextField *textField = [[UITextField alloc] init];
    textField.borderStyle = style;
    textField.keyboardType = keyboardType;
    textField.placeholder = placeholder;
    return textField;
}

#pragma mark ------- UITableView -------

+ (UITableView *)tableViewWithDataSource:(id)dataSource
                                delegete:(id)delegate {
    
    return [DYHUIKit tableViewWithDataSource:dataSource delegete:delegate style:UITableViewStylePlain];
}

+ (UITableView *)tableViewWithDataSource:(id)dataSource
                                delegete:(id)delegate
                                   style:(UITableViewStyle)style {
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    tableView.dataSource = dataSource;
    tableView.delegate = delegate;
    return tableView;
}

@end
