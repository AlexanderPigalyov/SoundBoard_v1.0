   M S B A M L   `   `   `  ����@  <Shell, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ShellShell  5          Shell.Views.ShellView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ^ ZCaliburn.Micro.Platform, Version=3.2.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      shellclr-namespace:Shell  5      $	��800��5	      $	��600��5
        � Icon$5  /pack://application:,,,/Resources/music-icon.ico��5       � 
ResizeMode$ NoResize=�5       � WindowStyle$
 None=�5      .��5      � -   5         �Name$ 
LayoutRoot��5      ���#546e7a � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��9* �6   .+�5   
   �� .+�5      � $��0��5      $��20��5      $	��Top=�5      ���#202225.  (System.Windows.Interactivity.Interaction   	Behaviors 5         Shell.DragBehavior  5      .+�5       � $��0��5!      $
��Left=�5"      $��Center=�5#      .+�5$      �� $��Arial Black)�5&      
���������5%      �� *Title+5'      5(      � 5)      $��0��5*      $��Right=�5+      $��Center=�5,      .+�5-      �� $��20��5.        Caliburn.Micro.Message   Attach$+ %[Event Click] = [Action CloseProgram]��5/      ���#202225���#202225$��0q�52       $   MaterialDesignFlatAccentBgButton#��[  53      .��54      '  !MaterialDesignThemes.Wpf.PackIcon  $��Center=�55      $��Center=�56      $��Center=�57         Kind$ Close=�58      59      5;      5<      � 5=      $��40��6   ���#2f3136 � ColumnDefinitions 5>      �� 5?      $
��278* �6'   �� 5@      $	��49* �6'   �� 5A      $
��474* �6'   .+�5C      � $
��Left=�6   .+�5D      �� $��50��5E      $��40��5F      $2 ,[Event Click] = [Action DeleteSelectedSound]��5G      ���#2f3136$��0q�5I       " MaterialDesignFlatDarkBgButton#��[ 5J      .��5K        $ Delete=�62   5L      � 5M      $��75,0,0,0q�6    .+�5N      �� $��50��5O      $��40��5P      $( "[Event Click] = [Action StopSound]��5Q      ���#2f3136$��0q�5S      
���  ��#��[ 5U      .��5V        $
 Stop=�66   5W      �� 5X      $��50��5Y      $��40��5Z      $( "[Event Click] = [Action PlaySound]��5[      ���#2f3136$��0q�5]      
���  ��#��[ 5_      .��5`        $
 Play=�66   5a      5b      5d      �� 5e      $��2��5f      $��0,9,10,8q�5g      $��Right=�5h      $��Center=�5i      $��Arial Black)�5j      $��20(�5k      
���  ����5m      �� *SetHookAlert+� 5n      $��2��5o      $��
0,11,15,11q�5p      $��Right=�5q      $��Center=�5r      .+�5s      �� $��0,0,10,0q�5t      $��Arial Black)�5u      $��16(�5v      
�������$��Volume��5x      y�5y      �� *VolumeSliderIsVisible+�� 5z      $	��200��5{      $D >[Event ValueChanged] = [Action SliderValueChanged($eventArgs)]��5|      	 � Maximum$	 1Q�5}      
 � Minimum$
 0Q�5~      y�5      �� *VolumeSliderIsVisible+ � Value 5�      �� *Volume+5�      5�      5�      &   System.Windows.Controls.DataGrid  5�   
   $��1��5�      $� �[Event Drop] = [Action FileDropped($eventArgs)];               [Event PreviewDragOver] = [Action FilePreviewDragEnter($eventArgs)]��5�       J� 	AllowDrop .    AutoGenerateColumns .  ���#36393f   GridLinesVisibility$
 None=�5�         
IsReadOnly .    SelectionMode$ Single=�5�         SelectionUnit$ FullRow=�5�      ��5�      �� *Music+ �� Mode$ TwoWay=� �� SelectedItem 5�      �� *SelectedSound+$ TwoWay=�   	CellStyle 5�      �� 5�       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6    �� Triggers 5�      P� 5�       P� Property �@ 
IsSelected P� Value . . �5�      ��  �� Property � �� �� Value �#36393f6;   �� 5�       � ��
 �   �6;   �� 5�       � ��$ 0q�6@   �� 5�       �@�FocusVisualStyle 6A   Z� 5�      5�         Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Width5	  /System.Windows.Controls.DataGridLengthConverter$ *	 5�         Header$ Music��5�         
IsReadOnly . 1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 5�      �� *	SoundName+$ TwoWay=�5�        5�      $ *	 5�      $ HotKey��5�       .   5�      �� *HotKey+$ TwoWay=�5�      5�      5�      5�      