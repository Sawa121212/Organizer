   M S B A M L   `   `   `  ����D  @Organizer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Organizer.LoginOrganizer.Login  5   	       Organizer.Login.Login   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   S OPrism.Wpf, Version=8.0.0.1909, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59#mvvmhttp://prismlibrary.com/  5   	   )loginclr-namespace:Organizer.Login  5   	   -   5        $��
AuthWindow��5
   "     � 
ResizeMode$  NoResize=�5	   	    � WindowStartupLocation$ CenterScreen=�6    
������  � ShowInTaskbar . $	��300��5      $	��400��6+    � Triggers 5      :� 5   
    :� RoutedEvent$ Loaded��6   .[�5      �� .��5      �� .��5      W�  �� 
TargetName$ 
AuthWindow��6&    �� TargetProperty$ Opacity�6I    W� From$ 0X�6n   	 W� To$ 1X�6w   5      5      5      .��5      � .+�5   
   �� ���#1ba1e2$��2q�6'   ._�5      �� ��5      �� 5      	 � SpreadMethod$	 Reflect=�6*   
 �� EndPoint$	
 0,1&�6A   .��5      �  � Color$ #E8F5FC��6'    � Offset$ 0Q�67   6D   � 5      $ #FFFFFF��6'   $ 1Q�67   6D   5      5!      5"      � 5#   
    � ColumnDefinitions 5$      �� 5%      $��50 �6#   �� 5&      $��* �6#   �� 5'      $��50 �6#    � RowDefinitions 5)      �� 5*      $
��Auto �6    �� 5+      $
��Auto �6    �� 5,      $
��Auto �6    �� 5-      $
��Auto �6    �� 5.      $
��Auto �6    �� 5/      $
��Auto �6    �� 50      $
��Auto �6    �� 51      $
��Auto �6    �� 52      $
��Auto �6    �� 53      $
��Auto �6    �� 54      $
��Auto �6    �� 55      $
��Auto �6    �� 56      $
��Auto �6    �� 57      $
��Auto �6    .+�5=      �� $��0��6   $��1��6!   $��Вход��5>      $��10q�6#   
���   �$��18(�5?   '   ��.  $��Center=�5@      $��Center=�61   �� 5B      $��1��6   $��0��6!   $��3��61   $��	10,0,10,0q�5C      $��-2q�6'   $��Логин:��64   ��.  $
��Left=�5D      $��Bottom=�6/   $
��Left=�5E      �� 5F      $��2��6   $��0��6#   $��3��63   $��10, 0, 10, 5q�5H      $��3q�6,   $��0��68   $��1q�5I      ���#a5a5a5$��Stretch=�5J      $��Stretch=�6;   $	��Top=�5K      ��5G      �� *
LastName+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ 	LostFocus=�5K      �� 5M      $��3��6   $��0��6!   $��3��61   $��
10,0,10, 0q�5N      $��-2q�6(   $��Пароль:��65   ��.  $
��Left=�5O      $��Bottom=�6/   �� 5P      $��4��6   $��0��6#   $��3��63   $��10, 0, 10, 5q�5R      $��3q�6,   $��0��68   $��1q�5S      ���#a5a5a5$��Stretch=�5T      $��Stretch=�6;   $	��Top=�5U      ��5Q      �� *
LastName+$ TwoWay=�$ 	LostFocus=�5U      �� 5W      $��13��6   $��0��6'   $��3��67    �� Orientation$ 
Horizontal=�6K   $��Center=�6d   .+�5X      �� $��
Войти��6   $	��200��5Y      $��40��6%   $��10q�61   ��5Z      �� *RegisterCommand+$ OneWay=�$ PropertyChanged=�5[      5\      5^      5_      5`      