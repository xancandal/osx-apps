FasdUAS 1.101.10   ��   ��    k             l     ����  O       	  k     
 
     l   ��  ��    1 + Make a list of all the notification types      �   V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s        l   ��  ��    ' ! that this script will ever send:     �   B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d :      r    	    l 	   ����  J        ��  m       �    P u r g e   M e m o r y��  ��  ��    l      ����  o      ���� ,0 allnotificationslist allNotificationsList��  ��         l  
 
��������  ��  ��      ! " ! l  
 
�� # $��   # ( " Make a list of the notifications     $ � % % D   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   "  & ' & l  
 
�� ( )��   ( - ' that will be enabled by default.          ) � * * N   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .             '  + , + l  
 
�� - .��   - 9 3 Those not enabled by default can be enabled later     . � / / f   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   ,  0 1 0 l  
 
�� 2 3��   2 7 1 in the 'Applications' tab of the growl prefpane.    3 � 4 4 b   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e . 1  5 6 5 r   
  7 8 7 l 	 
  9���� 9 J   
  : :  ;�� ; m   
  < < � = =  P u r g e   M e m o r y��  ��  ��   8 l      >���� > o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   6  ? @ ? l   ��������  ��  ��   @  A B A l   �� C D��   C &   Register our script with growl.    D � E E @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . B  F G F l   �� H I��   H 7 1 You can optionally (as here) set a default icon     I � J J b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   G  K L K l   �� M N��   M ' ! for this script's notifications.    N � O O B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . L  P�� P I   ���� Q
�� .registernull��� ��� null��   Q �� R S
�� 
appl R l 	   T���� T m     U U � V V  P u r g e   M e m o r y��  ��   S �� W X
�� 
anot W l 
   Y���� Y o    ���� ,0 allnotificationslist allNotificationsList��  ��   X �� Z [
�� 
dnot Z o    ���� 40 enablednotificationslist enabledNotificationsList [ �� \��
�� 
iapp \ m     ] ] � ^ ^  P u r g e M e m o r y . a p p��  ��   	 m      _ _�                                                                                  GRRR  alis    B  
Boot_Drive                 �WɏH+     k	Growl.app                                                       "�gΌ��        ����  	                Applications    �W�o      Ό�d       k  "Boot_Drive:Applications: Growl.app   	 G r o w l . a p p   
 B o o t _ D r i v e  Applications/Growl.app  / ��  ��  ��     ` a ` l     ��������  ��  ��   a  b c b l   2 d���� d Q    2 e f�� e r   " ) g h g I  " '�� i��
�� .sysoexecTEXT���     TEXT i m   " # j j � k k X t o p   - l   1   |   g r e p   P h y s M e m :   |   a w k   ' { p r i n t   $ 1 0 } '��   h o      ���� 0 ramfree1 RAMfree1 f R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   c  l m l l     ��������  ��  ��   m  n o n l  3 H p���� p Q   3 H q r�� q r   6 ? s t s I  6 =�� u��
�� .sysoexecTEXT���     TEXT u m   6 9 v v � w w 
 p u r g e��   t o      ���� 0 ramfree1 RAMfree1 r R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   o  x y x l     ��������  ��  ��   y  z { z l  I ` |���� | Q   I ` } ~�� } r   L W  �  I  L S�� ���
�� .sysoexecTEXT���     TEXT � m   L O � � � � � X t o p   - l   1   |   g r e p   P h y s M e m :   |   a w k   ' { p r i n t   $ 1 0 } '��   � o      ���� 0 ramfree2 RAMfree2 ~ R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   {  � � � l     ��������  ��  ��   �  ��� � l  a � ����� � O   a � � � � I  e ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � m   i l � � � � �  P u r g e   M e m o r y � �� � �
�� 
titl � m   o r � � � � �  M e m o r y   C l e a n e d � �� � �
�� 
desc � b   u | � � � o   u x���� 0 ramfree2 RAMfree2 � m   x { � � � � � 2   o f   m e m o r y   f r e e   a v a i l a b l e � �� ���
�� 
appl � m   } � � � � � �  P u r g e   M e m o r y��   � m   a b � ��                                                                                  GRRR  alis    B  
Boot_Drive                 �WɏH+     k	Growl.app                                                       "�gΌ��        ����  	                Applications    �W�o      Ό�d       k  "Boot_Drive:Applications: Growl.app   	 G r o w l . a p p   
 B o o t _ D r i v e  Applications/Growl.app  / ��  ��  ��  ��       
�� � � � � � ���������   � ����������������
�� .aevtoappnull  �   � ****�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList�� 0 ramfree1 RAMfree1�� 0 ramfree2 RAMfree2��  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  b � �  n � �  z � �  �����  ��  ��   �   �  _ �� <���� U������ ]���� j�������� v ����� ��� ��� � ����� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� .sysoexecTEXT���     TEXT�� 0 ramfree1 RAMfree1��  ��  �� 0 ramfree2 RAMfree2
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null�� �� �kvE�O�kvE�O*��������� UO �j E�W X  hO a j E�W X  hO a j E` W X  hO� !*a a a a a _ a %�a � U � � ��  �    � �~ ��~  �   < � � � �   � � � �  1 2 G��  ��  ��  ascr  ��ޭ