   M S B A M L   `   `   `  ����G  CFinalProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:FinalProject.ViewModelFinalProject.ViewModel  5      !    FinalProject.View.Important   5      c _MaterialDesignThemes.MahApps, Version=0.3.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:FinalProject.ViewModel     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   
   -   5        $��	important��5         ImportantVM  � DataContext#  [  5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadDataCommand+   CommandParameter 6H   ��  �� ElementName$ 	important��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   � $��0��6   ���#F5F5F5 � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $
��Auto �6#   .+�5       �� $��0��6   $
��Left=�6%   $��Center=�6@   $��16(�6[   $
��Bold"�6i   $��15 0 0 0q�6{   �� 5!      $�Today: ��6    �� 5"      �6   �� *CurrentDate+	 �� StringFormat$	 {0:dd/MM/yyyy}��5#      �� 5%      -   5        
 ��Name$
 SearchTextBox��5%      $��1��6-   $
��Left=�6=   $��Center=�6X   $	��200��6s   $��0 0 50 0q�6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��6�   ��6�   �� *SearchKeyword+�� 5(      $��1��6   $��Right=�6%   $��Center=�6A   $��5 5 15 5q�6\   $��Search��5)      ��5*      �� *SearchCommand+��5+      �� *Text+$ SearchTextBox��5,      &   System.Windows.Controls.DataGrid  5.   
   -   5          Name$ myData��5.      $��1��6A      AutoGenerateColumns .     CanUserAddRows .  ��6#   �� *Tasks+ �� SelectedItem 6�   �� *SelectedTask+   Columns 5/      4  .System.Windows.Controls.DataGridCheckBoxColumn  50      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Completed��6)   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6<   �� *is_completed+0
  *System.Windows.Controls.DataGridTextColumn
  51      $ Title��6%    64   �� *title+ 	  ElementStyle 52      �� 53       �� 
TargetType" ��6     �� Triggers 54      �� 55   "    �� Binding 6.   �� *is_completed+ �� Value True6O   .a�56   &   ��  �� Property � �� �� Value$ Strikethrough{�6H   57   #   59      5;      
  5<      $ Description��6%    6:   �� *description+4  .System.Windows.Controls.DataGridTemplateColumn  5=      $ Due Date��6)      CellTemplate 5>      �� 5?      .R�5@      �� ��6(   �� *
due_date+$	 {0:dd/MM/yyyy}��5A         CellEditingTemplate 5C      �� 5D      .R�5E      (  "System.Windows.Controls.DatePicker     SelectedDate 6)   �� *
due_date+5F      5H        5I      $ 	Important��6)    6<   �� *	important+5K      � 5N   
   $��2��6    5O      �� 5P      $��* �6#   .+�5S      �� $��1��6    �� Orientation$ 
Horizontal=�6)   $��Center=�6B   $��Center=�6_   .+�5T      �� -   5         ��Name$ addBtn��5U       " MaterialDesignFlatAccentButton#��[ 5V      $��75��5W      $��	10,0,10,0q�5X       � ToolTip$ Add a new task��5Y      +  %MaterialDesignThemes.Wpf.RippleAssist    
IsDisabled  . ���#C0DBEA
���   �$	��Add��5]      ��5^      �� *
AddCommand+�� 5`      -   5        $ saveBtn��5a      #��[ 5b      $��75��5c      $��0,0,10,0q�5d      $ Edit the selected task��5e        . ���#C0DBEA
���   �$
��Save��5i      ��5j      �� *SaveCommand+�� 5l      -   5        $ 	deleteBtn��5m      #��[ 5n      $��75��5o      $ Delete the selected task��5p        . ���#C0DBEA
���   �$��Delete��5t      ��5u      �� *DeleteCommand+5v      5w      5z      5{      