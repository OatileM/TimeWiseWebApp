   M S B A M L   `   `   `  ����L  HTimeManagementApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TimeManagementAppTimeManagementApp  5   	   $    TimeManagementApp.StudyModules   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TimeManagementApp     5   	     � Title$  Study Modules��5   	   $	��450��6   $	��800��6,   .��5	      � $��
10,0,-10,0q�6   ��5
   
   �� 5       �� ImageSource$ /background.jpg��6    j� TileMode$
 None=�67    � ColumnDefinitions 5   
   �� 5      $	��301 �6   �� 5      $	��249 �6   �� 5      $	��142 �6    � RowDefinitions 5   
   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   .+�5   
   �� -   5        $��lblModuleSelfStudy��5      $��Module Self Study Hours��6*   $
��Bold"�6L   $��25(�6^   $��0��6m   $��0��6}   $	��Top=�6�   $��	5,40,10,0q�6�   $��45��6�   $��Bahnschrift)�6�   ���	#FF7CE2FB J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      �� 5    
   -   5         ��Name$ lbStudyModules��5       $��0��6*   $��1��6:   $��3��6G   $��	10,0,10,0q�6X   ��5!      �� 5"      .R�5#      �� .+�5$      �� $
��Bold"�6:   $��16(�6L   ��6$   �� *Name+6L   �� 5%      ��6$   �� *SelfStudyHours+5&      5'      5)      �� 5+   
   -   5        $��lblHoursSpent��5+      $��Record Hours Spent��6%   $
��Bold"�6B   $��25(�6T   $��1��6c   $��0��6s   $	��Top=�6�   $��	5,40,10,0q�6�   $��45��6�   $��Bahnschrift)�6�   ���	#FF7CE2FB 5,        5-      5/      �� 51   
   $��1��6   $��1��6%   $��3��62   $��10,10,10,10q�6C   .+�52      �� -   5         ��Name$ 	cbModules��52       �� DisplayMemberPath$
 Name��6*   	 �� SelectedValuePath$
	 Name��6C   $��	0,10,0,10q�6]   �� 53      -   5        
 ��Name$
 txtHours��53      $��0,0,0,10q�6)   (  "System.Windows.Controls.DatePicker  54      -   5          Name$ dpDate��54      $��0,0,0,10q�6)   �� 55      -   5        $��Record Hours��55      6,   56      �� 58   
   -   5        $��lblHoursRemaining��58      $��Hours Remaining��6)   $
��Bold"�6C   $��25(�6U   $��2��6d   $��0��6t   $	��Top=�6�   $��
5,40,-81,0q�6�   $��45��6�   $��Bahnschrift)�6�   ���	#FF7CE2FB 59        5:      5<      �� 5>   
   -	   5        $ lbHoursRemaining��5>      $��2��6,   $��1��6<   $��3��6I   $��
10,0,-81,0q�6�   ��5?      �� 5@      .R�5A      �� .+�5B      �� $
��Bold"�6:   $��16(�6L   ��6$   �� *Name+6L   �� 5C      ��6$   �� *RemainingHours+5D      5E      5G      5H      5I      