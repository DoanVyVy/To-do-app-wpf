   M S B A M L   `   `   `  ����G  CFinalProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:FinalProject.UserControlWpfFinalProject.UserControlWpf  5      +    %FinalProject.UserControlWpf.SideBarUC   5      c _MaterialDesignThemes.MahApps, Version=0.3.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:FinalProject.UserControlWpf     5      -   5        $��	ucSideBar��5	         	SideBarVM  � DataContext#  [  5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $��* �6   .+�5   
   � $��0��6   ���#363636.+�5      �� .+�5      #  MaterialDesignThemes.Wpf.Chip  $��James Willock��6&   
������ 
�������$��10 5 0 5q�6j      Icon 5      �� 5      $��/images/logo.png��6    5      �� 5      -   5         ��Name$ 	searchTxt��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��6-   
�������$��10 0 0 5q�6h   �� 5      
������ $��40��62   $��0q�6>   ��6R   �� *NavigateCommand+.��5      ��  �� Orientation$ 
Horizontal=�6!   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WeatherSunny=�62   $��0 2 10 5q�6F   �� 5       $��My day��6$   �� 5!      $��Right=�6%   .+�5"      �� $��10��6(   
�������$��	68 2 10 5q�6E   5#      5$      5%      �� 5&      
������ $��40��62   $��0q�6>   ��6R   �� *NavigateCommand+.��5'      �� $ 
Horizontal=�6!   .+�5(        $ 
StarBorder=�62   $��0 2 10 5q�6D   �� 5)      $��	Important��6$   �� 5*      $��Right=�6%   .+�5+      �� $��10��6(   
�������$��	50 2 10 5q�6E   5,      5-      5.      �� 5/      
������ $��40��62   $��0q�6>   ��6R   �� *NavigateCommand+.��50      �� $ 
Horizontal=�6!   .+�51        $ BookmarkBorder=�62   $��0 2 10 5q�6H   �� 52      $��Planned��6$   �� 53      $��Right=�6%   .+�54      �� $��10��6(   
�������$��	63 2 10 5q�6E   55      56      57      �� 58      
������ $��40��62   $��0q�6>   ��6R   �� *NavigateCommand+.��59      �� $ 
Horizontal=�6!   .+�5:        $ HomeOutline=�62   $��0 2 10 5q�6E   �� 5;      $��Tasks��6$   �� 5<      $��Right=�6%   .+�5=      �� $��10��6(   
�������$��	78 2 10 5q�6E   5>      5?      5@      �� 5A      $��1��6   
�������$��0 10 0 0q�63   5B      �� 5C      $ 
Horizontal=�6   $��Bottom=�62   .+�5D      �� $	��150��6   
������ $��0q�6>   $��0q�6R   .��5E      �� $ 
Horizontal=�6!   $
��Left=�6:   .+�5F        $	 Add=�62   $��0 2 10 5q�6=   �� 5G      $��New list��6$   5H      5I      �� 5J      $��50��6   
������ $��0q�6=    � ToolTip$ Logout��6Q   .��5K      �� .+�5L        $ Logout=�62   5M      5N      5O      5P      � 5S   
   $��1��6   5T      5U      5V      