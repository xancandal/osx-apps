FasdUAS 1.101.10   ��   ��    k             l    " ����  O     "  	  k    ! 
 
     l   ��  ��    1 + Make a list of all the notification types      �   V   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s        l   ��  ��    ' ! that this script will ever send:     �   B   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d :      r    	    l 	   ����  J        ��  m       �   & M a g i c   M o u s e   B a t t e r y��  ��  ��    l      ����  o      ���� ,0 allnotificationslist allNotificationsList��  ��         l  
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
  < < � = = & M a g i c   M o u s e   B a t t e r y��  ��  ��   8 l      >���� > o      ���� 40 enablednotificationslist enabledNotificationsList��  ��   6  ? @ ? l   ��������  ��  ��   @  A B A l   �� C D��   C &   Register our script with growl.    D � E E @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l . B  F G F l   �� H I��   H 7 1 You can optionally (as here) set a default icon     I � J J b   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   G  K L K l   �� M N��   M ' ! for this script's notifications.    N � O O B   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s . L  P�� P I   !���� Q
�� .registernull��� ��� null��   Q �� R S
�� 
appl R l 	   T���� T m     U U � V V & M a g i c   M o u s e   B a t t e r y��  ��   S �� W X
�� 
anot W l 
   Y���� Y o    ���� ,0 allnotificationslist allNotificationsList��  ��   X �� Z [
�� 
dnot Z o    ���� 40 enablednotificationslist enabledNotificationsList [ �� \��
�� 
iapp \ I   �� ]��
�� .earsffdralis        afdr ]  f    ��  ��  ��   	 m      ^ ^�                                                                                  GRRR  alis    B  
Boot_Drive                 �WɏH+     k	Growl.app                                                       "�gΌ��        ����  	                Applications    �W�o      Ό�d       k  "Boot_Drive:Applications: Growl.app   	 G r o w l . a p p   
 B o o t _ D r i v e  Applications/Growl.app  / ��  ��  ��     _ ` _ l     ��������  ��  ��   `  a b a l  # Q c���� c Q   # Q d e f d r   & - g h g I  & +�� i��
