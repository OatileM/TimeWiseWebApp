   M S B A M L   `   `   `  ����L  HTimeManagementApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TimeManagementAppTimeManagementApp  5   	       TimeManagementApp.Login   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TimeManagementApp     5   	     � Title$  Login��5   	   $	��450��6   $	��800��6$   .��5	      � ��5
   
   �� 5       �� ImageSource$ /background.jpg��6    j� TileMode$
 None=�67    � ColumnDefinitions 5   
   �� 5      $	��198 �6   �� 5      $��3 �6   �� 5      $	��173 �6   �� 5      $	��226 �6   �� 5      $��27 �6   �� 5      $	��173 �6    � RowDefinitions 5   
   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   .+�5   
   �� -   5        $
��Logo��5   A   $��2��6   $��2��6    $��0��64    J� RenderTransformOrigin$ 0.5,0.5&�6M    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5       z�5"      V� 5#      .~�5$      �� �� 5%      �� 5&       �� Angle$ -0.301Q�6&   T� 5'      5(      ��5*      �� 5+       �� 	UriSource$Q KD:\Visual Studio\School Projects\PROG6221\TimeManagementApp\Images\logo.png?�6   5-      �� 5.   
   ���	#FF3DD2CC$��5q�6)   $��2��6=   $��2��6M   $��1��6a   $��3��6n    5/        50      52      �� 53   
   -   5        $��lblUsername��53   -   $��2��6   $��1��6    $��
Username: ��6@   $��29(�6U   $
��Bold"�6c   $$��Bahnschrift SemiBold Condensed)�6u   $��15,35,211,10q�6�   $��2��6�   �� 54   
   -   5        	 ��Name$	 txtbUsername��54      $��3��6(   $��1��68   $	��Top=�6E   $��35��6]   $��	20,45,5,0q�6i   
���   �6|   �� 55   
   -   5        $��lblPassword��55   -   $��2��6   $��2��6    $��
Password: ��6@   $��29(�6U   $
��Bold"�6c   $$��Bahnschrift SemiBold Condensed)�6u   $��15,22,211,23q�6�   $��2��6�   �� 56   
   -   5        $	 txtbPassword��56      $��3��6(   $��2��68   $��Center=�6E   $��35��6`   $��20,0,5,0q�6l   
���   �6~   �� 57   
   -   5        
 ��Name$
 btnLogin��57      $��Login��6#   $��30(�63   $��2��6A   $��2��6Q   $��3��6e   $��21,75,211,0q�6s   $	��Top=�6�   ���	#FF001211$��Bahnschrift)�6�   $
��Bold"�6�   ���	#FF000606$��40��6�   
�������$��2��6   58        59      5;      �� 5<   
   -   5        $
 btnRegister��5<      $��Register��6&   $��30(�69   $��3��6G   $��3��6W   $��
37,75,22,0q�6e   $	��Top=�6y   ���	#FF001211$��Bahnschrift)�6�   $
��Bold"�6�   ���	#FF000606$��40��6�   
�������$��2��6   5=        5>      5@      5A      5B      