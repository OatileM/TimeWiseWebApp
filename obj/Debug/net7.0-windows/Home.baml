   M S B A M L   `   `   `  ����L  HTimeManagementApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TimeManagementAppTimeManagementApp  5   	       TimeManagementApp.Home   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TimeManagementApp     5   	     � Title$
  Home��5   	   $	��450��6   $	��800��6#   .��5	      � ��5
   
   �� 5       �� ImageSource$ /background.jpg��6    j� TileMode$
 None=�67    � ColumnDefinitions 5   
   �� 5      $	��178 �6   �� 5      $	��207 �6   �� 5      $	��161 �6   �� 5      $	��115 �6   �� 5      $	��127 �6   �� 5      $��12 �6    � RowDefinitions 5   
   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   .+�5   
   �� -   5        $
��Logo��5   A   $��1��6   $��3��6    $��0��64    J� RenderTransformOrigin$ 0.5,0.5&�6M    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5       z�5"      V� 5#      .~�5$      �� �� 5%      �� 5&       �� Angle$ -0.301Q�6&   T� 5'      5(      ��5*      �� 5+       �� 	UriSource$Q KD:\Visual Studio\School Projects\PROG6221\TimeManagementApp\Images\logo.png?�6   5-      �� 5/   
   -   5        $��lblStudentName��5/      $��Student Name��6&   $
��Bold"�6=   $��25(�6O   $��0��6^   $��1��6n   $	��Top=�6{   $��10,0,0,0q�6�   $��45��6�   $��Bahnschrift)�6�   ���	#FF7CE2FB 50        51      53      �� 54   
   -   5        	 ��Name$	 lbStudentName��54      $��0��6)   $��1��6:   
�������$��	10,45,0,0q�6�   $	��248��6�   $	��Top=�6�   $��4��6�   ���	#FF3ED2CC6�   �� 56   
   -   5        $��lblStudentNumber��56      $��Student Number��6(   $
��Bold"�6A   $��25(�6S   $��1��6b   $��1��6r   $	��Top=�6   $��10,0,0,0q�6�   $��45��6�   $��Bahnschrift)�6�   ���	#FF7CE2FB 57        58      5:      �� 5;   
   -   5        $	 lbStudentNumber��5;      $��1��6+   $��1��6<   
�������$��	10,45,0,0q�6�   $	��248��6�   $	��Top=�6�   $��4��6�   ���	#FF3ED2CC6�   �� 5>   
   -   5        $��lblYearofStudy��5>      $��Year of Study��6&   $
��Bold"�6>   $��25(�6P   $��2��6_   $��1��6o   $	��Top=�6|   $��7,0,0,0q�6�   $��45��6�   $��Bahnschrift)�6�   ���	#FF7CE2FB 5?        5@      5B      �� 5C   
   -   5        $	 lbYearOfStudy��5C      $��2��6)   $��1��6:   
�������$��7,45,0,0q�6�   $	��248��6�   $	��Top=�6�   $��4��6�   ���	#FF3ED2CC6�   �� 5E   
   -   5        $��
lblModules��5E      $��Modules��6"   $
��Bold"�64   $��25(�6F   $��3��6U   $��1��6e   $	��Top=�6r   $��10,0,0,0q�6�   $��45��6�   $��Bahnschrift)�6�   ���	#FF7CE2FB 5F        5G      5I      �� 5J   
   -	   5        $	 	lbModules��5J      $��3��6%   $��1��66   
�������$��	10,45,0,0q�6�   $	��248��6�   $	��Top=�6�   $��4��6�   ���	#FF3ED2CC6�   �� 5L   
   -
   5        $��lblSemester��5L      $��Semester��6#   $
��Bold"�66   $��25(�6H   $��4��6W   $��1��6g   $	��Top=�6t   $��10,0,0,0q�6�   $��45��6�   $��Bahnschrift)�6�   ���	#FF7CE2FB 5M        5N      5P      �� 5Q   
   -   5        $	 
lbSemester��5Q      $��4��6&   $��1��67   
�������$��	10,45,0,0q�6�   $	��248��6�   $	��Top=�6�   $��4��6�   ���	#FF3ED2CC6�   5T      5U      