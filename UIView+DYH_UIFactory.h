//
//  UIView+DYH_UIFactory.h
//  Curato
//
//  Created by YueHui on 2017/9/14.
//  Copyright © 2017年 GZ Leihou Software Development CO.LTD. All rights reserved.
//

/* 
 *为什么返回类型使用id而不是使用相对应的类类型？因为此遍历方法使用的是系统的类初始化，如果一个继承系统类的子类来调用此遍历方法，这时候用系统类作为返回值，则需要做相对应的转化，例如: (UILabelSubClass *)[UILabelSubClass labelWithTextColor:(UIColor *)textColor font:(UIFont *)font];
*/

#import <UIKit/UIKit.h>

@interface UIView (DYH_UIFactory)

#pragma mark ------- UIView -------

/** View 背景色 */
+ (id)viewWithBackgroudColor:(UIColor *)backgroudColor;


#pragma mark ------- UILabel -------

/** Label 字色 字号 */
+ (id)labelWithTextColor:(UIColor *)textColor
                    font:(UIFont *)font;

/** Label 文字 字号 */
+ (id)labelWithText:(NSString *)text
               font:(UIFont *)font;

/** Label 文字 字色 字号 */
+ (id)labelWithText:(NSString *)text
          textColor:(UIColor *)textColor
               font:(UIFont *)font;

/** Label 字色 字号 行数 */
+ (id)labelWithTextColor:(UIColor *)textColor
                    font:(UIFont *)font
           numberOfLines:(NSInteger)numberOfLines;

/** Label 字色 字号 对其 */
+ (id)labelWithTextColor:(UIColor *)textColor
                    font:(UIFont *)font
           textAlignment:(NSTextAlignment)textAlignment;

/** Label 字色 行数 文字 字号 */
+ (id)labelWithTextColor:(UIColor *)textColor
           numberOfLines:(NSInteger)numberOfLines
                    text:(NSString *)text
                    font:(UIFont *)font;

/** Label 背景色 字色 对其 行数 文字 字号 */
+ (id)labelWithBackgroundColor:(UIColor *)backgroudColor
                     textColor:(UIColor *)textColor
                 textAlignment:(NSTextAlignment)textAlignment
                 numberOfLines:(NSInteger)numberOfLines
                          text:(NSString *)text
                          font:(UIFont *)font;


#pragma mark ------- UIButton -------

/** Button target 事件方法 */
+ (id)buttonWithTarget:(id)target
                action:(SEL)action;

/** Button 类型 target 事件方法 */
+ (id)buttonWithType:(UIButtonType)buttonType
              target:(id)target
              action:(SEL)action;

/** Button target 事件方法 字号 */
+ (id)buttonWithTarget:(id)target
                action:(SEL)action
                  font:(UIFont *)font;

/** Button target 事件方法 字号 背景色 */
+ (id)buttonWithTarget:(id)target
                action:(SEL)action
       backgroundColor:(UIColor *)backgroudColor
                  font:(UIFont *)font;

/** Button 类型 target 事件方法 字号 背景色 */
+ (id)buttonWithType:(UIButtonType)buttonType
              target:(id)target
              action:(SEL)action
     backgroundColor:(UIColor *)backgroudColor
                font:(UIFont *)font;


#pragma mark ------- UIImageView -------

/** ImageView */
+ (id)createImageView;

/** ImageView 图片 */
+ (id)imageViewWithImage:(UIImage *)image;

/** ImageView 图片名字 */
+ (id)imageViewWithImageName:(NSString *)imageName;

/** ImageView 图片 填充模式 */
+ (id)imageViewWithImage:(UIImage *)image
             contentMode:(UIViewContentMode)contentMode;

#pragma mark ------- UITextField -------

/** TextField placeholder文字 */
+ (id)textFieldWithPlaceholder:(NSString *)placeholder;

/** TextField placeholder文字 字号 */
+ (id)textFieldWithPlaceholder:(NSString *)placeholder
                          font:(UIFont *)font;

/** TextField 键盘类型 placeholder文字 字号 */
+ (id)textFieldWithKeyboardType:(UIKeyboardType)keyboardType
                    placeholder:(NSString *)placeholder
                           font:(UIFont *)font;

/** TextField 样式 键盘类型 placeholder文字 字号 */
+ (id)textFieldWithStyle:(UITextBorderStyle)style
            keyboardType:(UIKeyboardType)keyboardType
             placeholder:(NSString *)placeholder
                    font:(UIFont *)font;

#pragma mark ------- UITableView -------

/** TableView 资源 代理 */
+ (id)tableViewWithDataSource:(id)dataSource
                     delegete:(id)delegate;

/** TableView 资源 代理 样式 */
+ (id)tableViewWithDataSource:(id)dataSource
                     delegete:(id)delegate
                        style:(UITableViewStyle)style;

#pragma mark ------- UICollectionView -------

/** CollectionView 布局 资源 代理 */
+ (id)collectionViewWithCollectionViewLayout:(UICollectionViewLayout *)layout
                                  dataSource:(id)dataSource
                                    delegete:(id)delegate;

@end
