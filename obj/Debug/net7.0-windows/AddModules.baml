   M S B A M L   `   `   `  ����L  HTimeManagementApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TimeManagementAppTimeManagementApp  5   	   "    TimeManagementApp.AddModules   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TimeManagementApp     5   	     � Title$  Modules��5   	   $	��450��6   $	��800��6&   .��5	      � ��5
   
   �� 5       �� ImageSource$ /background.jpg��6    j� TileMode$
 None=�67    � ColumnDefinitions 5   
   �� 5      $	��198 �6   �� 5      $��3 �6   �� 5      $	��173 �6   �� 5      $	��226 �6   �� 5      $��27 �6   �� 5      $	��173 �6    � RowDefinitions 5   
   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   .+�5   
   �� -   5         ��Name$
 Logo��5   A   $��2��6   $��2��6    $��0��64    J� RenderTransformOrigin$ 0.5,0.5&�6O    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5       z�5"      V� 5#      .~�5$      �� �� 5%      �� 5&       �� Angle$ -0.301Q�6&   T� 5'      5(      ��5*      �� 5+      	 �� 	UriSource$Q	 KD:\Visual Studio\School Projects\PROG6221\TimeManagementApp\Images\logo.png?�6   5.      �� 5/   
   ���	#FF3DD2CC$��5q�6)   $��2��6=   $��2��6M   $��1��6a   $��3��6n    50        51      53      �� 54   
   -   5        $��lblModuleCode��54   -   $��2��6   $��1��6    $��Module Code: ��6B   $��29(�6Z   $
��Bold"�6h   $$��Bahnschrift SemiBold Condensed)�6z   $��15,0,211,45q�6�   $��2��6�   �� 55   
   -   5        
 ��Name$
 txtbModuleCode��55      $��3��6*   $��1��6:   $	��Top=�6G   $��35��6_   $��
15,10,10,0q�6k   
���   �6   �� 56   
   -   5        $��lblModuleName��56   -   $��2��6   $��1��6    $��Module Name: ��6B   $��29(�6Z   $
��Bold"�6h   $$��Bahnschrift SemiBold Condensed)�6z   $��15,45,211,0q�6�   $��2��6�   �� 57   
   -   5        $
 txtbModuleName��57      $��3��6*   $��1��6:   $��Bottom=�6G   $��35��6b   $��	15,0,10,0q�6n   
���   �6�   �� 58   
   -   5        $��
lblCredits��58   -   $��2��6   $��2��6    $��	Credits: ��6?   $��29(�6S   $
��Bold"�6a   $$��Bahnschrift SemiBold Condensed)�6s   $��15,0,211,45q�6�   $��2��6�   �� 59   
   -   5        $
 txtbCredits��59      $��3��6'   $��2��67   $	��Top=�6D   $��35��6\   $��	15,5,98,0q�6h   
���   �6{   �� 5:   
   -   5        $��lblClassHours��5:   -   $��2��6   $��2��6    $��Class Hours: ��6B   $��29(�6Z   $
��Bold"�6h   $$��Bahnschrift SemiBold Condensed)�6z   $��15,45,211,0q�6�   $��2��6�   �� 5;   
   -	   5        $
 txtbClassHours��5;      $��3��6*   $��2��6:   $��Bottom=�6G   $��35��6b   $��	15,0,98,0q�6n   
���   �6�   �� 5<   
   -
   5         ��Name$ btnAddModule��5<      $	��Add��6'   $��25(�65   $��2��6C   $��3��6T   $��2��6a   $��38,64,211,0q�6s   $	��Top=�6�   ���	#FF001211$��Bahnschrift)�6�   $
��Bold"�6�   ���	#FF000606$��40��6�   $	��150��6  
�������$��2��6A   5=        5>      5@      �� 5A   
   -   5        $ 	btnFinish��5A      $��Finish��6$   $��25(�65   $��3��6C   $��3��6T   $��
40,64,36,0q�6c   $	��Top=�6w   ���	#FF001211$��Bahnschrift)�6�   $
��Bold"�6�   ���	#FF000606$��40��6�   $	��150��6�   
�������$��2��6   5B        5C      5E      5F      5G      