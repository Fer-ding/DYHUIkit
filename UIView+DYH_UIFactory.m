//
//  UIView+DYH_UIFactory.m
//  Curato
//
//  Created by YueHui on 2017/9/14.
//  Copyright © 2017年 GZ Leihou Software Development CO.LTD. All rights reserved.
//

#import "UIView+DYH_UIFactory.h"

@implementation UIView (DYH_UIFactory)

#pragma mark ------- UIView -------

+ (id)viewWithBackgroudColor:(UIColor *)backgroudColor {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = backgroudColor;
    return view;
}

#pragma mark ------- UILabel -------

+ (id)labelWithTextColor:(UIColor *)textColor
                    font:(UIFont *)font {
    
    return [UIView labelWithBackgroundColor:[UIColor clearColor]
                                  textColor:textColor
                              textAlignment:NSTextAlignmentLeft
                              numberOfLines:1
                                       text:nil
                                       font:font];
}

+ (id)labelWithText:(NSString *)text
               font:(UIFont *)font {
    
    return [UIView labelWithBackgroundColor:[UIColor clearColor]
                                  textColor:[UIColor blackColor]
                              textAlignment:NSTextAlignmentLeft
                              numberOfLines:1
                                       text:text
                                       font:font];
}

+ (id)labelWithText:(NSString *)text
          textColor:(UIColor *)textColor
               font:(UIFont *)font {
    
    return [UIView labelWithBackgroundColor:[UIColor clearColor]
                                  textColor:textColor
                              textAlignment:NSTextAlignmentLeft
                              numberOfLines:1
                                       text:text
                                       font:font];
}

+ (id)labelWithTextColor:(UIColor *)textColor
                    font:(UIFont *)font
           numberOfLines:(NSInteger)numberOfLines {
    
    return [UIView labelWithBackgroundColor:[UIColor clearColor]
                                  textColor:textColor
                              textAlignment:NSTextAlignmentLeft
                              numberOfLines:numberOfLines
                                       text:nil
                                       font:font];
}


+ (id)labelWithTextColor:(UIColor *)textColor
                    font:(UIFont *)font
           textAlignment:(NSTextAlignment)textAlignment {
    
    return [UIView labelWithBackgroundColor:[UIColor clearColor]
                                  textColor:textColor
                              textAlignment:textAlignment
                              numberOfLines:1
                                       text:nil
                                       font:font];
}

+ (id)labelWithTextColor:(UIColor *)textColor
           numberOfLines:(NSInteger)numberOfLines
                    text:(NSString *)text
                    font:(UIFont *)font {
    
    return [UIView labelWithBackgroundColor:[UIColor clearColor]
                                  textColor:textColor
                              textAlignment:NSTextAlignmentLeft
                              numberOfLines:numberOfLines
                                       text:text
                                       font:font];
}

+ (id)labelWithBackgroundColor:(UIColor *)backgroudColor
                     textColor:(UIColor *)textColor
                 textAlignment:(NSTextAlignment)textAlignment
                 numberOfLines:(NSInteger)numberOfLines
                          text:(NSString *)text
                          font:(UIFont *)font {
    
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = backgroudColor;
    label.textColor = textColor;
    label.textAlignment = textAlignment;
    label.numberOfLines = numberOfLines;
    label.text = text;
    label.font = font;
    return label;
    
}

#pragma mark ------- UIButton -------

+ (id)buttonWithTarget:(id)target action:(SEL)action {
    
    return [UIView buttonWithType:UIButtonTypeCustom
                           target:target
                           action:action
                  backgroundColor:[UIColor clearColor]
                             font:nil];
}

+ (id)buttonWithType:(UIButtonType)buttonType
              target:(id)target
              action:(SEL)action {
    return [UIView buttonWithType:buttonType
                           target:target
                           action:action
                  backgroundColor:[UIColor clearColor]
                             font:nil];
}

