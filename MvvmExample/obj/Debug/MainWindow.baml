   M S B A M L   `   `   `  ����F  BMvvmExample, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MvvmExampleMvvmExample  5   	       MvvmExample.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MvvmExample     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��400��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   o� .@�5      m� $��_file��6   .@�5      m� $��_save��6    m� Command 6*   �� *SaveCommand+5      5      � 5   
   $��1��6    5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $��* �6    .+�5      �� -   5         ��Name$ slider1��5      $��0��6&   
����ح�$��24(�6J   $��4q�6X    � Minimum$
 -100Q�6c    � Maximum$	 100Q�6r    � Value 6�   �� *Input1+�� 5      -   5        $ slider2��5      $��1��6&   
����ح�$��24(�6J   $��4q�6X   $
 -100Q�6c   $	 100Q�6r    6�   �� *Input2+�� 5      -   5        $ slider3��5      $��2��6&   
����ح�$��24(�6J   $��4q�6X   $
 -100Q�6c   $	 100Q�6r    6�   �� *Result+�� 5      -   5         ��Name$ 
addCommand��5      $	��Add��6)   $��3��67   $	��120��6D   $��80��6P   ��6\   �� *
AddCommand+5      5      5       