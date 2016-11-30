//
//  LHYUIKit.h
//  OOLaGongYi
//
//  Created by YueHui on 16/11/29.
//  Copyright © 2016年 GZ Leihou Software Development CO.,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYHUIKit : NSObject

#pragma mark ------- UIView -------

/** View 背景色 */
+ (UIView *)viewWithBackgroudColor:(UIColor *)backgroudColor;


#pragma mark ------- UILabel -------

/** Label 字色 字号 */
+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                       fontSize:(CGFloat)size;

/** Label 文字 字号 */
+ (UILabel *)labelWithText:(NSString *)text
                  fontSize:(CGFloat)size;

/** Label 文字 字色 字号 */
+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor
                  fontSize:(CGFloat)size;

/** Label 字色 行数 文字 字号 */
+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                  numberOfLines:(NSInteger)numberOfLines
                           text:(NSString *)text
                       fontSize:(CGFloat)size;

/** Label 背景色 字色 对其 行数 文字 字号 */
+ (UILabel *)labelWithBackgroundColor:(UIColor *)backgroudColor
                            textColor:(UIColor *)textColor
                        textAlignment:(NSTextAlignment)textAlignment
                        numberOfLines:(NSInteger)numberOfLines
                                 text:(NSString *)text
                             fontSize:(CGFloat)size;


#pragma mark ------- UIButton -------

/** Button target 事件方法 */
+ (UIButton *)buttonWithTarget:(id)target
                        action:(SEL)action;

/** Button 类型 target 事件方法 */
+ (UIButton *)buttonWithType:(UIButtonType)buttonType
                      target:(id)target
                      action:(SEL)action;

#pragma mark ------- UIImageView -------

/** ImageView */
+ (UIImageView *)createImageView;

/** ImageView 图片 */
+ (UIImageView *)imageViewWithImage:(UIImage *)image;

/** ImageView 图片 填充模式 */
+ (UIImageView *)imageViewWithImage:(UIImage *)image
                        contentMode:(UIViewContentMode)contentMode;

#pragma mark ------- UITextField -------

/** TextField placeholder文字 */
+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder;

/** TextField 键盘类型 placeholder文字 */
+ (UITextField *)textFieldWithKeyboardType:(UIKeyboardType)keyboardType
                               placeholder:(NSString *)placeholder;

/** TextField 样式 键盘类型 placeholder文字 */
+ (UITextField *)textFieldWithStyle:(UITextBorderStyle)style
                       keyboardType:(UIKeyboardType)keyboardType
                        placeholder:(NSString *)placeholder;

#pragma mark ------- UITableView -------

/** TableView 资源 代理 */
+ (UITableView *)tableViewWithDataSource:(id)dataSource
                                delegete:(id)delegate;

/** TableView 资源 代理 样式 */
+ (UITableView *)tableViewWithDataSource:(id)dataSource
                                delegete:(id)delegate
                                   style:(UITableViewStyle)style;

@end
