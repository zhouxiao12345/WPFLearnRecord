   M S B A M L   `   `   `  ����Q  MTicketGrabSystem.Clent, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TicketGrabSystem.ClentTicketGrabSystem.Clent  5   	   '    !TicketGrabSystem.Clent.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:TicketGrabSystem.Clent     5   	   $	��450��5	   	   $	��600��6     � WindowStartupLocation$  CenterScreen=�6"    � Title 5   	   �� *TicketSoftware.Name+ �� StringFormat$ {0}-在线订票��.��5
      �� 
����  �$��3q�6     �� CornerRadius$ 3��64   
����ح�._�5   
   � -   5         �Name$
 Root��5      $��4q�6    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $��* �6    �� 5      $
��Auto �6    .+�5      �� 
����  �$��1q�6(   $ 1��6<    �� Padding$ 4q�6M   ._�5      �� .+�5      ��  �� Orientation$ 
Horizontal=�6!    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      	   Color$	 	LightGray��6/   .+�5      �� $��欢迎光临-��6$   $��45(�61   $��Lishu)�6?   �� 5      $��45(�6I   $��Lishu)�6W   ��6$   �� *TicketSoftware.Name+6W   5      �� 5      $ 
Horizontal=�6!   .+�5      �� $��客服电话：��6$   $��22(�61   $��Lishu)�6?   �� 5      $��22(�6L   $��Lishu)�6Z   ��6$   �� *TicketSoftware.Hotline+6Z   5      5      5      &   System.Windows.Controls.DataGrid  5       
   AutoGenerateColumns
 .     GridLinesVisibility$
 None=�63      CanUserAddRows .     CanUserDeleteRows .  $	��0,4q�5"      $��1��6$   $��16(�61   ��6?   �� *
TicketItem+   Columns 5#      0  *System.Windows.Controls.DataGridTextColumn  5$      ,  &System.Windows.Controls.DataGridColumn   Header$ 日期��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 6T   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *
Train.Date+6T     5%      $ 车次��6)   $ 80 6V    65   �� *Train.Number+6V     5&      $ 时间��6)   $ 80 6T    65   �� *
Train.Time+6T     5'      $ 	起始站��6)   $ 80 6]    66   �� *Train.StartStation+6]     5(      $ 	终点站��6)   $ 80 6Y    66   �� *Train.Terminal+6Y     5)      $ 票价��6)   $ 80 6U    65   �� *Train.Money+6U   4  .System.Windows.Controls.DataGridTemplateColumn  5*      $ 选择��6-      SortMemberPath$ 
IsSelected��69   $ 80 6U      CellTemplate 5+      �� 5,      .R�5-   "   �� $��Center=�5.   +   $��Center=�6F    d� 	IsChecked 5-   +   ��  �� Path$ 
IsSelected� �� UpdateSourceTrigger$ PropertyChanged=���5/   +   �� $# DataContext.SelectItemCommand� �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType"  51      53      55      �� 56      $ 
Horizontal=�6   $��Right=�62   $��2��6N   .+�57      �� $��共计��6   $��Center=�6&   �� 58       �� 
IsReadOnly .  �� TextAlignment$ Center=�6,   $��80��6C   $	��4,0q�6e   ��6N   �� *Count+6e   �� 59      $��下单��6   $��24��6&   $��80��62   ��6=   �� *PlaceOrderCommand+5:      5;      5<      5=      