�� .sysoexecTEXT���     TEXT i m   & ' j j � k k @ i o r e g   - l   |   g r e p   " B a t t e r y P e r c e n t "��   h o      ���� 0 bpct BPct e R      ������
�� .ascrerr ****      � ****��  ��   f Z   5 Q l m�� n l E   5 : o p o o   5 6���� 0 bpct BPct p m   6 9 q q � r r  } m I  = D�� s��
�� .sysodlogaskr        TEXT s m   = @ t t � u u 2 M a g i c   M o u s e   F u l l y   C h a r g e d��  ��   n k   G Q v v  w x w I  G N�� y��
�� .sysodlogaskr        TEXT y m   G J z z � { { 2 M a g i c   M o u s e   N o t   C o n n e c t e d��   x  |�� | L   O Q����  ��  ��  ��   b  } ~ } l  R e ����  r   R e � � � n   R a � � � 7  S a�� � �
�� 
ctxt � m   Y ]������ � m   ^ `������ � o   R S���� 0 bpct BPct � o      ���� 0 tnum tNum��  ��   ~  � � � l     �� � ���   � 7 1 display dialog "Battery Charge at " & tNum & "%"    � � � � b   d i s p l a y   d i a l o g   " B a t t e r y   C h a r g e   a t   "   &   t N u m   &   " % " �  � � � l     ��������  ��  ��   �  ��� � l  f � ����� � O   f � � � � I  j ����� �
�� .notifygrnull��� ��� null��   � �� � �
�� 
name � m   n q � � � � � & M a g i c   M o u s e   B a t t e r y � �� � �
�� 
titl � m   t w � � � � � $ M a g i c   M o u s e   C h a r g e � �� � �
�� 
desc � b   z � � � � b   z � � � � o   z }���� 0 tnum tNum � m   } � � � � � �  %   � m   � � � � � � �  r e m a i n i n g . � �� ���
�� 
appl � m   � � � � � � � & M a g i c   M o u s e   B a t t e r y��   � m   f g � ��                                                                                  GRRR  alis    B  
Boot_Drive                 �WɏH+     k	Growl.app                                                       "�gΌ��        ����  	                Applications    �W�o      Ό�d       k  "Boot_Drive:Applications: Growl.app   	 G r o w l . a p p   
 B o o t _ D r i v e  Applications/Growl.app  / ��  ��  ��  ��       
�� � � � � � ���������   � ����������������
�� .aevtoappnull  �   � ****�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList�� 0 bpct BPct�� 0 tnum tNum��  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  a � �  } � �  �����  ��  ��   �   � " ^ �� <���� U������������ j�������� q t�� z�������� ��� ��� � � ����� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp
�� .earsffdralis        afdr�� 
�� .registernull��� ��� null
�� .sysoexecTEXT���     TEXT�� 0 bpct BPct��  ��  
�� .sysodlogaskr        TEXT
�� 
ctxt������ 0 tnum tNum
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null�� �� �kvE�O�kvE�O*�������)j 
� UO �j E�W #X  �a  a j Y a j OhO�[a \[Za \Zi2E` O� %*a a a a a _ a %a %�a  � !U � �� ���  �    � �� ���  �   < � � � �r             |       |       |       " E x t e n d e d F e a t u r e s "   =   { " S u p e r M o d e " = { " s i z e " = 1 , " i d " = 2 1 5 , " m i n " = 0 , " m a x " = 1 , " t y p e " = 2 } , " F u l l F a c t o r y D e f a u l t " = { " i d " = 6 8 , " t y p e " = 2 } , " D e v i c e N a m e C h a n g e " = { " i d " = 8 0 , " t y p e " = 2 } , " D e v i c e N a m e 1 " = { " i d " = 8 1 , " s i z e " = 8 , " t y p e " = 2 } , " B a t t e r y C a l i b r a t i o n D a t a 1 " = { " i d " = 9 7 , " s i z e " = 2 9 , " t y p e " = 2 } , " D e v i c e N a m e 2 " = { " i d " = 8 2 , " s i z e " = 8 , " t y p e " = 2 } , " D e v i c e N a m e 3 " = { " i d " = 8 3 , " s i z e " = 8 , " t y p e " = 2 } , " L o n g D e v i c e N a m e " = { " i d " = 8 5 , " s i z e " = 6 4 , " t y p e " = 2 } , " B a t t e r y S t a t e " = { " s i z e " = 1 , " i d " = 4 8 , " m i n " = 0 , " m a x " = 2 , " t y p e " = 0 } , " U n l o a d e d A n d L o a d e d B a t t e r y V o l t a g e s " = { " i d " = 1 0 5 , " s i z e " = 4 , " t y p e " = 2 } , " D e v i c e N a m e 4 " = { " i d " = 8 4 , " s i z e " = 8 , " t y p e " = 2 } , " C a l i b r a t e d B a t t e r y T h r e s h o l d s 2 " = { " i d " = 9 6 , " s i z e " = 1 1 , " t y p e " = 2 } , " F a c t o r y D e f a u l t " = { " i d " = 6 9 , " t y p e " = 2 } , " C a l i b r a t e d B a t t e r y T h r e s h o l d s 1 " = { " i d " = 9 6 , " s i z e " = 2 5 , " t y p e " = 2 } , " B a t t e r y P e r c e n t " = { " s i z e " = 1 , " i d " = 7 1 , " m i n " = 0 , " m a x " = 1 0 0 , " t y p e " = 2 } , " W i l l S h u t d o w n " = { " i d " = 6 4 , " t y p e " = 2 } , " R e c a n t C o n n e c t i o n " = { " i d " = 6 5 , " t y p e " = 2 } , " U s e r M o d e " = { " s i z e " = 1 , " i d " = 6 7 , " m i n " = 1 , " m a x " = 3 , " t y p e " = 2 } }              |       |       |       " B a t t e r y P e r c e n t "   =   3 8 � � � �  3 8��  ��  ��   ascr  ��ޭ