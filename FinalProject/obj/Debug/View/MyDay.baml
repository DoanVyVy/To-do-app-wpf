   M S B A M L   `   `   `  ����G  CFinalProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:FinalProject.ViewFinalProject.View  5          FinalProject.View.MyDay   5      c _MaterialDesignThemes.MahApps, Version=0.3.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:FinalProject.View     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      -   5        $��myDay��5
         MyDayVM  � DataContext#  [  5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadDataCommand+   CommandParameter 6H   ��  �� ElementName$ myDay��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   � $��0��6   ���#F5F5F5 � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $
��Auto �6#   .+�5!      �� -   5        	 ��Name$	 today��5!      $��0��6'   $
��Left=�64   $��Center=�6O   $��16(�6j   $
��Bold"�6x   $��15 0 0 0q�6�   �� 5"      $�Today: ��6    �� 5#      �6   �� *CurrentDate+
 �� StringFormat$
 {0:dd/MM/yyyy}��5$      �� 5&      -   5         ��Name$ SearchTextBox��5&      $��1��6-   $
��Left=�6=   $��Center=�6X   $	��200��6s   $��0 0 50 0q�6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��6�   ��6�   �� *SearchKeyword+�� 5)      -   5         ��Name$ 	searchBtn��5*      $��1��5+      $��Right=�6%   $��Center=�6A   $��5 5 15 5q�6\   $��Search��5,      ��5-      �� *SearchCommand+��5.      �� *Text+$ SearchTextBox��5/      &   System.Windows.Controls.DataGrid  51   
   -   5          Name$ myData��51      $��1��6A      AutoGenerateColumns .     CanUserAddRows .  ��6#   �� *Tasks+ �� SelectedItem 6�   �� *SelectedTask+   Columns 52      4  .System.Windows.Controls.DataGridCheckBoxColumn  53      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Completed��6)   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6<   �� *is_completed+0
  *System.Windows.Controls.DataGridTextColumn
  54      $ Title��6%    64   �� *title+ 	  ElementStyle 55      �� 56       �� 
TargetType" ��6     �� Triggers 57      �� 58   "    �� Binding 6.   �� *is_completed+ �� Value True6O   .a�59   &   ��  �� Property � �� �� Value$ Strikethrough{�6H   5:   #   5<      5>      
  5?      $ Description��6%    6:   �� *description+4  .System.Windows.Controls.DataGridTemplateColumn  5@      $ Due Date��6)      CellTemplate 5A      �� 5B      .R�5C      �� ��6(   �� *
due_date+$
 {0:dd/MM/yyyy}��5D         CellEditingTemplate 5F      �� 5G      .R�5H      (  "System.Windows.Controls.DatePicker     SelectedDate 6)   �� *
due_date+5I      5K        5L      $ 	Important��6)    6<   �� *	important+5N      � 5Q   
   $��2��6    5R      �� 5S      $��* �6#   .+�5V      �� $��1��6    �� Orientation$ 
Horizontal=�6)   $��Center=�6B   $��Center=�6_   .+�5W      �� -   5        $ addBtn��5X       " MaterialDesignFlatAccentButton#��[ 5Y      $��75��5Z      $��	10,0,10,0q�5[        � ToolTip$  Add a new task��5\      +  %MaterialDesignThemes.Wpf.RippleAssist!   
IsDisabled! . ���#C0DBEA
���   �$	��Add��5`      ��5a      �� *
AddCommand+�� 5c      -   5        $ saveBtn��5d      #��[ 5e      $��75��5f      $��0,0,10,0q�5g      $  Edit the selected task��5h      ! . ���#C0DBEA
���   �$
��Save��5l      ��5m      �� *SaveCommand+�� 5o      -   5        $ 	deleteBtn��5p      #��[ 5q      $��75��5r      $  Delete the selected task��5s      ! . ���#C0DBEA
���   �$��Delete��5w      ��5x      �� *DeleteCommand+5y      5z      5}      5~      