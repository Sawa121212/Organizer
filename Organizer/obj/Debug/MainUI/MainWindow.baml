   M S B A M L   `   `   `  ����D  @Organizer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Organizer	Organizer  5   	   !    Organizer.MainUI.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Organizer     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��600��5      $
��1080��6'   
�������  � WindowStartupLocation$  Manual=�6G   $
��1000��6f   $	��490��6v    � 	Resources 5	         OpenMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	CloseMenu��%�  &	        &	 �     �� 5
   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 60Q�63     5      $ 0:0:0.2��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.2��6'   $ 60Q�69   5      5      5       � Triggers 5      :� 5   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5   
   $ ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5      �� #��[ 6   5      .��5!      � ���	#FFDEDEDE.+�5"   
   � -   5        	 �Name$	 GridMain��5"      $��	60,35,0,0q�6!   5#      � 5$   
   $��33��6   $	��Top=�6   ���	#FF5C99D6
 J� Effect
 5%      3  -System.Windows.Media.Effects.DropShadowEffect  5&         
BlurRadius$ 1Q�6#      ShadowDepth$ 1Q�62      Color$ 	#FFACACAC��6B   .+�5(      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   .+�5)      �� $��
Abel Dutra��6   $��Center=�6.   $��16(�6I   $��0,10,0,5q�6W   $��30��6i   '  !MaterialDesignThemes.Wpf.PopupBox  5*         PlacementMode$ BottomAndAlignRightEdges=�6*      	StaysOpen .  $��	10,3,10,7q�6e      PopupContent. 5+      �� $	��160��6!   .+�5,      �� $��Настройки��6!   �� 5-      $��Аккаунт��6!   �� 5.      $��Помощь��6!   �� 5/      �� 50      $��
Выйти��6!   �� 51      �� 52      -   5         ��Name$ 	EscButton��52   <   $%��Завершить работу��6!    �� IsCancel . 6_   53      54      55      �� 56      $��Center=�6   $��Center=�65   $��22(�6P   	Organizer6i   57      � 58   
   -   5        $	 GridMenu��58      $��65��6!   $
��Left=�6,   ���	#FF31577E
 59        5:      $ 2Q�6#   $ 1Q�62   $ 	#FFAEAEAE��6B   .+�5<      �� .+�5=      � $��33��6   
������� J� RenderTransformOrigin$ 0.5,0.5&�66   z�5>      V� 5?      .~�5@      �� �� 5A      �� 5B      T� 5C      5D      .+�5F      �� -   5        $ ButtonOpenMenu��5F      $��24��65   $��24��6A   $��20,3,3,0q�6L   $
��Left=�6^   $	��Top=�6y    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   ���	#FF31577E��6�   Z� ��6�   Z� .��5G      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Menu=�62   $��25��6>   $��25��6I   5H      �� 5I      -   5        $ ButtonCloseMenu��5I      $y�Hidden=�66   $��24��6J   $��24��6V   $��20,3,3,0q�6a   $
��Left=�6s   $	��Top=�6�   #��[ 6�   ���	#FF31577E��6�   Z� ��6  Z� .��5J        $ 	ArrowLeft=�62   $��25��6C   $��25��6N   5K      5L      �� 5M      -   5         ��Name$ ListViewMenu��5M      ���	#FF5C99D6$��Disabled=�6H   .@�5N      �� -   5         ��Name$ ItemHome��5N   #   $��60��65   .��5O      �� $ 
Horizontal=�6%   .+�5P        $ ViewDashboard=�66   $��25��6K   $��25��6W   $��10q�6b   �� 5Q      $��Сравнить Excel��6(   $��Center=�6>   $��20 10q�6Y   5R      5S      �� 5T      -   5        $ 
ItemCreate��5T   #   $��60��67   .��5U      �� $ 
Horizontal=�6%   .+�5V        $ Pencil=�66   $��25��6D   $��25��6P   $��10q�6[   �� 5W      $��Create��6(   $��Center=�66   $��20 10q�6Q   5X      5Y      �� 5Z      $��60��6#   .��5[      �� $ 
Horizontal=�6%   .+�5\        $ Ticket=�66   $��25��6D   $��25��6P   $��10q�6[   �� 5]      $��Tickets��6(   $��Center=�67   $��20 10q�6S   5^      5_      �� 5`      $��60��6#   .��5a      �� $ 
Horizontal=�6%   .+�5b        $ Message=�66   $��25��6E   $��25��6Q   $��10q�6\   �� 5c      $��Messages��6(   $��Center=�68   $��20 10q�6T   5d      5e      5f      5g      5h      5i      5j      