+ (id)buttonWithTarget:(id)target
                action:(SEL)action
                  font:(UIFont *)font {
    return [UIView buttonWithType:UIButtonTypeCustom
                           target:target
                           action:action
                  backgroundColor:[UIColor clearColor]
                             font:font];
}

+ (id)buttonWithTarget:(id)target
                action:(SEL)action
       backgroundColor:(UIColor *)backgroudColor
                  font:(UIFont *)font {
    return [UIView buttonWithType:UIButtonTypeCustom
                           target:target
                           action:action
                  backgroundColor:backgroudColor
                             font:font];
}

+ (id)buttonWithType:(UIButtonType)buttonType
              target:(id)target
              action:(SEL)action
     backgroundColor:(UIColor *)backgroudColor
                font:(UIFont *)font {
    
    UIButton *btn = [UIButton buttonWithType:buttonType];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = backgroudColor;
    if (font) {
        btn.titleLabel.font = font;
    }
    return btn;
}

#pragma mark ------- UIImageView -------

+ (id)createImageView {
    
    return [UIView imageViewWithImage:nil contentMode:UIViewContentModeScaleAspectFill];
}

+ (id)imageViewWithImage:(UIImage *)image {
    
    return [UIView imageViewWithImage:image contentMode:UIViewContentModeScaleAspectFill];
}

+ (id)imageViewWithImageName:(NSString *)imageName {
    return [UIView imageViewWithImage:[UIImage imageNamed:imageName] contentMode:UIViewContentModeScaleAspectFill];
}

+ (id)imageViewWithImage:(UIImage *)image
             contentMode:(UIViewContentMode)contentMode {
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.contentMode = contentMode;
    return imageView;
}

#pragma mark ------- UITextField -------

+ (id)textFieldWithPlaceholder:(NSString *)placeholder {
    
    return [UIView textFieldWithStyle:UITextBorderStyleNone
                         keyboardType:UIKeyboardTypeDefault
                          placeholder:placeholder
                                 font:nil];
}

+ (id)textFieldWithPlaceholder:(NSString *)placeholder
                          font:(UIFont *)font {
    
    return [UIView textFieldWithStyle:UITextBorderStyleNone
                         keyboardType:UIKeyboardTypeDefault
                          placeholder:placeholder
                                 font:font];
}

+ (id)textFieldWithKeyboardType:(UIKeyboardType)keyboardType
                    placeholder:(NSString *)placeholder
                           font:(UIFont *)font {
    
    return [UIView textFieldWithStyle:UITextBorderStyleNone
                         keyboardType:keyboardType
                          placeholder:placeholder
                                 font:font];
}

+ (id)textFieldWithStyle:(UITextBorderStyle)style
            keyboardType:(UIKeyboardType)keyboardType
             placeholder:(NSString *)placeholder
                    font:(UIFont *)font {
    
    UITextField *textField = [[UITextField alloc] init];
    textField.borderStyle = style;
    textField.keyboardType = keyboardType;
    textField.placeholder = placeholder;
    if (font) {
        textField.font = font;
    }
    return textField;
}

#pragma mark ------- UITableView -------

+ (id)tableViewWithDataSource:(id)dataSource
                     delegete:(id)delegate {
    
    return [UIView tableViewWithDataSource:dataSource
                                  delegete:delegate
                                     style:UITableViewStylePlain];
}

+ (id)tableViewWithDataSource:(id)dataSource
                     delegete:(id)delegate
                        style:(UITableViewStyle)style {
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    tableView.dataSource = dataSource;
    tableView.delegate = delegate;
    return tableView;
}

#pragma mark ------- UICollectionView -------

+ (id)collectionViewWithCollectionViewLayout:(UICollectionViewLayout *)layout
                                  dataSource:(id)dataSource
                                    delegete:(id)delegate {
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    collectionView.dataSource  = dataSource;
    collectionView.delegate = delegate;
    return collectionView;
}

@end
