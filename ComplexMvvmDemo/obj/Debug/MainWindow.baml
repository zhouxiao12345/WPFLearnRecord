   M S B A M L   `   `   `  ����J  FComplexMvvmDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ComplexMvvmDemoComplexMvvmDemo  5&   	        ComplexMvvmDemo.MainWindow   5!   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5"   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5#   	   @d2http://schemas.microsoft.com/expression/blend/2008     5$   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5%   	   /localclr-namespace:ComplexMvvmDemo     5&   	     � Title$  
MainWindow��5(   	   $	��350��6   $	��400��6)   .��5)      �  � RowDefinitions 5*   
   �� 5+      $
��Auto �6   �� 5,      $��* �6   .+�5.   
   o� .@�5/      m� $��_File��6   .@�50      m� $��_Save��6    m� Command 6*   �� *SaveCommand+51      52      � 53   
   $��1��6    54      �� 55      $
��Auto �6    �� 56      $
��Auto �6    �� 57      $
��Auto �6    �� 58      $��* �6    .+�5:      �� -   5         ��Name$ slider1��5:      $��0��6&   
����ح�$��4q�6J    � Minimum$
 -100Q�6U    � Maximum$	 100Q�6d    � Value 6r   �� *Input1+�� 5;      -   5        $ slider2��5;      $��1��6&   
����ح�$��4q�6J   $
 -100Q�6U   $	 100Q�6d    6r   �� *Input2+�� 5<      -   5        $ slider3��5<      $��2��6&   
����ح�$��4q�6J   $
 -100Q�6U   $	 100Q�6d    6r   �� *Result+�� 5=      -   5         ��Name$ 	addButton��5=      $��3��6(   $	��Add��65   $	��120��6C   $��80��6O   ��6[   �� *
AddCommand+5>      5?      5@      