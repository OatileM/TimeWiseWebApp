   M S B A M L   `   `   `  ����L  HTimeManagementApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TimeManagementAppTimeManagementApp  5   	   "    TimeManagementApp.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TimeManagementApp     5   	     � Title$  	Time Wise��5   	   $	��450��6   $	��800��6(   .��5	      � ��5
   
   �� 5       �� ImageSource$ /background.jpg��6    j� TileMode$
 None=�67    � ColumnDefinitions 5   
   �� 5      $	��198 �6   �� 5      $��3 �6   �� 5      $	��173 �6   �� 5      $	��226 �6   �� 5      $��27 �6   �� 5      $	��173 �6    � RowDefinitions 5   
   �� 5      $��77 �6   �� 5      $	��103 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   .+�5   
   �� -   5        $
��Logo��5   A   $��2��6   $��2��6    $��0��64    J� RenderTransformOrigin$ 0.5,0.5&�6M    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5       z�5"      V� 5#      .~�5$      �� �� 5%      �� 5&       �� Angle$ -0.301Q�6&   T� 5'      5(      ��5*      �� 5+       �� 	UriSource$Q KD:\Visual Studio\School Projects\PROG6221\TimeManagementApp\Images\logo.png?�6   5-      �� 5.   
   ���	#FF3DD2CC$��5q�6)   $��2��6=   $��2��6M   $��1��6a   $��4��6n   $��0,0,0,45q�6    5/        50      52      �� 53   
   -   5        $��lblUsername��53   -   $��2��6   $��1��6    $��
Username: ��6@   $��29(�6U   $
��Bold"�6c   $$��Bahnschrift SemiBold Condensed)�6u   $��15,0,211,45q�6�   $��2��6�   �� 54   
   -   5        	 ��Name$	 txtbUsername��54      $��3��6(   $��1��68   $	��Top=�6E   $��36��6]   $��
15,11,10,0q�6i   
���   �6}   �� 55   
   -   5        $��lblPassword��55   -   $��2��6   $��1��6    $��
Password: ��6@   $��29(�6U   $
��Bold"�6c   $$��Bahnschrift SemiBold Condensed)�6u   $��15,45,211,0q�6�   $��2��6�   �� 56   
   -   5        $	 txtbPassword��56      $��3��6(   $��1��68   $	��Top=�6E   $��34��6]   $��
16,52,10,0q�6i   
���   �6}   �� 57   
   -   5        $��lblStudentNumber��57   -   $��2��6   $��1��6    $��Student Number: ��6E   $��29(�6`   $
��Bold"�6n   $$��Bahnschrift SemiBold Condensed)�6�   $��15,90,211,45q�6�   $��2��6�   $��2��6�   �� 58   
   -   5        $	 txtbStudentNumber��58      $��3��6-   $��1��6=   $	��Top=�6J   $��34��6b   $��
15,97,10,0q�6n   
���   �$��2��6�   �� 59   
   -   5        $��lblStudentName��59   -   $��2��6   $��2��6    $��Student Name: ��6C   $��29(�6\   $
��Bold"�6j   $$��Bahnschrift SemiBold Condensed)�6|   $��15,34,211,12q�6�   $��2��6�   �� 5:   
   -	   5        $	 txtbStudentName��5:      $��3��6+   $��2��6;   $	��Top=�6H   $��34��6`   $��
15,34,10,0q�6l   
���   �6�   �� 5;   
   -
   5        $��lblStudentYear��5;   -   $��2��6   $��2��6    $��Year of Study: ��6C   $��29(�6]   $
��Bold"�6k   $$��Bahnschrift SemiBold Condensed)�6}   $��15,68,211,67q�6�   $��2��6�   $��2��6�   �� 5<   
   -   5        $	 txtbStudentYear��5<      $��3��6+   $��2��6;   $��Center=�6H   $��34��6c   $��	15,0,98,0q�6o   
���   �$��2��6�   �� 5=   
   -   5        $��lblStudentSemester��5=   -   $��2��6   $��3��6    $��Semesters: ��6G   $��29(�6]   $
��Bold"�6k   $$��Bahnschrift SemiBold Condensed)�6}   $��11,22,214,22q�6�   $��2��6�   �� 5>   
   -   5        $	 txtbStudentSemesters��5>      $��3��60   $��3��6@   $��Bottom=�6M   $��35��6h   $��
15,0,98,29q�6t   
���   �6�   �� 5?   
   -   5        $��lblStudentModules��5?   -   $��2��6   $��3��6    $��	Modules: ��6F   $��29(�6Z   $
��Bold"�6h   $$��Bahnschrift SemiBold Condensed)�6z   $��15,65,211,70q�6�   $��2��6�   $��2��6�   �� 5@   
   -   5        $	 txtbStudentModules��5@      $��3��6.   $��3��6>   $	��Top=�6K   $��35��6c   $��
15,66,98,0q�6o   
���   �$��2��6�   �� 5A   
   -   5        
 ��Name$
 btnRegister��5A      $��Register��6&   $��30(�69   $��2��6G   $��2��6W   $��4��6k   $��
68,16,98,0q�6y   $	��Top=�6�   ���	#FF001211$��Bahnschrift)�6�   $
��Bold"�6�   ���	#FF000606$��40��6�   
������� 5B        5C      5E      5F      5G      