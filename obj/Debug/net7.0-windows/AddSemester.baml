   M S B A M L   `   `   `  ����L  HTimeManagementApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TimeManagementAppTimeManagementApp  5   	   #    TimeManagementApp.AddSemester   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TimeManagementApp     5   	     � Title$  AddSemester��5   	   $	��450��6   $	��800��6*   .��5	      � ��5
   
   �� 5       �� ImageSource$ /background.jpg��6    j� TileMode$
 None=�67    � ColumnDefinitions 5   
   �� 5      $	��198 �6   �� 5      $��3 �6   �� 5      $	��173 �6   �� 5      $	��226 �6   �� 5      $��27 �6   �� 5      $	��173 �6    � RowDefinitions 5   
   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   .+�5   
   �� -   5         ��Name$
 Logo��5   A   $��2��6   $��2��6    $��0��64    J� RenderTransformOrigin$ 0.5,0.5&�6O    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5       z�5"      V� 5#      .~�5$      �� �� 5%      �� 5&       �� Angle$ -0.301Q�6&   T� 5'      5(      ��5*      �� 5+      	 �� 	UriSource$Q	 KD:\Visual Studio\School Projects\PROG6221\TimeManagementApp\Images\logo.png?�6   5.      �� 5/   
   ���	#FF3DD2CC$��5q�6)   $��2��6=   $��2��6M   $��1��6a   $��3��6n    50        51      53      �� 54   
   -   5        $��lblCurrentSemester��54   -   $��2��6   $��1��6    $��Current Semester: ��6G   $��29(�6d   $
��Bold"�6r   $$��Bahnschrift SemiBold Condensed)�6�   $��15,0,191,45q�6�   $��2��6�   �� 55   
   -   5        
 ��Name$
 txtbCurrentSemester��55      $��3��6/   $��1��6?   $	��Top=�6L   $��35��6d   $��
40,10,10,0q�6p   
���   �6�   �� 56   
   -   5        $��lblNumOfWeeks��56   -   $��2��6   $��1��6    $��Number of Weeks: ��6B   $��29(�6^   $
��Bold"�6l   $$��Bahnschrift SemiBold Condensed)�6~   $��15,45,191,0q�6�   $��2��6�   �� 57   
   -   5        $
 txtbNumOfWeeks��57      $��3��6*   $��1��6:   $��Bottom=�6G   $��35��6b   $��	40,0,10,0q�6n   
���   �6�   �� 58   
   -   5        $��lblStartDate��58   -   $��2��6   $��2��6    $��Start Date: ��6A   $��29(�6X   $
��Bold"�6f   $$��Bahnschrift SemiBold Condensed)�6x   $��15,0,191,45q�6�   $��2��6�   (  "System.Windows.Controls.DatePicker  59   
   -   5          Name$ dpStartDate��59      $��3��6*   $��2��6:   $	��Top=�6G   $��40��6_   $��	40,5,10,0q�6k   
���   �$ 0.556,0.814&�6�      SelectedDate 6�   �� *	StartDate+6�   �� 5:   
   -   5        $��lblModuleList��5:   -   $��2��6   $��2��6    $��List of Modules: ��6B   $��29(�6^   $
��Bold"�6l   $$��Bahnschrift SemiBold Condensed)�6~   $��15,45,211,0q�6�   $��2��6�   �� 5;   
   -	   5         ��Name$ lbModulesList��5;      $��3��6)   $��2��69   $	��Top=�6F   $��97��6^   $��
40,52,10,0q�6j   
���   � �� SelectionMode$ Multiple=�6�   $��2��6�   5<      �� 5B   
   -
   5         ��Name$ 	btnFinish��5B      $��Finish��6$   $��25(�65   $��2��6C   $��3��6T   $��124,64,125,0q�6c   $	��Top=�6y   ���	#FF001211$��Bahnschrift)�6�   $
��Bold"�6�   ���	#FF000606$��40��6�   $	��150��6�   
�������$��2��6  $��2��6@   5C        5D      5F      5G      5H      