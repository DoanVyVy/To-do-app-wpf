   M S B A M L   `   `   `  ����G  CFinalProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:FinalProject.UserControlWpfFinalProject.UserControlWpf  5      .    (FinalProject.UserControlWpf.ControlBarUC   5      c _MaterialDesignThemes.MahApps, Version=0.3.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:FinalProject.UserControlWpf     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      -   5        $��ucControlBar��5
         ControlBarVM  � DataContext#  [  5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ MouseLeftButtonDown��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *MouseMoveWindowCommand+   CommandParameter 6O   ��  �� ElementName$ ucControlBar��5      .��5      � .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  ���#B1B2FF.��5      ]� .+�5      �� $��Right=�6   
������  �� Orientation$ 
Horizontal=�6N    � 	Resources 5      	 �� 
TargetType
 �� Property �� Value��%�   '��       �� 5      "	 ��6    .�5      �� 
 � ��$ 2 4 2 4q�67   6I   �� 5      
 � ��$ 40��66   6C   �� 5      
 � ��
 ���� 6R   5      5      .+�5      �� -   5         ��Name$ minimizeBtn��5       � ToolTip$ Minimize��5!       c� OverflowMode$ AsNeeded=�6,   
������ ��5      �� *MinimizeWindowCommand+��5       �� $ ucControlBar��.��5"      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�62   5#      �� 5$      -   5        $ maximizeBtn��5%      $ Maximize��5(      $ AsNeeded=�6,   
������ ��5&      �� *MaximizeWindowCommand+��5'      �� $ ucControlBar��.��5)        $ WindowMaximize=�62   5*      �� 5+      -   5        $ closeBtn��5,      $ Close��5/      $ AsNeeded=�6-   
������ ��5-      �� *CloseWindowCommand+��5.      �� $ ucControlBar��.��50        $ WindowClose=�62   ��51      �� 52       �� 
TargetType" ��6.   .R�53   "   �  �Name$ 
buttonGrid��6'   
������ .+�54   &   �� $��Center=�67   $��Center=�6T   55   #    �� Triggers 57   "   P� 58   &    P� Property �@J�IsMouseOver P� Value . . �59   *   ��  �� 
TargetName$ 
buttonGrid��61   
 � �� �#FF00006_   5:   '   5<      5>      5?      �� 5A      $
��Left=�6   $ 
Horizontal=�63   .+�5B      �� $��Center=�6    $��16 0 0 0q�6;   
���������6M   �� *Tag+$ ucControlBar��6�   5C      5D      5E      5F      5G      