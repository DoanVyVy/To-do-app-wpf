   M S B A M L   `   `   `  ����G  CFinalProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:FinalProject.ViewModelFinalProject.ViewModel  5   	   I)clr-namespace:FinalProject.UserControlWpfFinalProject.UserControlWpf  5
   	   5clr-namespace:FinalProject.ViewFinalProject.View  5   	   "    FinalProject.View.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:FinalProject.ViewModel     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   
   2uc)clr-namespace:FinalProject.UserControlWpf  5
   	   (mdclr-namespace:FinalProject.View  5   	   c _MaterialDesignThemes.MahApps, Version=0.3.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   -   5        $��
mainWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    
 MainVM � DataContext# [ 5   	    � Title$ 	To do app��5   	   $	��500��6   $	��800��6(   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6$   �� *LoadedWindowCommand+   CommandParameter 6L   ��  �� ElementName$ 
mainWindow��5      .��5"      �  � RowDefinitions 5#   
   �� 5$      $
��Auto �6   �� 5%      $��* �6   .+�5(   
   � $��0��6   $��2��6   .+�5)      .   (FinalProject.UserControlWpf.ControlBarUC  
 � Tag 6   �� *Title+$ 
mainWindow��6N   5*      � 5+   
   $��1��6    � ColumnDefinitions 5,      �� 5-      $	��200 �6#   �� 5.      $��* �6#   .+�50      � $��0��6    51      �� 52      $	��200 �6'   �� 53      $��* �6'   .+�55      � $��0��6   ���#B1B2FF.+�56      �� .+�58      #  MaterialDesignThemes.Wpf.Chip  
������ 
�������$��10 5 0 5q�6z   ��6.   �� *DisplayName+   Icon 59      �� 5:   "   $��/images/logo.png��6(   5<      �� 5>      -   5         ��Name$ myDayBtn��5>   !   
������ $��40��6L   $��0q�6X   $��0 20 0 0q�6l      FinalProject.View.MyDay"�� 6�   ��6~   �� *NavigateCommand+.��5?      ��  �� Orientation$ 
Horizontal=�6)   .+�5@   "   '	  !MaterialDesignThemes.Wpf.PackIcon	   	  Kind$ WeatherSunny=�6:   $��0 2 10 5q�6N   �� 5A   "   $��My day��6,   �� 5B   "   $��Right=�6-   .+�5C   &   �� 
�������$��	68 2 10 5q�6b   ��60   �� *AmountOfMyDay+6b   5D   #   5E      5F      �� 5G      
������ $��40��6:   $��0q�6F   !
   FinalProject.View.Important"��
 6~   ��6Z   �� *NavigateCommand+.��5H      �� $ 
Horizontal=�6)   .+�5I   "   	  $ 
StarBorder=�6:   $��0 2 10 5q�6L   �� 5J   "   $��	Important��6,   �� 5K   "   $��Right=�6-   .+�5L   &   �� 
�������$��	50 2 10 5q�6f   ��60   �� *AmountOfImportant+6f   5M   #   5N      5O      �� 5P      
������ $��40��6:   $��0q�6F      FinalProject.View.Planned"�� 6~   ��6Z   �� *NavigateCommand+.��5Q      �� $ 
Horizontal=�6)   .+�5R   "   	  $ BookmarkBorder=�6:   $��0 2 10 5q�6P   �� 5S   "   $��Planned��6,   �� 5T   "   $��Right=�6-   .+�5U   &   �� 
�������$��	63 2 10 5q�6d   ��60   �� *AmountOfPlanned+6d   5V   #   5W      5X      �� 5Y      
������ $��40��6:   $��0q�6F      FinalProject.View.Tasks"�� 6~   ��6Z   �� *NavigateCommand+.��5Z      �� $ 
Horizontal=�6)   .+�5[   "   	  $ HomeOutline=�6:   $��0 2 10 5q�6M   �� 5\   "   $��Tasks��6,   �� 5]   "   $��Right=�6-   .+�5^   &   �� 
�������$��	78 2 10 5q�6b   ��60   �� *AmountOfTasks+6b   5_   #   5`      5a      �� 5b      $��1��6$   
�������$��0 10 0 0q�6;   5c      �� 5d      $ 
Horizontal=�6!   $��Bottom=�6:   .+�5f      �� $��50��6!   
������ $��0q�6E    � ToolTip$ Logout��6Y   ��6j   �� *LogoutCommand+��6�   �� $ 
mainWindow��.��5g      �� .+�5h   "   	  $ Logout=�6:   5i      5j      5l      5m      5n      � 5q      $��1��6   .+�5r      �� -   5         ��Name$ mainContent��5s      ��5t      �� *CurrentPage+ � 	Resources 5u       �� DataType��%,  (��       5v   '   *, +)(�� 2     5y   '   *,
 +)(�� d     5|   '   *, +)(�� �     5   '   *, +)�� 5v      "  6'   .R�5w        5x      �� 5y      " 
 6'   .R�5z      
  5{      �� 5|      "  6'   .R�5}        5~      �� 5      "  6'   .R�5�        5�      5�      5�      5�      5�      5�      5�      