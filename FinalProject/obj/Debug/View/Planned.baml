   M S B A M L   `   `   `  ����G  CFinalProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:FinalProject.ViewFinalProject.View  5          FinalProject.View.Planned   5      c _MaterialDesignThemes.MahApps, Version=0.3.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:FinalProject.View     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   
   -   5        $��planned��5
         	PlannedVM  � DataContext#  [  5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadDataCommand+   CommandParameter 6H   ��  �� ElementName$ myDay��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   � $��0��6   ���#F5F5F5 � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $
��Auto �6#   .+�5      �� $��0��6   $
��Left=�6%   $��Center=�6@   $��16(�6[   $
��Bold"�6i   $��15 0 0 0q�6{   �� 5       $�Today: ��6    �� 5!      �6   �� *CurrentDate+	 �� StringFormat$	 {0:dd/MM/yyyy}��5"      �� 5$      -   5        
 ��Name$
 SearchTextBox��5$      $��1��6-   $
��Left=�6=   $��Center=�6X   $	��200��6s   $��0 0 50 0q�6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��6�   ��6�   �� *SearchKeyword+�� 5'      $��1��6   $��Right=�6%   $��Center=�6A   $��5 5 15 5q�6\   $��Search��5(      ��5)      �� *SearchCommand+��5*      �� *Text+$ SearchTextBox��5+      &   System.Windows.Controls.DataGrid  5-   
   -   5          Name$ myData��5-      $��1��6A      AutoGenerateColumns .     CanUserAddRows .  ��6#   �� *Tasks+ �� SelectedItem 6�   �� *SelectedTask+   Columns 5.      4  .System.Windows.Controls.DataGridCheckBoxColumn  5/      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Completed��6)   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6<   �� *is_completed+0
  *System.Windows.Controls.DataGridTextColumn
  50      $ Title��6%    64   �� *title+ 	  ElementStyle 51      �� 52       �� 
TargetType" ��6     �� Triggers 53      �� 54   "    �� Binding 6.   �� *is_completed+ �� Value True6O   .a�55   &   ��  �� Property � �� �� Value$ Strikethrough{�6H   56   #   58      5:      
  5;      $ Description��6%    6:   �� *description+4  .System.Windows.Controls.DataGridTemplateColumn  5<      $ Due Date��6)      CellTemplate 5=      �� 5>      .R�5?      �� ��6(   �� *
due_date+$	 {0:dd/MM/yyyy}��5@         CellEditingTemplate 5B      �� 5C      .R�5D      (  "System.Windows.Controls.DatePicker     SelectedDate 6)   �� *
due_date+5E      5G        5H      $ 	Important��6)    6<   �� *	important+5J      � 5M   
   $��2��6    5N      �� 5O      $��* �6#   .+�5R      �� $��1��6    �� Orientation$ 
Horizontal=�6)   $��Center=�6B   $��Center=�6_   .+�5S      �� -   5         ��Name$ addBtn��5T       " MaterialDesignFlatAccentButton#��[ 5U      $��75��5V      $��	10,0,10,0q�5W       � ToolTip$ Add a new task��5X      +  %MaterialDesignThemes.Wpf.RippleAssist    
IsDisabled  . ���#C0DBEA
���   �$	��Add��5\      ��5]      �� *
AddCommand+�� 5_      -   5        $ saveBtn��5`      #��[ 5a      $��75��5b      $��0,0,10,0q�5c      $ Edit the selected task��5d        . ���#C0DBEA
���   �$
��Save��5h      ��5i      �� *SaveCommand+�� 5k      -   5        $ 	deleteBtn��5l      #��[ 5m      $��75��5n      $ Delete the selected task��5o        . ���#C0DBEA
���   �$��Delete��5s      ��5t      �� *DeleteCommand+5u      5v      5y      5z      