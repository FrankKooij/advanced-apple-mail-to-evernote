FasdUAS 1.101.10   ��   ��    k             l      ��  ��   SM

Advanced Apple Mail to Evernote
Version 1.0
https://github.com/scouture

// ATTRIBUTION
This script is forked from version 2.04 of "Apple Mail to Evernote" script by Veritrope.com
http://veritrope.com/code/apple-mail-to-evernote/

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// IMPORTANT LINKS:
-- Original Project Page: http://veritrope.com/code/apple-mail-to-evernote
-- GROWL (App Store Version) (Optional): http://bit.ly/GrowlApp
-- terminal-notifier (Optional): https://github.com/alloy/terminal-notifier/downloads
-- FastScripts (Optional): http://bit.ly/FastScripts
-- Alfred (Optional): http://www.alfredapp.com

// REQUIREMENTS:
THIS SCRIPT REQUIRES LION OR GREATER (OS X 10.7+) TO RUN WITHOUT MODIFICATION

// INSTALLATION:  
-- You can save this script to /Library/Scripts/Mail Scripts and launch it using the system-wide script menu from the Mac OS X menu bar. (The script menu can be activated using the AppleScript Utility application). 
-- To use, highlight the email messages you want to archive into Evernote and run this script file;
-- The "User Switches" below allow you to customize the way this script works.
-- You can save this script as a service and trigger it with a keyboard shortcut.

	(Optional but recommended)
	Easier Keyboard Shortcut with FastScripts
	-- Download and Install FastScripts here: 
	-- http://bit.ly/FastScripts
	Assign to Alfred keyword
	-- Download and install Alfred here:
	-- http://www.alfredapp.com
	

// CHANGELOG:
    	* 1.00 (February 16, 2013) 
	- Fork from v.2.0.4 of "Apple Mail to Evernote" script by Veritrope.com (http://veritrope.com/code/apple-mail-to-evernote/)
	- Made GROWL notifications optional
	- Added OSX notifications with "terminal-notifier"
	- Added the ability to turn off notifications
	- Added mail archiving and flagging
	- Code cleanup
     � 	 	� 
 
 A d v a n c e d   A p p l e   M a i l   t o   E v e r n o t e 
 V e r s i o n   1 . 0 
 h t t p s : / / g i t h u b . c o m / s c o u t u r e 
 
 / /   A T T R I B U T I O N 
 T h i s   s c r i p t   i s   f o r k e d   f r o m   v e r s i o n   2 . 0 4   o f   " A p p l e   M a i l   t o   E v e r n o t e "   s c r i p t   b y   V e r i t r o p e . c o m 
 h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e /  
  
 / /   T E R M S   O F   U S E :  
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
 / /   I M P O R T A N T   L I N K S :  
 - -   O r i g i n a l   P r o j e c t   P a g e :   h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e  
 - -   G R O W L   ( A p p   S t o r e   V e r s i o n )   ( O p t i o n a l ) :   h t t p : / / b i t . l y / G r o w l A p p  
 - -   t e r m i n a l - n o t i f i e r   ( O p t i o n a l ) :   h t t p s : / / g i t h u b . c o m / a l l o y / t e r m i n a l - n o t i f i e r / d o w n l o a d s  
 - -   F a s t S c r i p t s   ( O p t i o n a l ) :   h t t p : / / b i t . l y / F a s t S c r i p t s 
 - -   A l f r e d   ( O p t i o n a l ) :   h t t p : / / w w w . a l f r e d a p p . c o m  
  
 / /   R E Q U I R E M E N T S :  
 T H I S   S C R I P T   R E Q U I R E S   L I O N   O R   G R E A T E R   ( O S   X   1 0 . 7 + )   T O   R U N   W I T H O U T   M O D I F I C A T I O N  
  
 / /   I N S T A L L A T I O N :      
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   t o   / L i b r a r y / S c r i p t s / M a i l   S c r i p t s   a n d   l a u n c h   i t   u s i n g   t h e   s y s t e m - w i d e   s c r i p t   m e n u   f r o m   t h e   M a c   O S   X   m e n u   b a r .   ( T h e   s c r i p t   m e n u   c a n   b e   a c t i v a t e d   u s i n g   t h e   A p p l e S c r i p t   U t i l i t y   a p p l i c a t i o n ) .    
 - -   T o   u s e ,   h i g h l i g h t   t h e   e m a i l   m e s s a g e s   y o u   w a n t   t o   a r c h i v e   i n t o   E v e r n o t e   a n d   r u n   t h i s   s c r i p t   f i l e ;  
 - -   T h e   " U s e r   S w i t c h e s "   b e l o w   a l l o w   y o u   t o   c u s t o m i z e   t h e   w a y   t h i s   s c r i p t   w o r k s .  
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   a s   a   s e r v i c e   a n d   t r i g g e r   i t   w i t h   a   k e y b o a r d   s h o r t c u t .  
  
 	 ( O p t i o n a l   b u t   r e c o m m e n d e d )  
 	 E a s i e r   K e y b o a r d   S h o r t c u t   w i t h   F a s t S c r i p t s  
 	 - -   D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   h e r e :    
 	 - -   h t t p : / / b i t . l y / F a s t S c r i p t s 
 	 A s s i g n   t o   A l f r e d   k e y w o r d 
 	 - -   D o w n l o a d   a n d   i n s t a l l   A l f r e d   h e r e : 
 	 - -   h t t p : / / w w w . a l f r e d a p p . c o m 
 	  
  
 / /   C H A N G E L O G :  
         	 *   1 . 0 0   ( F e b r u a r y   1 6 ,   2 0 1 3 )    
 	 -   F o r k   f r o m   v . 2 . 0 . 4   o f   " A p p l e   M a i l   t o   E v e r n o t e "   s c r i p t   b y   V e r i t r o p e . c o m   ( h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e / ) 
 	 -   M a d e   G R O W L   n o t i f i c a t i o n s   o p t i o n a l 
 	 -   A d d e d   O S X   n o t i f i c a t i o n s   w i t h   " t e r m i n a l - n o t i f i e r " 
 	 -   A d d e d   t h e   a b i l i t y   t o   t u r n   o f f   n o t i f i c a t i o n s 
 	 -   A d d e d   m a i l   a r c h i v i n g   a n d   f l a g g i n g 
 	 -   C o d e   c l e a n u p  
   
  
 l     ��������  ��  ��        l      ��  ��    h b 
======================================
// USER SWITCHES 
======================================
     �   �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U S E R   S W I T C H E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        l     ��  ��    H B SET THIS TO "OFF" IF YOU WANT TO SKIP THE TAGGING/NOTEBOOK DIALOG     �   �   S E T   T H I S   T O   " O F F "   I F   Y O U   W A N T   T O   S K I P   T H E   T A G G I N G / N O T E B O O K   D I A L O G      l     ��  ��    9 3 AND SEND ITEMS DIRECTLY INTO YOUR DEFAULT NOTEBOOK     �   f   A N D   S E N D   I T E M S   D I R E C T L Y   I N T O   Y O U R   D E F A U L T   N O T E B O O K      j     �� ��  0 tagging_switch tagging_Switch  m          � ! !  O N   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & 6 0 IF YOU'VE DISABLED THE TAGGING/NOTEBOOK DIALOG,    ' � ( ( `   I F   Y O U ' V E   D I S A B L E D   T H E   T A G G I N G / N O T E B O O K   D I A L O G , %  ) * ) l     �� + ,��   + = 7 TYPE THE NAME OF THE NOTEBOOK YOU WANT TO SEND ITEM TO    , � - - n   T Y P E   T H E   N A M E   O F   T H E   N O T E B O O K   Y O U   W A N T   T O   S E N D   I T E M   T O *  . / . l     �� 0 1��   0 < 6 BETWEEN THE QUOTES IF IT ISN'T YOUR DEFAULT NOTEBOOK.    1 � 2 2 l   B E T W E E N   T H E   Q U O T E S   I F   I T   I S N ' T   Y O U R   D E F A U L T   N O T E B O O K . /  3 4 3 l     �� 5 6��   5   (EMPTY SENDS TO DEFAULT)    6 � 7 7 2   ( E M P T Y   S E N D S   T O   D E F A U L T ) 4  8 9 8 j    �� :�� 0 
evnotebook 
EVnotebook : m     ; ; � < <   9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A A ; IF TAGGING IS ON AND YOU'D LIKE TO CHANGE THE DEFAULT TAG,    B � C C v   I F   T A G G I N G   I S   O N   A N D   Y O U ' D   L I K E   T O   C H A N G E   T H E   D E F A U L T   T A G , @  D E D l     �� F G��   F > 8 TYPE IT BETWEEN THE QUOTES ("Email Message" IS DEFAULT)    G � H H p   T Y P E   I T   B E T W E E N   T H E   Q U O T E S   ( " E m a i l   M e s s a g e "   I S   D E F A U L T ) E  I J I j    �� K�� 0 
defaulttag 
defaultTag K m     L L � M M   J  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R h b SET THIS "ON" IF YOU WISH TO ACTIVATE ARCHIVING OF PROCESSED MESSAGES IN '<year> Archive' MAILBOX    S � T T �   S E T   T H I S   " O N "   I F   Y O U   W I S H   T O   A C T I V A T E   A R C H I V I N G   O F   P R O C E S S E D   M E S S A G E S   I N   ' < y e a r >   A r c h i v e '   M A I L B O X Q  U V U j   	 �� W�� 0 	archiving   W m   	 
 X X � Y Y  O N V  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ ; 5 SET THIS "ON" IF YOU WISH TO FLAG PROCESSED MESSAGES    _ � ` ` j   S E T   T H I S   " O N "   I F   Y O U   W I S H   T O   F L A G   P R O C E S S E D   M E S S A G E S ]  a b a j    �� c�� 0 flagging   c m     d d � e e  O N b  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j � � SET THIS TO "GROWL", "OSX" OR "OFF". FOR OSX NOTIFICATIONS, YOU MUST INSTALL 'terminial-notifier.app' AND SET COMMAND PATH IN 'terminal_notifier_path' PROPERTY    k � l l@   S E T   T H I S   T O   " G R O W L " ,   " O S X "   O R   " O F F " .   F O R   O S X   N O T I F I C A T I O N S ,   Y O U   M U S T   I N S T A L L   ' t e r m i n i a l - n o t i f i e r . a p p '   A N D   S E T   C O M M A N D   P A T H   I N   ' t e r m i n a l _ n o t i f i e r _ p a t h '   P R O P E R T Y i  m n m j    �� o�� 0 notifications   o m     p p � q q  O S X n  r s r l      �� t u��   t k e 
======================================
// OTHER PROPERTIES 
======================================
    u � v v �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   O T H E R   P R O P E R T I E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 s  w x w l     ��������  ��  ��   x  y z y l     �� { |��   {   Global properties    | � } } $   G l o b a l   p r o p e r t i e s z  ~  ~ j    �� ��� 0 successcount successCount � m    ����     � � � j    �� ��� 0 growl_running growl_Running � m     � � � � � 
 f a l s e �  � � � j    �� ��� 80 osxnotifications_available osxNotifications_Available � m     � � � � � 
 f a l s e �  � � � j    �� ��� 0 mytitle myTitle � m     � � � � �  M a i l   I t e m �  � � � j     #�� ��� 0 themessages theMessages � J     "����   �  � � � j   $ (�� ��� 0 thismessage thisMessage � m   $ ' � � � � �   �  � � � j   ) -�� ��� 0 itemnum itemNum � m   ) , � � � � �  0 �  � � � j   . 2�� ��� 0 attnum attNum � m   . 1 � � � � �  0 �  � � � j   3 7�� ��� 0 errnum errNum � m   3 6 � � � � �  0 �  � � � j   8 <�� ��� 0 usertag userTag � m   8 ; � � � � �   �  � � � j   = B�� ��� 0 evtag EVTag � J   = ?����   �  � � � j   C I�� ��� 0 	multihtml 	multiHTML � m   C F � � � � �   �  � � � j   J O�� ���  0 thesourceitems theSourceItems � J   J L����   �  � � � j   P V�� ��� 0 mysource mySource � m   P S � � � � �   �  � � � j   W ]�� ���  0 decode_success decode_Success � m   W Z � � � � �   �  � � � j   ^ d�� ��� 0 	finalhtml 	finalHTML � m   ^ a � � � � �   �  � � � j   e k�� ��� 0 	myheaders 	myHeaders � m   e h � � � � �   �  � � � j   l q�� ��� *0 mysource_paragraphs mysource_Paragraphs � J   l n����   �  � � � j   r x�� ��� 0 
base64_raw 
base64_Raw � m   r u � � � � �   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Archive properties    � � � � &   A r c h i v e   p r o p e r t i e s �  � � � l      � � � � j   y �� ��� 0 archive_mailbox_label   � m   y | � � � � �  A r c h i v e � %  Will generate "<year> <label>"    � � � � >   W i l l   g e n e r a t e   " < y e a r >   < l a b e l > " �  � � � j   � ��� ��� 0 archive_flag   � m   � �����  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Notification properties    � � � � 0   N o t i f i c a t i o n   p r o p e r t i e s �  � � � j   � ��� ��� 0 terminal_notifier_path   � m   � � � � � � � � / u s r / l o c a l / b i n / t e r m i n a l - n o t i f i e r . a p p / C o n t e n t s / M a c O S / t e r m i n a l - n o t i f i e r �  � � � j   � ��� ��� *0 notificationappname notificationAppName � m   � � � � � � � , A p p l e   M a i l   t o   E v e r n o t e �  � � � j   � ��� ��� (0 notificationaction notificationAction � m   � � � � � � �  c o m . a p p l e . M a i l �  � � � j   � ��� ��� $0 notificationicon notificationIcon � m   � � � � �    M a i l �  l     ��������  ��  ��    l     ��������  ��  ��    l      ����   g a 
======================================
// MAIN PROGRAM 
======================================
    �		 �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 

 l     ��������  ��  ��    l     ����    RESET ITEMS    �  R E S E T   I T E M S  l    ���� r      m      �  0 o      ���� 0 successcount successCount��  ��    l   ���� r     m    	 �  0 o      ���� 0 errnum errNum��  ��     l   !����! r    "#" m    $$ �%%  # n     &'& 1    ��
�� 
txdl' 1    ��
�� 
ascr��  ��    ()( l     ��������  ��  ��  ) *+* l  ",����, Q   "-./- k    �00 121 l   ��34��  3   Check for Growl   4 �55     C h e c k   f o r   G r o w l2 676 Z    ,89����8 =    :;: o    ���� 0 notifications  ; m    << �== 
 G R O W L9 k   # (>> ?@? l  # #��AB��  A   Activate Grown   B �CC    A c t i v a t e   G r o w n@ D��D n  # (EFE I   $ (�������� 0 growl_check Growl_Check��  ��  F  f   # $��  ��  ��  7 GHG l  - -��������  ��  ��  H IJI l  - -��KL��  K   Set up activites   L �MM "   S e t   u p   a c t i v i t e sJ NON n  - 2PQP I   . 2�������� 0 
item_check 
item_Check��  ��  Q  f   - .O RSR l  3 3����~��  �  �~  S TUT l  3 3�}VW�}  V "  Check for selected messages   W �XX 8   C h e c k   f o r   s e l e c t e d   m e s s a g e sU YZY Z   3 o[\�|][ >  3 ;^_^ o   3 8�{�{ 0 themessages theMessages_ J   8 :�z�z  \ k   > e`` aba l  > >�y�x�w�y  �x  �w  b cdc l  > >�vef�v  e   Get messages count   f �gg &   G e t   m e s s a g e s   c o u n td hih n  > Hjkj I   ? H�ul�t�u 0 
item_count 
item_Countl m�sm o   ? D�r�r 0 themessages theMessages�s  �t  k  f   > ?i non l  I I�q�p�o�q  �p  �o  o pqp l  I I�nrs�n  r #  Announce the export of items   s �tt :   A n n o u n c e   t h e   e x p o r t   o f   i t e m sq uvu n  I Xwxw I   J X�my�l�m ,0 process_notification process_Notificationy z{z o   J O�k�k 0 itemnum itemNum{ |�j| o   O T�i�i 0 attnum attNum�j  �l  x  f   I Jv }~} l  Y Y�h�g�f�h  �g  �f  ~ � l  Y Y�e���e  � $  Process mail items for export   � ��� <   P r o c e s s   m a i l   i t e m s   f o r   e x p o r t� ��� n  Y c��� I   Z c�d��c�d 0 mail_process mail_Process� ��b� o   Z _�a�a 0 themessages theMessages�b  �c  �  f   Y Z� ��`� l  d d�_�^�]�_  �^  �]  �`  �|  ] k   h o�� ��� l  h h�\���\  �   No messages selected   � ��� *   N o   m e s s a g e s   s e l e c t e d� ��[� r   h o��� m   h i�Z�Z��� o      �Y�Y 0 successcount successCount�[  Z ��� l  p p�X�W�V�X  �W  �V  � ��� l  p p�U���U  �    Show results notification   � ��� 4   S h o w   r e s u l t s   n o t i f i c a t i o n� ��� n  p ��� I   q �T��S�T 00 processed_notification processed_Notification� ��� o   q v�R�R 0 successcount successCount� ��Q� o   v {�P�P 0 errnum errNum�Q  �S  �  f   p q� ��� l  � ��O�N�M�O  �N  �M  � ��L� l  � ��K���K  �   Error handling   � ���    E r r o r   h a n d l i n g�L  . R      �J��
�J .ascrerr ****      � ****� o      �I�I 0 errtext errText� �H��G
�H 
errn� o      �F�F 0 errnum errNum�G  / Z   �"����E� =  � ���� o   � ��D�D 0 growl_running growl_Running� m   � ��C
�C boovtrue� k   � ��� ��� l  � ��B�A�@�B  �A  �@  � ��� Z   � ����?�� =  � ���� o   � ��>�> 0 errnum errNum� m   � ��=�=��� k   � ��� ��� l  � ��<�;�:�<  �;  �:  � ��� l  � ��9���9  � &   Failure notification for cancel   � ��� @   F a i l u r e   n o t i f i c a t i o n   f o r   c a n c e l� ��� I   � ��8��7�8 0 notification  � ��� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   � ��� ���  U s e r   C a n c e l l e d� ��� m   � ��� ��� " F a i l e d   t o   e x p o r t !� ��� o   � ��6�6 *0 notificationappname notificationAppName� ��� o   � ��5�5 (0 notificationaction notificationAction� ��4� o   � ��3�3 $0 notificationicon notificationIcon�4  �7  � ��2� l  � ��1�0�/�1  �0  �/  �2  �?  � k   � ��� ��� l  � ��.�-�,�.  �-  �,  � ��� l  � ��+���+  � %  Failure notification for error   � ��� >   F a i l u r e   n o t i f i c a t i o n   f o r   e r r o r� ��*� I   � ��)��(�) 0 notification  � ��� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   � ��� ���  I m p o r t   F a i l u r e� ��� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� " F a i l e d   t o   e x p o r t  � o   � ��'
�' 
ret � o   � ��&�& 0 mytitle myTitle� m   � ��� ��� > "     d u e   t o   t h e   f o l l o w i n g   e r r o r :  � o   � ��%
�% 
ret � o   � ��$�$ 0 errtext errText� ��� o   � ��#�# *0 notificationappname notificationAppName� ��� o   � ��"�" (0 notificationaction notificationAction� ��!� o   � �� �  $0 notificationicon notificationIcon�!  �(  �*  � � � l  � �����  �  �    � l  � ���   %  Non notification error message    � >   N o n   n o t i f i c a t i o n   e r r o r   m e s s a g e�  �  F   � =  � �	
	 o   � ��� 0 growl_running growl_Running
 m   � ��
� boovfals =  � o   ��� 80 osxnotifications_available osxNotifications_Available m  �
� boovfals � I �
� .sysodlogaskr        TEXT b   b   b   m   � . I t e m   F a i l e d   t o   I m p o r t :   o  �� 0 errnum errNum o  �
� 
ret  o  �� 0 errtext errText ��
� 
disp m  ��  �  �  �E  ��  ��  +  l     ����  �  �    l      ��   s m 
======================================
// PREPARATORY SUBROUTINES 
=======================================
    � �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R E P A R A T O R Y   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
  !  l     �
�	��
  �	  �  ! "#" l     �$%�  $   App detect   % �&&    A p p   d e t e c t# '(' i   � �)*) I      �+�� 0 appisrunning appIsRunning+ ,�, o      �� 0 appname appName�  �  * O    -.- E    /0/ l   	1��1 n    	232 1    	� 
�  
pnam3 2   ��
�� 
prcs�  �  0 o   	 
���� 0 appname appName. m     44�                                                                                  sevs  alis    z  OS X                       ��V�H+     NSystem Events.app                                               5��^Q�        ����  	                CoreServices    ��H�      �^5�       N   H   G  5OS X:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  O S   X  -System/Library/CoreServices/System Events.app   / ��  ( 565 l     ��������  ��  ��  6 787 l     ��9:��  9   Set up activities   : �;; $   S e t   u p   a c t i v i t i e s8 <=< i   � �>?> I      �������� 0 
item_check 
item_Check��  ��  ? k     "@@ ABA r     CDC l    E����E I    ��F��
�� .earsffdralis        afdrF m     ��
�� afdrcusr��  ��  ��  D o      ���� 0 mypath myPathB G��G O    "HIH Q    !JK��J r    LML 1    ��
�� 
slctM o      ���� 0 themessages theMessagesK R      ������
�� .ascrerr ****      � ****��  ��  ��  I m    	NN�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  ��  = OPO l     ��������  ��  ��  P QRQ l     ��ST��  S ) # Get count of items and attachments   T �UU F   G e t   c o u n t   o f   i t e m s   a n d   a t t a c h m e n t sR VWV i   � �XYX I      ��Z���� 0 
item_count 
item_CountZ [��[ o      ���� 0 themessages theMessages��  ��  Y O     A\]\ k    @^^ _`_ r    aba I   	��c��
�� .corecnte****       ****c o    ���� 0 themessages theMessages��  b o      ���� 0 itemnum itemNum` ded r    fgf m    ����  g o      ���� 0 attnum attNume h��h X    @i��ji r   ( ;klk [   ( 5mnm o   ( -���� 0 attnum attNumn l  - 4o����o I  - 4��p��
�� .corecnte****       ****p n   - 0qrq m   . 0��
�� 
attcr o   - .���� 0 
themessage 
theMessage��  ��  ��  l o      ���� 0 attnum attNum�� 0 
themessage 
theMessagej o    ���� 0 themessages theMessages��  ] m     ss�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  W tut l     ��������  ��  ��  u vwv l      ��xy��  x { u 
======================================
// TAGGING AND NOTEBOOK SUBROUTINES
=======================================
   y �zz �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   T A G G I N G   A N D   N O T E B O O K   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
w {|{ l     ��������  ��  ��  | }~} l     �����   , & Tagging and notebook selection dialog   � ��� L   T a g g i n g   a n d   n o t e b o o k   s e l e c t i o n   d i a l o g~ ��� i   � ���� I      ��������  0 tagging_dialog tagging_Dialog��  ��  � k     ��� ��� Q     [���� k    J�� ��� I   ,����
�� .sysodlogaskr        TEXT� b    ��� m    �� ���  � l 	  ������ m    �� ��� � P l e a s e   E n t e r   Y o u r   T a g s   B e l o w : 
 ( M u l t i p l e   T a g s   S e p a r a t e d   B y   C o m m a s )��  ��  � ����
�� 
appr� m    �� ��� Z V e r i t r o p e . c o m   |   A p p l e   M a i l   t o   E v e r n o t e   E x p o r t� ����
�� 
dtxt� o   	 ���� 0 
defaulttag 
defaultTag� ����
�� 
btns� J    �� ��� m    �� ��� 4 C r e a t e   i n   D e f a u l t   N o t e b o o k� ��� m    �� ��� 2 S e l e c t   N o t e b o o k   f r o m   L i s t� ���� m    �� ���  C a n c e l��  � ����
�� 
dflt� m    �� ��� 4 C r e a t e   i n   D e f a u l t   N o t e b o o k� ����
�� 
cbtn� l 	  ������ m    �� ���  C a n c e l��  ��  � �����
�� 
disp� I   &����
�� .sysorpthalis        TEXT� m    �� ���  E v e r n o t e . i c n s� �����
�� 
in B� l   "������ I   "�����
�� .earsffdralis        afdr� m    ���                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  � ��� r   - 2��� l  - 0������ 1   - 0��
�� 
rslt��  ��  � o      ���� 0 dialogresult  � ��� r   3 :��� n   3 8��� 1   4 8��
�� 
ttxt� o   3 4���� 0 dialogresult  � o      ���� 0 	userinput 	userInput� ��� r   ; B��� n   ; @��� 1   < @��
�� 
bhit� o   ; <���� 0 dialogresult  � o      ���� 0 	buttonsel 	ButtonSel� ���� r   C J��� J   C H�� ���� m   C F�� ���  ,��  � o      ���� 0 	thedelims 	theDelims��  � R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ���� ���  � r   R [��� m   R U������� o      ���� 0 errnum errNum� ��� l  \ \��������  ��  ��  � ��� l  \ \������  �   Assemble tag list   � ��� $   A s s e m b l e   t a g   l i s t� ��� r   \ e��� n  \ c��� I   ] c������� 0 tag_list Tag_List� ��� o   ] ^���� 0 	userinput 	userInput� ���� o   ^ _���� 0 	thedelims 	theDelims��  ��  �  f   \ ]� o      ���� 0 thetags theTags� ��� l  f f��������  ��  ��  � ��� l  f f������  � / ) Reset, final check and formating of tags   � ��� R   R e s e t ,   f i n a l   c h e c k   a n d   f o r m a t i n g   o f   t a g s� ��� r   f n��� J   f h����  � o      ���� 0 evtag EVTag� ��� r   o {��� n  o u��� I   p u������� 0 	tag_check 	Tag_Check� ���� o   p q���� 0 thetags theTags��  ��  �  f   o p� o      ���� 0 evtag EVTag� � � l  | |��������  ��  ��     l  | |����     Select Notebook    �     S e l e c t   N o t e b o o k �� Z  | ����� =  | �	
	 o   | }���� 0 	buttonsel 	ButtonSel
 m   } � � 2 S e l e c t   N o t e b o o k   f r o m   L i s t r   � � n  � � I   � ���~�}� 0 notebook_list Notebook_List�~  �}    f   � � o      �|�| 0 
evnotebook 
EVnotebook��  ��  ��  �  l     �{�z�y�{  �z  �y    l     �x�x   &   Get Evernote's default Notebook    � @   G e t   E v e r n o t e ' s   d e f a u l t   N o t e b o o k  i   � � I      �w�v�u�w $0 default_notebook default_Notebook�v  �u   O     0 k    /   r    !"! 6   #$# 2    �t
�t 
EVnb$ =   %&% 1   	 �s
�s 
EVnd& m    �r
�r boovtrue" o      �q�q *0 get_defaultnotebook get_defaultNotebook  '�p' Z    /()�o�n( =   *+* o    �m�m 0 
evnotebook 
EVnotebook+ m    ,, �--  ) r    +./. c    %010 n    #232 1   ! #�l
�l 
pnam3 l   !4�k�j4 n    !565 4    !�i7
�i 
cobj7 m     �h�h 6 o    �g�g *0 get_defaultnotebook get_defaultNotebook�k  �j  1 m   # $�f
�f 
ctxt/ o      �e�e 0 
evnotebook 
EVnotebook�o  �n  �p   m     88�                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��   9:9 l     �d�c�b�d  �c  �b  : ;<; l     �a=>�a  =   Tag selection subroutine   > �?? 2   T a g   s e l e c t i o n   s u b r o u t i n e< @A@ i   � �BCB I      �`D�_�` 0 tag_list Tag_ListD EFE o      �^�^ 0 	userinput 	userInputF G�]G o      �\�\ 0 	thedelims 	theDelims�]  �_  C k     UHH IJI r     KLK n    MNM 1    �[
�[ 
txdlN 1     �Z
�Z 
ascrL o      �Y�Y 0 	olddelims 	oldDelimsJ OPO r    QRQ J    	SS T�XT o    �W�W 0 	userinput 	userInput�X  R o      �V�V 0 thelist theListP UVU X    LW�UXW k    GYY Z[Z r    !\]\ o    �T�T 0 adelim aDelim] n     ^_^ 1     �S
�S 
txdl_ 1    �R
�R 
ascr[ `a` r   " &bcb J   " $�Q�Q  c o      �P�P 0 newlist newLista ded X   ' Cf�Ogf r   7 >hih b   7 <jkj o   7 8�N�N 0 newlist newListk n   8 ;lml 2  9 ;�M
�M 
citmm o   8 9�L�L 0 anitem anItemi o      �K�K 0 newlist newList�O 0 anitem anItemg o   * +�J�J 0 thelist theListe n�In r   D Gopo o   D E�H�H 0 newlist newListp o      �G�G 0 thelist theList�I  �U 0 adelim aDelimX o    �F�F 0 	thedelims 	theDelimsV qrq r   M Rsts o   M N�E�E 0 	olddelims 	oldDelimst n     uvu 1   O Q�D
�D 
txdlv 1   N O�C
�C 
ascrr w�Bw L   S Uxx o   S T�A�A 0 thelist theList�B  A yzy l     �@�?�>�@  �?  �>  z {|{ l     �=}~�=  } ' ! Creates tags if they don't exist   ~ � B   C r e a t e s   t a g s   i f   t h e y   d o n ' t   e x i s t| ��� i   � ���� I      �<��;�< 0 	tag_check 	Tag_Check� ��:� o      �9�9 0 thetags theTags�:  �;  � k     V�� ��� O     S��� k    R�� ��� r    ��� J    �8�8  � o      �7�7 0 	finaltags 	finalTags� ��6� X   	 R��5�� Z    M���4�� l   #��3�2� H    #�� l   "��1�0� I   "�/��.
�/ .coredoexnull���     ****� 5    �-��,
�- 
EVtg� o    �+�+ 0 thetag theTag
�, kfrmname�.  �1  �0  �3  �2  � Q   & C���*� k   ) :�� ��� r   ) 5��� I  ) 3�)��
�) .corecrel****      � null� m   ) *�(
�( 
EVtg� �'��&
�' 
prdt� K   + /�� �%��$
�% 
pnam� o   , -�#�# 0 thetag theTag�$  �&  � o      �"�" 0 maketag makeTag� ��!� r   6 :��� o   6 7� �  0 maketag makeTag� n      ���  ;   8 9� o   7 8�� 0 	finaltags 	finalTags�!  � R      ���
� .ascrerr ****      � ****�  �  �*  �4  � r   F M��� 4   F J��
� 
EVtg� o   H I�� 0 thetag theTag� n      ���  ;   K L� o   J K�� 0 	finaltags 	finalTags�5 0 thetag theTag� o    �� 0 thetags theTags�6  � m     ���                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��  � ��� L   T V�� o   T U�� 0 	finaltags 	finalTags�  � ��� l     ����  �  �  � ��� l     ����  � - ' Evernote Notebook selection subroutine   � ��� N   E v e r n o t e   N o t e b o o k   s e l e c t i o n   s u b r o u t i n e� ��� i   � ���� I      ���� 0 notebook_list Notebook_List�  �  � O     ��� k    ~�� ��� I   	���
� .miscactvnull��� ��� null�  �  � ��� l   
 ���� r   
 ��� J   
 ��  � o      �
�
 "0 listofnotebooks listOfNotebooks� 2 ,PREPARE TO GET EVERNOTE'S LIST OF NOTEBOOKS    � ��� X P R E P A R E   T O   G E T   E V E R N O T E ' S   L I S T   O F   N O T E B O O K S  � ��� l    ���� r    ��� 2    �	
�	 
EVnb� o      �� 0 evnotebooks EVNotebooks�  GET THE NOTEBOOK LIST    � ��� , G E T   T H E   N O T E B O O K   L I S T  � ��� X    4���� k   % /�� ��� r   % *��� l  % (���� l  % (���� n   % (��� 1   & (�
� 
pnam� o   % &�� "0 currentnotebook currentNotebook�  �  �  �  � o      � �  *0 currentnotebookname currentNotebookName� ���� s   + /��� o   + ,���� *0 currentnotebookname currentNotebookName� l     ������ n      ���  ;   - .� o   , -���� "0 listofnotebooks listOfNotebooks��  ��  ��  � "0 currentnotebook currentNotebook� o    ���� 0 evnotebooks EVNotebooks� ��� l   5 =���� r   5 =��� n  5 ;��� I   6 ;������� 0 simple_sort  � ���� o   6 7���� "0 listofnotebooks listOfNotebooks��  ��  �  f   5 6� o      ����  0 folders_sorted Folders_sorted�  SORT THE LIST    � ���  S O R T   T H E   L I S T  � ��� l   > O���� r   > O��� I  > M����
�� .gtqpchltns    @   @ ns  � o   > ?����  0 folders_sorted Folders_sorted� ����
�� 
appr� m   @ A�� ��� 0 S e l e c t   E v e r n o t e   N o t e b o o k� �� 
�� 
prmp  l 	 B C���� m   B C � 4 C u r r e n t   E v e r n o t e   N o t e b o o k s��  ��   ��
�� 
okbt m   D E �  O K ��	��
�� 
cnbt	 m   F G

 �  N e w   N o t e b o o k��  � o      ���� 0 selnotebook SelNotebook� ( "USER SELECTION FROM NOTEBOOK LIST    � � D U S E R   S E L E C T I O N   F R O M   N O T E B O O K   L I S T  � �� Z   P ~�� l  P S���� =  P S o   P Q���� 0 selnotebook SelNotebook m   Q R��
�� boovfals��  ��   l  V q k   V q  r   V i n   V g l 	 c g���� 1   c g��
�� 
ttxt��  ��   l  V c���� I  V c�� !
�� .sysodlogaskr        TEXT  m   V Y"" �## 0 E n t e r   N e w   N o t e b o o k   N a m e :! ��$��
�� 
dtxt$ m   \ _%% �&&  ��  ��  ��   o      ���� 0 	userinput 	userInput '��' r   j q()( o   j k���� 0 	userinput 	userInput) o      ���� 0 
evnotebook 
EVnotebook��   ! CREATE NEW NOTEBOOK OPTION     �** 6 C R E A T E   N E W   N O T E B O O K   O P T I O N  ��   r   t ~+,+ n   t x-.- 4   u x��/
�� 
cobj/ m   v w���� . o   t u���� 0 selnotebook SelNotebook, o      ���� 0 
evnotebook 
EVnotebook��  � m     00�                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��  � 121 l     ��������  ��  ��  2 343 l      ��56��  5 o i 
======================================
// UTILITY SUBROUTINES 
=======================================
   6 �77 �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U T I L I T Y   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
4 898 l     ��������  ��  ��  9 :;: l     ��<=��  <   Extraction subroutine   = �>> ,   E x t r a c t i o n   s u b r o u t i n e; ?@? i   � �ABA I      ��C����  0 extractbetween extractBetweenC DED o      ���� 0 
searchtext 
SearchTextE FGF o      ���� 0 	starttext 	startTextG H��H o      ���� 0 endtext endText��  ��  B k     ,II JKJ r     LML n    NON 1    ��
�� 
txdlO 1     ��
�� 
ascrM o      ���� 0 tid  K PQP r    RSR o    ���� 0 	starttext 	startTextS n     TUT 1    
��
�� 
txdlU 1    ��
�� 
ascrQ VWV r    XYX n    Z[Z m    ��
�� 
ctxt[ n    \]\ 4    ��^
�� 
citm^ m    ������] o    ���� 0 
searchtext 
SearchTextY o      ���� 0 enditems endItemsW _`_ r    aba o    ���� 0 endtext endTextb n     cdc 1    ��
�� 
txdld 1    ��
�� 
ascr` efe r    #ghg n    !iji m    !��
�� 
ctxtj n    klk 4    ��m
�� 
citmm m    ���� l o    ���� 0 enditems endItemsh o      ����  0 beginningtoend beginningToEndf non r   $ )pqp o   $ %���� 0 tid  q n     rsr 1   & (��
�� 
txdls 1   % &��
�� 
ascro t��t L   * ,uu o   * +����  0 beginningtoend beginningToEnd��  @ vwv l     ��������  ��  ��  w xyx l     ��z{��  z   Sort subroutine   { �||     S o r t   s u b r o u t i n ey }~} i   � �� I      ������� 0 simple_sort  � ���� o      ���� 0 my_list  ��  ��  � k     u�� ��� r     ��� J     ����  � l     ������ o      ���� 0 
index_list  ��  ��  � ��� r    	��� J    ����  � l     ������ o      ���� 0 sorted_list  ��  ��  � ��� U   
 r��� k    m�� ��� r    ��� m    �� ���  � l     ������ o      ���� 0 low_item  ��  ��  � ��� Y    c�������� Z   ) ^������� H   ) -�� E  ) ,��� l  ) *������ o   ) *���� 0 
index_list  ��  ��  � o   * +���� 0 i  � k   0 Z�� ��� r   0 8��� c   0 6��� n   0 4��� 4   1 4���
�� 
cobj� o   2 3���� 0 i  � o   0 1���� 0 my_list  � m   4 5��
�� 
ctxt� o      ���� 0 	this_item  � ���� Z   9 Z������ =  9 <��� l  9 :������ o   9 :���� 0 low_item  ��  ��  � m   : ;�� ���  � k   ? F�� ��� r   ? B��� o   ? @���� 0 	this_item  � l     ������ o      ���� 0 low_item  ��  ��  � ���� r   C F��� o   C D���� 0 i  � l     ������ o      ���� 0 low_item_index  ��  ��  ��  � ��� A I L��� o   I J���� 0 	this_item  � l  J K���~� o   J K�}�} 0 low_item  �  �~  � ��|� k   O V�� ��� r   O R��� o   O P�{�{ 0 	this_item  � l     ��z�y� o      �x�x 0 low_item  �z  �y  � ��w� r   S V��� o   S T�v�v 0 i  � l     ��u�t� o      �s�s 0 low_item_index  �u  �t  �w  �|  ��  ��  ��  ��  �� 0 i  � m    �r�r � l   $��q�p� n    $��� m   ! #�o
�o 
nmbr� n   !��� 2   !�n
�n 
cobj� o    �m�m 0 my_list  �q  �p  ��  � ��� r   d h��� l  d e��l�k� o   d e�j�j 0 low_item  �l  �k  � l     ��i�h� n      ���  ;   f g� o   e f�g�g 0 sorted_list  �i  �h  � ��f� r   i m��� l  i j��e�d� o   i j�c�c 0 low_item_index  �e  �d  � l     ��b�a� n      ���  ;   k l� l  j k��`�_� o   j k�^�^ 0 
index_list  �`  �_  �b  �a  �f  � l   ��]�\� l   ��[�Z� n    ��� m    �Y
�Y 
nmbr� n   ��� 2   �X
�X 
cobj� o    �W�W 0 my_list  �[  �Z  �]  �\  � ��V� L   s u�� l  s t��U�T� o   s t�S�S 0 sorted_list  �U  �T  �V  ~ ��� l     �R�Q�P�R  �Q  �P  � ��� l      �O���O  � x r 
======================================
// PROCESS MAIL ITEMS SUBROUTINE
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R O C E S S   M A I L   I T E M S   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     �N�M�L�N  �M  �L  � ��� i   � ���� I      �K��J�K 0 mail_process mail_Process� ��I� o      �H�H 0 themessages theMessages�I  �J  � k    ��    l     �G�G    CHECK DEFAULT NOTEBOOK    � , C H E C K   D E F A U L T   N O T E B O O K  n     I    �F�E�D�F $0 default_notebook default_Notebook�E  �D    f      	�C	 O   

 Q   
�B k     Z    �A�@ =    o    �?�?  0 tagging_switch tagging_Switch m     �  O N n    I    �>�=�<�>  0 tagging_dialog tagging_Dialog�=  �<    f    �A  �@    l  ! !�;�:�9�;  �:  �9   �8 X   !�7 k   1
   Q   1�!"�6! k   4�## $%$ l  4 4�5&'�5  &   Get message info   ' �(( "   G e t   m e s s a g e   i n f o% )*) r   4 =+,+ l  4 7-�4�3- n   4 7./. 1   5 7�2
�2 
subj/ o   4 5�1�1 0 thismessage thisMessage�4  �3  , o      �0�0 0 mytitle myTitle* 010 r   > C232 l  > A4�/�.4 n   > A565 1   ? A�-
�- 
ctnt6 o   > ?�,�, 0 thismessage thisMessage�/  �.  3 o      �+�+ 0 	mycontent 	myContent1 787 r   D M9:9 l  D G;�*�); n   D G<=< 1   E G�(
�( 
raso= o   D E�'�' 0 thismessage thisMessage�*  �)  : o      �&�& 0 mysource mySource8 >?> r   N S@A@ l  N QB�%�$B n   N QCDC 1   O Q�#
�# 
rptoD o   N O�"�" 0 thismessage thisMessage�%  �$  A o      �!�! 0 	replyaddr 	ReplyAddr? EFE r   T YGHG l  T WI� �I n   T WJKJ 1   U W�
� 
rdrcK o   T U�� 0 thismessage thisMessage�   �  H o      �� 0 	emaildate 	EmailDateF LML r   Z bNON l  Z `P��P n   Z `QRQ 2   ^ `�
� 
trcpR n   Z ^STS 4   [ ^�U
� 
cobjU m   \ ]�� T o   Z [�� 0 thismessage thisMessage�  �  O o      �� 0 allrecipients allRecipientsM VWV l  c c����  �  �  W XYX l  c c�Z[�  Z . ( Assemble all to : resipients for header   [ �\\ P   A s s e m b l e   a l l   t o   :   r e s i p i e n t s   f o r   h e a d e rY ]^] r   c f_`_ m   c daa �bb  ` o      �� 0 torecipients toRecipients^ cdc X   g �e�fe k   w �gg hih r   w |jkj l  w zl��l n   w zmnm 1   x z�
� 
pnamn o   w x�� 0 allrecipient allRecipient�  �  k o      �
�
 0 toname toNamei opo r   } �qrq l  } �s�	�s n   } �tut 1   ~ ��
� 
raddu o   } ~�� 0 allrecipient allRecipient�	  �  r o      �� 0 toemail toEmailp vwv r   � �xyx b   � �z{z b   � �|}| b   � �~~ b   � ���� o   � ��� 0 toname toName� 1   � ��
� 
spac m   � ��� ���  (} o   � ��� 0 toemail toEmail{ m   � ��� ���  ) < b r / >y o      �� 0 
tocombined 
toCombinedw �� � r   � ���� l  � ������� c   � ���� b   � ���� o   � ����� 0 torecipients toRecipients� o   � ����� 0 
tocombined 
toCombined� m   � ���
�� 
TEXT��  ��  � o      ���� 0 torecipients toRecipients�   � 0 allrecipient allRecipientf o   j k���� 0 allrecipients allRecipientsd ��� l  � ���������  ��  ��  � ��� l  � �������  �   Create mail message URL   � ��� 0   C r e a t e   m a i l   m e s s a g e   U R L� ��� r   � ���� m   � ��� ���  � o      ���� 0 therecipient theRecipient� ��� r   � ���� m   � ��� ���  � o      ���� 0 ex  � ��� r   � ���� m   � ��� ���  � o      ���� 0 msglink MsgLink� ��� Q   � ������ k   � ��� ��� r   � ���� m   � ��� ���  � o      ���� 0 therecipient theRecipient� ��� r   � ���� l  � ������� n   � ���� 1   � ���
�� 
radd� n   � ���� 4   � ����
�� 
trcp� m   � ����� � o   � ����� 0 thismessage thisMessage��  ��  � o      ���� 0 therecipient theRecipient� ��� r   � ���� b   � ���� b   � ���� m   � ��� ���  m e s s a g e : / / % 3 c� n  � ���� 1   � ���
�� 
meid� o   � ����� 0 thismessage thisMessage� m   � ��� ���  % 3 e� o      ���� 0 msglink MsgLink� ���� l  � ����� Z  � �������� >  � ���� o   � ����� 0 therecipient theRecipient� m   � ��� ���  � r   � ���� n  � ���� I   � ��������  0 extractbetween extractBetween� ��� o   � ����� 0 	replyaddr 	ReplyAddr� ��� m   � ��� ���  <� ���� m   � ��� ���  >��  ��  �  f   � �� o      ���� 0 ex  ��  ��  �   extract the Address   � ��� (   e x t r a c t   t h e   A d d r e s s��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  �   HTML email functions   � ��� *   H T M L   e m a i l   f u n c t i o n s� ��� r   ���� n  ���� I   ��������  0 extractbetween extractBetween� ��� o   ����� 0 mysource mySource� ��� m  �� ���  b o u n d a r y = "� ���� m  �� ���  "��  ��  �  f   � �� o      ���� 0 theboundary theBoundary� ��� r  ��� l ������ b  � � b   o  ��
�� 
ret  m   �  - -  o  ���� 0 theboundary theBoundary��  ��  � o      ���� "0 themessagestart theMessagestart�  r  , l (	����	 b  (

 b  $ b    m   �  - - o  ���� 0 theboundary theBoundary o   #��
�� 
ret  m  $' �  C o n t e n t - T y p e :��  ��   o      ���� 0 themessageend theMessageEnd  r  -: n  -6 2 26��
�� 
cpar o  -2���� 0 mysource mySource o      ���� 0 
parasource 
paraSource  r  ;L n  ;H 2 DH��
�� 
cpar l ;D ����  c  ;D!"! n  ;@#$# 1  <@��
�� 
alhe$ o  ;<���� 0 thismessage thisMessage" m  @C��
�� 
ctxt��  ��   o      ���� 0 myheaderlines myHeaderlines %&% l MM��������  ��  ��  & '(' l MM��������  ��  ��  ( )*) l MM��+,��  +   Get content type   , �-- "   G e t   c o n t e n t   t y p e* ./. X  M�0��10 Z  _�23����2 C  _f454 o  _b���� 0 myheaderline myHeaderline5 m  be66 �77  C o n t e n t - T y p e :  3 r  i}898 n iw:;: I  jw��<����  0 extractbetween extractBetween< =>= o  jm���� 0 myheaderline myHeaderline> ?@? m  mpAA �BB  C o n t e n t - T y p e :  @ C��C m  psDD �EE  ;��  ��  ;  f  ij9 o      ���� 0 	myheaders 	myHeaders��  ��  �� 0 myheaderline myHeaderline1 o  PS���� 0 myheaderlines myHeaderlines/ FGF r  ��HIH n ��JKJ I  ����L���� 0 stripheader stripHeaderL MNM o  ������ 0 
parasource 
paraSourceN O��O o  ������ 0 myheaderlines myHeaderlines��  ��  K  f  ��I o      ���� 0 	cutsource 	cutSourceG P��P r  ��QRQ o  ������ 0 	cutsource 	cutSourceR o      ���� 0 evhtml evHTML��  " R      ������
�� .ascrerr ****      � ****��  ��  �6    STS l ����������  ��  ��  T UVU l ����WX��  W   Make header template   X �YY *   M a k e   h e a d e r   t e m p l a t eV Z[Z r  ��\]\ b  ��^_^ b  ��`a` b  ��bcb b  ��ded b  ��fgf b  ��hih b  ��jkj b  ��lml b  ��non b  ��pqp m  ��rr �ss� 
 < t a b l e   b o r d e r = " 1 "   w i d t h = " 1 0 0 % "   c e l l s p a c i n g = " 0 "   c e l l p a d d i n g = " 2 " > 
 < t b o d y > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > F r o m :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < a   h r e f = " m a i l t o :q o  ������ 0 ex  o m  ��tt �uu  " >m o  ������ 0 ex  k m  ��vv �ww < / a > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > S u b j e c t :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < s t r o n g >i o  ������ 0 mytitle myTitleg m  ��xx �yy < / s t r o n g > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > D a t e   /   T i m e :     < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " >e o  ������ 0 	emaildate 	EmailDatec m  ��zz �{{ � < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > T o : < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " >a o  ������ 0 torecipients toRecipients_ m  ��|| �}} J < / t d > 
 < / t r > 
 
 < / t b o d y > 
 < / t a b l e > 
 < h r   / >] o      ���� 0 the_template the_Template[ ~~ l ����������  ��  ��   ��� l ��������  � ' ! Sent item to Evernote subroutine   � ��� B   S e n t   i t e m   t o   E v e r n o t e   s u b r o u t i n e� ��� n ���� I  �������� 0 make_evernote make_Evernote� ��� o  ������ 0 mytitle myTitle� ��� o  ������ 0 evtag EVTag� ��� o  ������ 0 	emaildate 	EmailDate� ��� o  ������ 0 msglink MsgLink� ��� o  ������ 0 	mycontent 	myContent� ��� o  ������ 0 mysource mySource� ��� o  ������ 0 theboundary theBoundary� ��� o  ������ "0 themessagestart theMessagestart� ��� o  ������ 0 themessageend theMessageEnd� ��� o  ������ 0 	myheaders 	myHeaders� ��� o  ������ 0 thismessage thisMessage� ��� o  ������ 0 evhtml evHTML� ��� o  ������ 0 
evnotebook 
EVnotebook� ���� o  ������ 0 the_template the_Template��  ��  �  f  ��� ��� l ����~��  �  �~  � ��� l �}���}  � * $ Run message post process subroutine   � ��� H   R u n   m e s s a g e   p o s t   p r o c e s s   s u b r o u t i n e� ��� n ��� I  �|��{�| &0 mail_post_process mail_post_Process� ��z� o  �y�y 0 themessages theMessages�z  �{  �  f  � ��x� l 		�w�v�u�w  �v  �u  �x  �7 0 thismessage thisMessage o   $ %�t�t 0 themessages theMessages�8   R      �s�r�q
�s .ascrerr ****      � ****�r  �q  �B   m    ���                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  �C  � ��� l     �p�o�n�p  �o  �n  � ��� l     �m���m  � 1 + Archiving and flagging of processed emails   � ��� V   A r c h i v i n g   a n d   f l a g g i n g   o f   p r o c e s s e d   e m a i l s� ��� i   � ���� I      �l��k�l &0 mail_post_process mail_post_Process� ��j� o      �i�i 0 themessages theMessages�j  �k  � O     ���� X    ���h�� k    ��� ��� l   �g�f�e�g  �f  �e  � ��� l   �d���d  �   Flag message   � ���    F l a g   m e s s a g e� ��� Z    -���c�b� =   ��� o    �a�a 0 flagging  � m    �� ���  O N� r    )��� c    %��� o    #�`�` 0 archive_flag  � m   # $�_
�_ 
long� n      ��� 1   & (�^
�^ 
fidx� o   % &�]�] 0 m  �c  �b  � ��� l  . .�\�[�Z�\  �[  �Z  � ��� l  . .�Y���Y  �   Archive message   � ���     A r c h i v e   m e s s a g e� ��� Z   . ����X�W� =  . 5��� o   . 3�V�V 0 	archiving  � m   3 4�� ���  O N� k   8 ��� ��� r   8 =��� n   8 ;��� m   9 ;�U
�U 
mbxp� o   8 9�T�T 0 m  � o      �S�S 0 mb  � ��� r   > C��� n   > A��� m   ? A�R
�R 
mact� o   > ?�Q�Q 0 mb  � o      �P�P 0 acc  � ��� r   D W��� e   D U�� b   D U��� b   D O��� l  D M �O�N  c   D M l  D K�M�L l  D K�K�J n   D K 1   I K�I
�I 
year l  D I�H�G I  D I�F�E�D
�F .misccurdldt    ��� null�E  �D  �H  �G  �K  �J  �M  �L   m   K L�C
�C 
TEXT�O  �N  � m   M N �		   � o   O T�B�B 0 archive_mailbox_label  � o      �A�A 0 archive_mailbox  � 

 l  X X�@�?�>�@  �?  �>    Q   X  r   [ a n  [ _ 4   \ _�=
�= 
mbxp m   ] ^ �  b l a h o   [ \�<�< 0 acc   o      �;�; 0 archive   R      �:�9�8
�: .ascrerr ****      � ****�9  �8   k   i   I  i |�7�6
�7 .sysodisAaleR        TEXT b   i x b   i t b   i r !  b   i n"#" m   i l$$ �%%  N o   '# o   l m�5�5 0 archive_mailbox  ! m   n q&& �'' : '   m a i l b o x   f o u n d   f o r   a c c o u n t   ' o   r s�4�4 0 acc   m   t w(( �))  ' .�6   *�3* L   } �2�2  �3   +,+ l  � ��1�0�/�1  �0  �/  , -�.- Q   � �./0. I  � ��-12
�- .coremovenull���     obj 1 o   � ��,�, 0 m  2 �+3�*
�+ 
insh3 o   � ��)�) 0 archive  �*  / R      �(�'�&
�( .ascrerr ****      � ****�'  �&  0 k   � �44 565 I  � ��%7�$
�% .sysodisAaleR        TEXT7 m   � �88 �99 
 E r r o r�$  6 :�#: L   � ��"�"  �#  �.  �X  �W  � ;�!; l  � �� ���   �  �  �!  �h 0 m  � o    �� 0 themessages theMessages� m     <<�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  � =>= l     ����  �  �  > ?@? l     ����  �  �  @ ABA l      �CD�  C { u 
======================================
// MAKE ITEM IN EVERNOTE SUBROUTINE
=======================================
   D �EE �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A K E   I T E M   I N   E V E R N O T E   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
B FGF l     ����  �  �  G HIH i   � �JKJ I      �L�� 0 make_evernote make_EvernoteL MNM o      �� 0 mytitle myTitleN OPO o      �� 0 evtag EVTagP QRQ o      �� 0 	emaildate 	EmailDateR STS o      �� 0 msglink MsgLinkT UVU o      �� 0 	mycontent 	myContentV WXW o      �� 0 mysource mySourceX YZY o      �
�
 0 theboundary theBoundaryZ [\[ o      �	�	 "0 themessagestart theMessagestart\ ]^] o      �� 0 themessageend theMessageEnd^ _`_ o      �� 0 	myheaders 	myHeaders` aba o      �� 0 thismessage thisMessageb cdc o      �� 0 evhtml evHTMLd efe o      �� 0 
evnotebook 
EVnotebookf g�g o      �� 0 the_template the_Template�  �  K k    �hh iji l     �� ���  �   ��  j klk O    �mnm Q   �op��o k   �qq rsr l   ��tu��  t   Is it a text email?   u �vv (   I s   i t   a   t e x t   e m a i l ?s wxw Z   �yz{|y E    
}~} o    ���� 0 	myheaders 	myHeaders~ m    	 ���  t e x t / p l a i nz k    H�� ��� r    ��� I   �����
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Enhl� o    ���� 0 the_template the_Template� ����
�� 
Entt� o    ���� 0 mytitle myTitle� �����
�� 
Ennb� o    ���� 0 
evnotebook 
EVnotebook��  � o      ���� 0 n  � ��� Z   -������� >   ��� o    ���� 0 evtag EVTag� J    ����  � I  " )����
�� .EVRNassnnull���     ****� o   " #���� 0 evtag EVTag� �����
�� 
EV13� o   $ %���� 0 n  ��  ��  ��  � ��� O  . :��� I  2 9�����
�� .EVRNadtnnull���     EVnn��  � �����
�� 
EV18� o   4 5���� 0 	mycontent 	myContent��  � o   . /���� 0 n  � ��� r   ; @��� o   ; <���� 0 	emaildate 	EmailDate� n      ��� 1   = ?��
�� 
EVdd� o   < =���� 0 n  � ��� r   A F��� o   A B���� 0 msglink MsgLink� n      ��� 1   C E��
�� 
EVsu� o   B C���� 0 n  � ��� l  G G��������  ��  ��  � ���� l  G G������  � #  Is it multipart alternative?   � ��� :   I s   i t   m u l t i p a r t   a l t e r n a t i v e ?��  { ��� E   K N��� o   K L���� 0 	myheaders 	myHeaders� m   L M�� ��� * m u l t i p a r t / a l t e r n a t i v e� ��� k   Q��� ��� l  Q Q��������  ��  ��  � ��� l  Q Q������  �   Check for Base64   � ��� "   C h e c k   f o r   B a s e 6 4� ��� r   Q Y��� n  Q W��� I   R W������� 0 base64_check base64_Check� ���� o   R S���� 0 mysource mySource��  ��  �  f   Q R� o      ���� 0 base64detect base64Detect� ��� l  Z Z��������  ��  ��  � ��� l  Z Z������  � #  If message if Base64 encoded   � ��� :   I f   m e s s a g e   i f   B a s e 6 4   e n c o d e d� ��� Z   Z������� =  Z ]��� o   Z [���� 0 base64detect base64Detect� m   [ \��
�� boovtrue� k   `�� ��� r   ` n��� n  ` h��� I   a h�������  0 extractbetween extractBetween� ��� o   a b���� 0 mysource mySource� ��� m   b c�� ��� B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4� ���� o   c d���� 0 theboundary theBoundary��  ��  �  f   ` a� o      ���� 0 	multihtml 	multiHTML� ��� l  o o��������  ��  ��  � ��� l  o o������  � 2 , Strip out content-disposition, if necessary   � ��� X   S t r i p   o u t   c o n t e n t - d i s p o s i t i o n ,   i f   n e c e s s a r y� ��� Z  o �������� E   o x��� o   o t���� 0 	multihtml 	multiHTML� m   t w�� ��� 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e� r   { ���� n  { ���� I   | ��������  0 extractbetween extractBetween� ��� o   | ����� 0 	multihtml 	multiHTML� ��� m   � ��� ��� 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e� ���� o   � ����� 0 theboundary theBoundary��  ��  �  f   { |� o      ���� 0 	multihtml 	multiHTML��  ��  � ��� Z  � �� ����� E   � � o   � ����� 0 	multihtml 	multiHTML m   � � � > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t  r   � � n  � � I   � ���	����  0 extractbetween extractBetween	 

 o   � ����� 0 	multihtml 	multiHTML  m   � � � > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t �� o   � ����� 0 theboundary theBoundary��  ��    f   � � o      ���� 0 	multihtml 	multiHTML��  ��  �  l  � ���������  ��  ��    l  � �����     Decode Base64    �    D e c o d e   B a s e 6 4  r   � � I  � �����
�� .sysoexecTEXT���     TEXT b   � � b   � �  m   � �!! �"" 
 e c h o    l  � �#����# n   � �$%$ 1   � ���
�� 
strq% o   � ����� 0 	multihtml 	multiHTML��  ��   m   � �&& �'' & |   o p e n s s l   b a s e 6 4   - d��   o      ���� 0 basehtml baseHTML ()( l  � ���������  ��  ��  ) *+* l  � ���,-��  ,   Make note in Evernote   - �.. ,   M a k e   n o t e   i n   E v e r n o t e+ /0/ r   � �121 I  � �����3
�� .EVRNcrntnull��� ��� null��  3 ��45
�� 
Enhl4 o   � ����� 0 the_template the_Template5 ��67
�� 
Entt6 o   � ����� 0 mytitle myTitle7 ��8��
�� 
Ennb8 o   � ����� 0 
evnotebook 
EVnotebook��  2 o      ���� 0 n  0 9:9 Z  � �;<����; >  � �=>= o   � ����� 0 evtag EVTag> J   � �����  < I  � ���?@
�� .EVRNassnnull���     ****? o   � ����� 0 evtag EVTag@ ��A��
�� 
EV13A o   � ����� 0 n  ��  ��  ��  : BCB O  �DED I  �����F
�� .EVRNadtnnull���     EVnn��  F ��G��
�� 
EV19G o   � ����� 0 basehtml baseHTML��  E o   � ����� 0 n  C HIH r  
JKJ o  ���� 0 	emaildate 	EmailDateK n      LML 1  	��
�� 
EVddM o  ���� 0 n  I N�N r  OPO o  �~�~ 0 msglink MsgLinkP n      QRQ 1  �}
�} 
EVsuR o  �|�| 0 n  �  ��  � k  �SS TUT l �{�z�y�{  �z  �y  U VWV l �xXY�x  X ' ! If message is not Base64 encoded   Y �ZZ B   I f   m e s s a g e   i s   n o t   B a s e 6 4   e n c o d e dW [\[ r  !]^] n _`_ I  �wa�v�w 0 htmlfix htmlFixa bcb o  �u�u 0 mysource mySourcec ded o  �t�t 0 theboundary theBoundarye f�sf o  �r�r 0 	mycontent 	myContent�s  �v  `  f  ^ o      �q�q 0 	finalhtml 	finalHTML\ g�pg Z  "�hi�ojh = ")klk o  "'�n�n  0 decode_success decode_Successl m  '(�m
�m boovtruei k  ,kmm non l ,,�l�k�j�l  �k  �j  o pqp l ,,�irs�i  r   Make note in Evernote   s �tt ,   M a k e   n o t e   i n   E v e r n o t eq uvu r  ,9wxw I ,7�h�gy
�h .EVRNcrntnull��� ��� null�g  y �fz{
�f 
Enhlz o  ./�e�e 0 the_template the_Template{ �d|}
�d 
Entt| o  01�c�c 0 mytitle myTitle} �b~�a
�b 
Ennb~ o  23�`�` 0 
evnotebook 
EVnotebook�a  x o      �_�_ 0 n  v � Z :L���^�]� > :>��� o  :;�\�\ 0 evtag EVTag� J  ;=�[�[  � I AH�Z��
�Z .EVRNassnnull���     ****� o  AB�Y�Y 0 evtag EVTag� �X��W
�X 
EV13� o  CD�V�V 0 n  �W  �^  �]  � ��� O M_��� I Q^�U�T�
�U .EVRNadtnnull���     EVnn�T  � �S��R
�S 
EV19� o  UZ�Q�Q 0 	finalhtml 	finalHTML�R  � o  MN�P�P 0 n  � ��� r  `e��� o  `a�O�O 0 	emaildate 	EmailDate� n      ��� 1  bd�N
�N 
EVdd� o  ab�M�M 0 n  � ��L� r  fk��� o  fg�K�K 0 msglink MsgLink� n      ��� 1  hj�J
�J 
EVsu� o  gh�I�I 0 n  �L  �o  j k  n��� ��� l nn�H�G�F�H  �G  �F  � ��� l nn�E���E  �   Make note in Evernote   � ��� ,   M a k e   n o t e   i n   E v e r n o t e� ��� r  n{��� I ny�D�C�
�D .EVRNcrntnull��� ��� null�C  � �B��
�B 
Enhl� o  pq�A�A 0 the_template the_Template� �@��
�@ 
Entt� o  rs�?�? 0 mytitle myTitle� �>��=
�> 
Ennb� o  tu�<�< 0 
evnotebook 
EVnotebook�=  � o      �;�; 0 n  � ��� Z |����:�9� > |���� o  |}�8�8 0 evtag EVTag� J  }�7�7  � I ���6��
�6 .EVRNassnnull���     ****� o  ���5�5 0 evtag EVTag� �4��3
�4 
EV13� o  ���2�2 0 n  �3  �:  �9  � ��� O ����� I ���1�0�
�1 .EVRNadtnnull���     EVnn�0  � �/��.
�/ 
EV18� o  ���-�- 0 	mycontent 	myContent�.  � o  ���,�, 0 n  � ��� r  ����� o  ���+�+ 0 	emaildate 	EmailDate� n      ��� 1  ���*
�* 
EVdd� o  ���)�) 0 n  � ��(� r  ����� o  ���'�' 0 msglink MsgLink� n      ��� 1  ���&
�& 
EVsu� o  ���%�% 0 n  �(  �p  � ��� l ���$�#�"�$  �#  �"  � ��!� l ��� ���   �   Is it multipart mixed?   � ��� .   I s   i t   m u l t i p a r t   m i x e d ?�!  � ��� E  ����� o  ���� 0 	myheaders 	myHeaders� m  ���� ���  m u l t i p a r t� ��� k  ��� ��� Z  ������ E  ����� o  ���� 0 mysource mySource� m  ���� ��� . C o n t e n t - T y p e :   t e x t / h t m l� k  ���� ��� l ������  �  �  � ��� l ������  �   Check for Base64   � ��� "   C h e c k   f o r   B a s e 6 4� ��� r  ����� n ����� I  ������ 0 base64_check base64_Check� ��� o  ���� 0 mysource mySource�  �  �  f  ��� o      �� 0 base64detect base64Detect� ��� l ������  �  �  � ��� l ������  � #  If message is Base64 encoded   � ��� :   I f   m e s s a g e   i s   B a s e 6 4   e n c o d e d� ��� Z  ������� = ����� o  ���� 0 base64detect base64Detect� m  ���
� boovtrue� k  ��� ��� r  ����� n ���	 � I  ���	�
� 0 base64_decode base64_Decode	 	�		 o  ���� 0 mysource mySource�	  �
  	   f  ��� o      �� 0 basehtml baseHTML� 			 l ������  �  �  	 			 l ���		�  	   Make note in Evernote   	 �				 ,   M a k e   n o t e   i n   E v e r n o t e	 	
		
 r  ��			 I ����	
� .EVRNcrntnull��� ��� null�  	 � 		
�  
Enhl	 o  ������ 0 the_template the_Template	 ��		
�� 
Entt	 o  ������ 0 mytitle myTitle	 ��	��
�� 
Ennb	 o  ������ 0 
evnotebook 
EVnotebook��  	 o      ���� 0 n  	 			 Z ��		����	 > ��			 o  ������ 0 evtag EVTag	 J  ������  	 I ����		
�� .EVRNassnnull���     ****	 o  ������ 0 evtag EVTag	 ��	��
�� 
EV13	 o  ������ 0 n  ��  ��  ��  	 			 O �		 	 I �����	!
�� .EVRNadtnnull���     EVnn��  	! ��	"��
�� 
EV19	" o  ����� 0 basehtml baseHTML��  	  o  ������ 0 n  	 	#	$	# r  	%	&	% o  	���� 0 	emaildate 	EmailDate	& n      	'	(	' 1  
��
�� 
EVdd	( o  	
���� 0 n  	$ 	)	*	) r  	+	,	+ o  ���� 0 msglink MsgLink	, n      	-	.	- 1  ��
�� 
EVsu	. o  ���� 0 n  	* 	/	0	/ l ��������  ��  ��  	0 	1��	1 l ��	2	3��  	2 ' ! If message is not Base64 encoded   	3 �	4	4 B   I f   m e s s a g e   i s   n o t   B a s e 6 4   e n c o d e d��  � 	5	6	5 = 	7	8	7 o  ���� 0 base64detect base64Detect	8 m  ��
�� boovfals	6 	9��	9 k  �	:	: 	;	<	; r  ,	=	>	= n &	?	@	? I  &��	A���� 0 htmlfix htmlFix	A 	B	C	B o   ���� 0 mysource mySource	C 	D	E	D o   !���� 0 theboundary theBoundary	E 	F��	F o  !"���� 0 	mycontent 	myContent��  ��  	@  f  	> o      ���� 0 	finalhtml 	finalHTML	< 	G��	G Z  -�	H	I��	J	H = -4	K	L	K o  -2����  0 decode_success decode_Success	L m  23��
�� boovtrue	I k  7v	M	M 	N	O	N l 77��������  ��  ��  	O 	P	Q	P l 77��	R	S��  	R   Make note in Evernote   	S �	T	T ,   M a k e   n o t e   i n   E v e r n o t e	Q 	U	V	U r  7D	W	X	W I 7B����	Y
�� .EVRNcrntnull��� ��� null��  	Y ��	Z	[
�� 
Enhl	Z o  9:���� 0 the_template the_Template	[ ��	\	]
�� 
Entt	\ o  ;<���� 0 mytitle myTitle	] ��	^��
�� 
Ennb	^ o  =>���� 0 
evnotebook 
EVnotebook��  	X o      ���� 0 n  	V 	_	`	_ Z EW	a	b����	a > EI	c	d	c o  EF���� 0 evtag EVTag	d J  FH����  	b I LS��	e	f
�� .EVRNassnnull���     ****	e o  LM���� 0 evtag EVTag	f ��	g��
�� 
EV13	g o  NO���� 0 n  ��  ��  ��  	` 	h	i	h O Xj	j	k	j I \i����	l
�� .EVRNadtnnull���     EVnn��  	l ��	m��
�� 
EV19	m o  `e���� 0 	finalhtml 	finalHTML��  	k o  XY���� 0 n  	i 	n	o	n r  kp	p	q	p o  kl���� 0 	emaildate 	EmailDate	q n      	r	s	r 1  mo��
�� 
EVdd	s o  lm���� 0 n  	o 	t��	t r  qv	u	v	u o  qr���� 0 msglink MsgLink	v n      	w	x	w 1  su��
�� 
EVsu	x o  rs���� 0 n  ��  ��  	J k  y�	y	y 	z	{	z l yy��������  ��  ��  	{ 	|	}	| l yy��	~	��  	~   Make note in Evernote   	 �	�	� ,   M a k e   n o t e   i n   E v e r n o t e	} 	�	�	� r  y�	�	�	� I y�����	�
�� .EVRNcrntnull��� ��� null��  	� ��	�	�
�� 
Enhl	� o  {|���� 0 the_template the_Template	� ��	�	�
�� 
Entt	� o  }~���� 0 mytitle myTitle	� ��	���
�� 
Ennb	� o  ����� 0 
evnotebook 
EVnotebook��  	� o      ���� 0 n  	� 	�	�	� Z ��	�	�����	� > ��	�	�	� o  ������ 0 evtag EVTag	� J  ������  	� I ����	�	�
�� .EVRNassnnull���     ****	� o  ������ 0 evtag EVTag	� ��	���
�� 
EV13	� o  ������ 0 n  ��  ��  ��  	� 	�	�	� O ��	�	�	� I ������	�
�� .EVRNadtnnull���     EVnn��  	� ��	���
�� 
EV18	� o  ������ 0 	mycontent 	myContent��  	� o  ������ 0 n  	� 	�	�	� r  ��	�	�	� o  ������ 0 	emaildate 	EmailDate	� n      	�	�	� 1  ����
�� 
EVdd	� o  ������ 0 n  	� 	���	� r  ��	�	�	� o  ������ 0 msglink MsgLink	� n      	�	�	� 1  ����
�� 
EVsu	� o  ������ 0 n  ��  ��  ��  �  � 	���	� l ����������  ��  ��  ��  � 	�	�	� E  ��	�	�	� o  ������ 0 mysource mySource	� m  ��	�	� �	�	�  t e x t / p l a i n	� 	���	� k  ��	�	� 	�	�	� l ����������  ��  ��  	� 	�	�	� l ���	�	��  	�   Make note in Evernote   	� �	�	� ,   M a k e   n o t e   i n   E v e r n o t e	� 	�	�	� r  ��	�	�	� I ���~�}	�
�~ .EVRNcrntnull��� ��� null�}  	� �|	�	�
�| 
Enhl	� o  ���{�{ 0 the_template the_Template	� �z	�	�
�z 
Entt	� o  ���y�y 0 mytitle myTitle	� �x	��w
�x 
Ennb	� o  ���v�v 0 
evnotebook 
EVnotebook�w  	� o      �u�u 0 n  	� 	�	�	� Z ��	�	��t�s	� > ��	�	�	� o  ���r�r 0 evtag EVTag	� J  ���q�q  	� I ���p	�	�
�p .EVRNassnnull���     ****	� o  ���o�o 0 evtag EVTag	� �n	��m
�n 
EV13	� o  ���l�l 0 n  �m  �t  �s  	� 	�	�	� O ��	�	�	� I ���k�j	�
�k .EVRNadtnnull���     EVnn�j  	� �i	��h
�i 
EV18	� o  ���g�g 0 	mycontent 	myContent�h  	� o  ���f�f 0 n  	� 	�	�	� r  ��	�	�	� o  ���e�e 0 	emaildate 	EmailDate	� n      	�	�	� 1  ���d
�d 
EVdd	� o  ���c�c 0 n  	� 	�	�	� r  ��	�	�	� o  ���b�b 0 msglink MsgLink	� n      	�	�	� 1  ���a
�a 
EVsu	� o  ���`�` 0 n  	� 	��_	� l ���^�]�\�^  �]  �\  �_  ��  �  � 	�	�	� l �[�Z�Y�[  �Z  �Y  	� 	�	�	� l �X	�	��X  	�   Multipart mixed   	� �	�	�     M u l t i p a r t   m i x e d	� 	�	�	� l �W�V�U�W  �V  �U  	� 	��T	� l �S	�	��S  	� #  Other types of HTML-encoding   	� �	�	� :   O t h e r   t y p e s   o f   H T M L - e n c o d i n g�T  �  | k  �	�	� 	�	�	� l �R�Q�P�R  �Q  �P  	� 	�	�	� l �O	�	��O  	�   Check for Base64   	� �	�	� "   C h e c k   f o r   B a s e 6 4	� 	�	�	� r  	�	�	� n 	�	�	� I  �N	��M�N 0 base64_check base64_Check	� 	��L	� o  	�K�K 0 mysource mySource�L  �M  	�  f  	� o      �J�J 0 base64detect base64Detect	� 	�	�	� l �I�H�G�I  �H  �G  	� 	�	�	� l �F	�	��F  	� #  If message is Base64 encoded   	� �	�	� :   I f   m e s s a g e   i s   B a s e 6 4   e n c o d e d	� 	�
 	� Z  N

�E

 = 


 o  �D�D 0 base64detect base64Detect
 m  �C
�C boovtrue
 r  "


 n 

	
 I  �B

�A�B 0 base64_decode base64_Decode

 
�@
 o  �?�? 0 mysource mySource�@  �A  
	  f  
 o      �>�> 0 	finalhtml 	finalHTML�E  
 k  %N

 


 r  %7


 n %1


 I  &1�=
�<�=  0 extractbetween extractBetween
 


 o  &'�;�; 0 evhtml evHTML
 


 m  '*

 �

  < / h e a d >
 
�:
 m  *-

 �

  < / h t m l >�:  �<  
  f  %&
 o      �9�9 0 	multihtml 	multiHTML
 
�8
 r  8N


 c  8H
 
!
  n 8D
"
#
" I  9D�7
$�6�7 0 htmlfix htmlFix
$ 
%
&
% o  9>�5�5 0 	multihtml 	multiHTML
& 
'
(
' o  >?�4�4 0 theboundary theBoundary
( 
)�3
) o  ?@�2�2 0 	mycontent 	myContent�3  �6  
#  f  89
! m  DG�1
�1 
ctxt
 o      �0�0 0 	finalhtml 	finalHTML�8  
  
*
+
* l OO�/�.�-�/  �.  �-  
+ 
,
-
, l OO�,
.
/�,  
.   Make note in Evernote   
/ �
0
0 ,   M a k e   n o t e   i n   E v e r n o t e
- 
1
2
1 r  O\
3
4
3 I OZ�+�*
5
�+ .EVRNcrntnull��� ��� null�*  
5 �)
6
7
�) 
Enhl
6 o  QR�(�( 0 the_template the_Template
7 �'
8
9
�' 
Entt
8 o  ST�&�& 0 mytitle myTitle
9 �%
:�$
�% 
Ennb
: o  UV�#�# 0 
evnotebook 
EVnotebook�$  
4 o      �"�" 0 n  
2 
;
<
; Z ]o
=
>�!� 
= > ]a
?
@
? o  ]^�� 0 evtag EVTag
@ J  ^`��  
> I dk�
A
B
� .EVRNassnnull���     ****
A o  de�� 0 evtag EVTag
B �
C�
� 
EV13
C o  fg�� 0 n  �  �!  �   
< 
D
E
D O p�
F
G
F I t���
H
� .EVRNadtnnull���     EVnn�  
H �
I�
� 
EV19
I o  x}�� 0 	finalhtml 	finalHTML�  
G o  pq�� 0 n  
E 
J
K
J r  ��
L
M
L o  ���� 0 	emaildate 	EmailDate
M n      
N
O
N 1  ���
� 
EVdd
O o  ���� 0 n  
K 
P
Q
P r  ��
R
S
R o  ���� 0 msglink MsgLink
S n      
T
U
T 1  ���
� 
EVsu
U o  ���� 0 n  
Q 
V
W
V l �����
�  �  �
  
W 
X�	
X l ���
Y
Z�  
Y    End of message processing   
Z �
[
[ 4   E n d   o f   m e s s a g e   p r o c e s s i n g�	  x 
\
]
\ l ������  �  �  
] 
^
_
^ l ���
`
a�  
` %  Start of attachment processing   
a �
b
b >   S t a r t   o f   a t t a c h m e n t   p r o c e s s i n g
_ 
c
d
c O  ��
e
f
e k  ��
g
g 
h
i
h l ������  �  �  
i 
j
k
j l ��� 
l
m�   
l 7 1 If attachment present, run attachment subroutine   
m �
n
n b   I f   a t t a c h m e n t   p r e s e n t ,   r u n   a t t a c h m e n t   s u b r o u t i n e
k 
o��
o Z ��
p
q����
p > ��
r
s
r n ��
t
u
t 2 ����
�� 
attc
u o  ������ 0 thismessage thisMessage
s J  ������  
q n ��
v
w
v I  ����
x���� 0 attachment_process  
x 
y
z
y o  ������ 0 thismessage thisMessage
z 
{��
{ o  ������ 0 n  ��  ��  
w  f  ����  ��  ��  
f m  ��
|
|�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  
d 
}
~
} l ����������  ��  ��  
~ 

�
 l ����
�
���  
� * $ Item has finished. Count as success   
� �
�
� H   I t e m   h a s   f i n i s h e d .   C o u n t   a s   s u c c e s s
� 
���
� r  ��
�
�
� [  ��
�
�
� o  ������ 0 successcount successCount
� m  ������ 
� o      ���� 0 successcount successCount��  p R      ������
�� .ascrerr ****      � ****��  ��  ��  n m     
�
��                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��  l 
���
� I ����
���
�� .ascrcmnt****      � ****
� b  ��
�
�
� m  ��
�
� �
�
�  s u c c e s s C o u n t :  
� o  ������ 0 successcount successCount��  ��  I 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l      ��
�
���  
� r l 
======================================
// ATTACHMENT SUBROUTINES 
=======================================
   
� �
�
� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   A T T A C H M E N T   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
�   Folder exists?   
� �
�
�    F o l d e r   e x i s t s ?
� 
�
�
� i   � �
�
�
� I      ��
����� 0 f_exists  
� 
���
� o      ���� 0 exportfolder ExportFolder��  ��  
� Q     +
�
�
�
� k    
�
� 
�
�
� r    

�
�
� l   
�����
� I   ��
���
�� .earsffdralis        afdr
� m    ��
�� afdrcusr��  ��  ��  
� o      ���� 0 mypath myPath
� 
�
�
� e    
�
� c    
�
�
� o    ���� 0 exportfolder ExportFolder
� m    ��
�� 
alis
� 
���
� r    
�
�
� o    ���� 0 exportfolder ExportFolder
� o      ���� 0 saveloc SaveLoc��  
� R      ������
�� .ascrerr ****      � ****��  ��  
� O   +
�
�
� I   *����
�
�� .corecrel****      � null��  
� ��
�
�
�� 
kocl
� m     !��
�� 
cfol
� ��
���
�� 
prdt
� K   " &
�
� ��
���
�� 
pnam
� m   # $
�
� �
�
� * T e m p   E x p o r t   F r o m   M a i l��  ��  
� m    
�
��                                                                                  MACS  alis    \  OS X                       ��V�H+     N
Finder.app                                                      �]�\ǒ        ����  	                CoreServices    ��H�      �\�r       N   H   G  .OS X:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  
  O S   X  &System/Library/CoreServices/Finder.app  / ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
�   Attachment processing   
� �
�
� ,   A t t a c h m e n t   p r o c e s s i n g
� 
�
�
� i   � �
�
�
� I      ��
����� 0 attachment_process  
� 
�
�
� o      ���� 0 thismessage thisMessage
� 
���
� o      ���� 0 n  ��  ��  
� O     �
�
�
� k    �
�
� 
�
�
� l   ��������  ��  ��  
� 
�
�
� l   ��
�
���  
� 1 + Make sure text item delimiters are default   
� �
�
� V   M a k e   s u r e   t e x t   i t e m   d e l i m i t e r s   a r e   d e f a u l t
� 
�
�
� r    	
�
�
� m    
�
� �
�
�  
� n     
�
�
� 1    ��
�� 
txdl
� 1    ��
�� 
ascr
� 
�
�
� l  
 
��������  ��  ��  
� 
�
�
� l  
 
��
�
���  
� * $ Temp files processed on the Desktop   
� �
�
� H   T e m p   f i l e s   p r o c e s s e d   o n   t h e   D e s k t o p
� 
�
�
� r   
 
�
�
� c   
 
�
�
� l  
 
�����
� b   
 
�
�
� l  
 
�����
� I  
 ��
���
�� .earsffdralis        afdr
� m   
 ��
�� afdmdesk��  ��  ��  
� m    
�
� �
�
� , T e m p   E x p o r t   F r o m   M a i l :��  ��  
� m    ��
�� 
TEXT
� o      ���� 0 exportfolder ExportFolder
� 
�
�
� r    
�
�
� n   
�
�
� I    �� ���� 0 f_exists    �� o    ���� 0 exportfolder ExportFolder��  ��  
�  f    
� o      ���� 0 saveloc SaveLoc
�  l   ��������  ��  ��    l   ����     Process attachments    � (   P r o c e s s   a t t a c h m e n t s 	
	 r    $ n   " 2    "��
�� 
attc o     ���� 0 thismessage thisMessage o      ����  0 theattachments theAttachments
  r   % ( m   % &����   o      ���� 0 attcount attCount  X   ) ��� k   9 �  r   9 @ b   9 > o   9 :���� 0 exportfolder ExportFolder n  : = 1   ; =��
�� 
pnam o   : ;���� 0 theattachment theAttachment o      ���� 0 thefilename theFileName  !  Q   A W"#��" I  D N��$%
�� .coresavenull���     obj $ o   D E���� 0 theattachment theAttachment% ��&��
�� 
kfil& 4   F J��'
�� 
file' o   H I���� 0 thefilename theFileName��  # R      ������
�� .ascrerr ****      � ****��  ��  ��  ! ()( O   X p*+* O  ^ o,-, I  b n����.
�� .EVRNadtnnull���     EVnn��  . ��/��
�� 
EV21/ 4   f j��0
�� 
file0 o   h i�� 0 thefilename theFileName��  - o   ^ _�~�~ 0 n  + m   X [11�                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��  ) 232 l  q q�}�|�{�}  �|  �{  3 454 l  q q�z67�z  6 !  Silent delete of temp file   7 �88 6   S i l e n t   d e l e t e   o f   t e m p   f i l e5 9:9 r   q �;<; I  q ~�y=>
�y .earsffdralis        afdr= m   q t�x
�x afdmtrsh> �w?�v
�w 
from? m   w z�u
�u fldmfldu�v  < o      �t�t 0 trash_folder trash_Folder: @A@ I  � ��sB�r
�s .sysoexecTEXT���     TEXTB b   � �CDC b   � �EFE b   � �GHG m   � �II �JJ  m v  H n   � �KLK 1   � ��q
�q 
strqL n   � �MNM 1   � ��p
�p 
psxpN o   � ��o�o 0 thefilename theFileNameF 1   � ��n
�n 
spacD n   � �OPO 1   � ��m
�m 
strqP n   � �QRQ 1   � ��l
�l 
psxpR o   � ��k�k 0 trash_folder trash_Folder�r  A S�jS l  � ��i�h�g�i  �h  �g  �j  �� 0 theattachment theAttachment o   , -�f�f  0 theattachments theAttachments TUT l  � ��e�d�c�e  �d  �c  U VWV l  � ��bXY�b  X #  Silent delete of temp folder   Y �ZZ :   S i l e n t   d e l e t e   o f   t e m p   f o l d e rW [\[ r   � �]^] n  � �_`_ I   � ��aa�`�a 0 trashfolder  a b�_b o   � ��^�^ 0 saveloc SaveLoc�_  �`  `  f   � �^ o      �]�] 0 success  \ c�\c l  � ��[�Z�Y�[  �Z  �Y  �\  
� m     dd�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  
� efe l     �X�W�V�X  �W  �V  f ghg l     �Uij�U  i #  Silent delete of temp folder   j �kk :   S i l e n t   d e l e t e   o f   t e m p   f o l d e rh lml i   � �non I      �Tp�S�T 0 trashfolder  p q�Rq o      �Q�Q 0 saveloc SaveLoc�R  �S  o Q     �rstr k    �uu vwv r    xyx l   
z�P�Oz c    
{|{ l   }�N�M} I   �L~�K
�L .earsffdralis        afdr~ m    �J
�J afdrtrsh�K  �N  �M  | m    	�I
�I 
utxt�P  �O  y o      �H�H 0 trashfolderpath  w � r    ��� I   �G��F
�G .sysonfo4asfe        file� l   ��E�D� c    ��� o    �C�C 0 saveloc SaveLoc� m    �B
�B 
alis�E  �D  �F  � o      �A�A 0 srcfolderinfo  � ��� r    ��� n    ��� 1    �@
�@ 
pnam� o    �?�? 0 srcfolderinfo  � o      �>�> 0 srcfoldername  � ��� r    $��� n    "��� 1     "�=
�= 
strq� n     ��� 1     �<
�< 
psxp� o    �;�; 0 saveloc SaveLoc� o      �:�: 0 saveloc SaveLoc� ��� r   % (��� m   % &�9�9  � o      �8�8 0 counter  � ��� T   ) f�� k   . a�� ��� Z   . I���7�� =  . 1��� o   . /�6�6 0 counter  � m   / 0�5�5  � r   4 ;��� b   4 9��� b   4 7��� o   4 5�4�4 0 trashfolderpath  � o   5 6�3�3 0 srcfoldername  � m   7 8�� ���  :� o      �2�2 0 destfolderpath  �7  � r   > I��� b   > G��� b   > E��� b   > C��� b   > A��� o   > ?�1�1 0 trashfolderpath  � o   ? @�0�0 0 srcfoldername  � m   A B�� ���   � o   C D�/�/ 0 counter  � m   E F�� ���  :� o      �.�. 0 destfolderpath  � ��� Q   J [���� r   M R��� c   M P��� o   M N�-�- 0 destfolderpath  � m   N O�,
�, 
alis� o      �+�+ 0 destfolderalias  � R      �*�)�(
�* .ascrerr ****      � ****�)  �(  �  S   Z [� ��'� r   \ a��� [   \ _��� o   \ ]�&�& 0 counter  � m   ] ^�%�% � o      �$�$ 0 counter  �'  � ��� r   g n��� n   g l��� 1   j l�#
�# 
strq� n   g j��� 1   h j�"
�" 
psxp� o   g h�!�! 0 destfolderpath  � o      � �  0 destfolderpath  � ��� r   o x��� b   o v��� b   o t��� b   o r��� m   o p�� ���  d i t t o  � o   p q�� 0 saveloc SaveLoc� 1   r s�
� 
spac� o   t u�� 0 destfolderpath  � o      �� 0 command  � ��� I  y ~���
� .sysoexecTEXT���     TEXT� o   y z�� 0 command  �  � ��� l   ����  � 9 3 this won't be executed if the ditto command errors   � ��� f   t h i s   w o n ' t   b e   e x e c u t e d   i f   t h e   d i t t o   c o m m a n d   e r r o r s� ��� r    ���� b    ���� m    ��� ���  r m   - r  � o   � ��� 0 saveloc SaveLoc� o      �� 0 command  � ��� I  � ����
� .sysoexecTEXT���     TEXT� o   � ��� 0 command  �  � ��� L   � ��� m   � ��
� boovtrue�  s R      ���
� .ascrerr ****      � ****�  �  t L   � ��� m   � ��
� boovfalsm ��� l     ���
�  �  �
  � ��� l      �	���	  � t n 
======================================
// HTML CLEANUP SUBROUTINES 
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   H T M L   C L E A N U P   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     ����  �  �  � ��� l     ����  �   Header strip   � ���    H e a d e r   s t r i p�    i   � � I      ��� 0 stripheader stripHeader  o      �� 0 
parasource 
paraSource � o      � �  0 myheaderlines myHeaderlines�  �   k     x 	
	 l     ��������  ��  ��  
  l     ����   * $ Find the last non-empty header line    � H   F i n d   t h e   l a s t   n o n - e m p t y   h e a d e r   l i n e  r      m      �   o      ���� 0 lastheaderline    r     I   	����
�� .corecnte****       **** l   ���� o    ���� 0 myheaderlines myHeaderlines��  ��  ��   o      ���� 0 n    V    % k        !"! r    #$# n    %&% 4    ��'
�� 
cobj' o    ���� 0 n  & o    ���� 0 myheaderlines myHeaderlines$ o      ���� 0 lastheaderline  " (��( r     )*) \    +,+ o    ���� 0 n  , m    ���� * o      ���� 0 n  ��   l   -����- =    ./. o    ���� 0 lastheaderline  / m    00 �11  ��  ��   232 l  & &��������  ��  ��  3 454 l  & &��67��  6   Compare header to source   7 �88 2   C o m p a r e   h e a d e r   t o   s o u r c e5 9:9 r   & -;<; l  & +=����= I  & +��>��
�� .corecnte****       ****> o   & '���� 0 
parasource 
paraSource��  ��  ��  < o      ���� 0 sourcelength  : ?@? Y   . KA��BC��A Z  8 FDE����D l  8 >F����F =  8 >GHG n   8 <IJI 4   9 <��K
�� 
cobjK o   : ;���� 0 n  J o   8 9���� 0 
parasource 
paraSourceH m   < =LL �MM  ��  ��  E  S   A B��  ��  �� 0 n  B m   1 2���� C o   2 3���� 0 sourcelength  ��  @ NON l  L L��������  ��  ��  O PQP l  L L��RS��  R   Strip out headers   S �TT $   S t r i p   o u t   h e a d e r sQ UVU r   L [WXW l  L YY����Y n   L YZ[Z 7  M Y��\]
�� 
cobj\ l  Q U^����^ [   Q U_`_ o   R S���� 0 n  ` m   S T���� ��  ��  ] o   V X���� 0 sourcelength  [ o   L M���� 0 
parasource 
paraSource��  ��  X o      ����  0 cutsourceitems cutSourceItemsV aba r   \ acdc n  \ _efe 1   ] _��
�� 
txdlf 1   \ ]��
�� 
ascrd o      ���� 0 	olddelims 	oldDelimsb ghg r   b giji o   b c��
�� 
ret j n     klk 1   d f��
�� 
txdll 1   c d��
�� 
ascrh mnm r   h mopo l  h kq����q c   h krsr o   h i����  0 cutsourceitems cutSourceItemss m   i j��
�� 
ctxt��  ��  p o      ���� 0 	cutsource 	cutSourcen tut r   n svwv o   n o���� 0 	olddelims 	oldDelimsw n     xyx 1   p r��
�� 
txdly 1   o p��
�� 
ascru z{z l  t t��������  ��  ��  { |}| L   t v~~ o   t u���� 0 	cutsource 	cutSource} �� l  w w��������  ��  ��  ��   ��� l     ��������  ��  ��  � ��� l     ������  �   Base64 check   � ���    B a s e 6 4   c h e c k� ��� i   � ���� I      ������� 0 base64_check base64_Check� ���� o      ���� 0 mysource mySource��  ��  � k     L�� ��� r     ��� m     ��
�� boovfals� o      ���� 0 base64detect base64Detect� ��� r    ��� m    �� ��� B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4� o      ���� 0 base64msgstr base64MsgStr� ��� r    ��� m    	�� ��� $ C o n t e n t - T y p e :   t e x t� o      ���� &0 base64contenttype base64ContentType� ��� r    ��� I   �����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o    ���� 0 base64msgstr base64MsgStr� �����
�� 
psin� o    ���� 0 mysource mySource��  � o      ���� "0 base64msgoffset base64MsgOffset� ��� r    #��� I   !�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o    ���� &0 base64contenttype base64ContentType� �����
�� 
psin� o    ���� 0 mysource mySource��  � o      ���� *0 base64contentoffset base64ContentOffset� ��� r   $ +��� c   $ )��� \   $ '��� o   $ %���� "0 base64msgoffset base64MsgOffset� o   % &���� *0 base64contentoffset base64ContentOffset� m   ' (��
�� 
doub� o      ���� 0 base64offset base64Offset� ��� r   , 1��� c   , /��� o   , -���� 0 base64offset base64Offset� m   - .��
�� 
nmbr� o      ���� 0 	theoffset 	theOffset� ��� Z   2 I������� A  2 5��� o   2 3���� 0 	theoffset 	theOffset� m   3 4���� 2� Z  8 E������� ?  8 ;��� o   8 9���� 0 	theoffset 	theOffset� m   9 :������� r   > A��� m   > ?��
�� boovtrue� o      ���� 0 base64detect base64Detect��  ��  ��  ��  � ���� L   J L�� o   J K���� 0 base64detect base64Detect��  � ��� l     �������  ��  �  � ��� l     �~���~  �   Base64 decode   � ���    B a s e 6 4   d e c o d e� ��� i   � ���� I      �}��|�} 0 base64_decode base64_Decode� ��{� o      �z�z 0 mysource mySource�{  �|  � k     ]�� ��� l     �y�x�w�y  �x  �w  � ��� l     �v���v  � - ' Use TID to quickly isolate Base64 data   � ��� N   U s e   T I D   t o   q u i c k l y   i s o l a t e   B a s e 6 4   d a t a� ��� r     ��� n    ��� 1    �u
�u 
txdl� 1     �t
�t 
ascr� o      �s�s 0 olddelim oldDelim� ��� r    ��� m    �� ��� . C o n t e n t - T y p e :   t e x t / h t m l� n     ��� 1    
�r
�r 
txdl� 1    �q
�q 
ascr� ��� r    ��� n    ��� 4   �p�
�p 
citm� m    �o�o � o    �n�n 0 mysource mySource� o      �m�m 0 
base64_raw 
base64_Raw� ��� r    ��� b    ��� 1    �l
�l 
lnfd� 1    �k
�k 
lnfd� n     ��� 1    �j
�j 
txdl� 1    �i
�i 
ascr� ��� r    -��� n    '   4  $ '�h
�h 
citm m   % &�g�g  o    $�f�f 0 
base64_raw 
base64_Raw� o      �e�e 0 
base64_raw 
base64_Raw�  r   . 3 m   . / � 
 - - - - - n     	
	 1   0 2�d
�d 
txdl
 1   / 0�c
�c 
ascr  r   4 B n   4 < 4  9 <�b
�b 
citm m   : ;�a�a  o   4 9�`�` 0 
base64_raw 
base64_Raw o      �_�_ 0 	multihtml 	multiHTML  r   C H o   C D�^�^ 0 olddelim oldDelim n      1   E G�]
�] 
txdl 1   D E�\
�\ 
ascr  l  I I�[�Z�Y�[  �Z  �Y    l  I I�X�X     Decode Base64    �    D e c o d e   B a s e 6 4   r   I Z!"! I  I X�W#�V
�W .sysoexecTEXT���     TEXT# b   I T$%$ b   I R&'& m   I J(( �)) 
 e c h o  ' l  J Q*�U�T* n   J Q+,+ 1   O Q�S
�S 
strq, o   J O�R�R 0 	multihtml 	multiHTML�U  �T  % m   R S-- �.. & |   o p e n s s l   b a s e 6 4   - d�V  " o      �Q�Q 0 basehtml baseHTML  /0/ l  [ [�P�O�N�P  �O  �N  0 1�M1 L   [ ]22 o   [ \�L�L 0 basehtml baseHTML�M  � 343 l     �K�J�I�K  �J  �I  4 565 l     �H�G�F�H  �G  �F  6 787 l     �E9:�E  9  	 HTML fix   : �;;    H T M L   f i x8 <=< i   � �>?> I      �D@�C�D 0 htmlfix htmlFix@ ABA o      �B�B 0 evhtml evHTMLB CDC o      �A�A 0 theboundary theBoundaryD E�@E o      �?�? 0 	mycontent 	myContent�@  �C  ? k    
FF GHG l     �>�=�<�>  �=  �<  H IJI r     KLK n    MNM 1    �;
�; 
txdlN 1     �:
�: 
ascrL o      �9�9 0 	olddelims 	oldDelimsJ OPO r    QRQ c    	STS o    �8�8 0 evhtml evHTMLT m    �7
�7 
TEXTR o      �6�6 0 	multihtml 	multiHTMLP UVU l   �5�4�3�5  �4  �3  V WXW l   �2YZ�2  Y "  Test for / strip out header   Z �[[ 8   T e s t   f o r   /   s t r i p   o u t   h e a d e rX \]\ r    ^_^ n    `a` 2   �1
�1 
cpara o    �0�0 0 	multihtml 	multiHTML_ o      �/�/ 0 
parasource 
paraSource] bcb Z    ;de�.�-d E     fgf n    hih 4    �,j
�, 
cobjj m    �+�+ i o    �*�* 0 
parasource 
paraSourceg m    kk �ll  R e c e i v e d :e k   # 7mm non r   # )pqp l  # 'r�)�(r n   # 'sts 4   $ '�'u
�' 
cobju m   % &�&�& t o   # $�%�% 0 
parasource 
paraSource�)  �(  q o      �$�$ 0 myheaderlines myHeaderlineso v�#v r   * 7wxw n  * 1yzy I   + 1�"{�!�" 0 stripheader stripHeader{ |}| o   + ,� �  0 
parasource 
paraSource} ~�~ o   , -�� 0 myheaderlines myHeaderlines�  �!  z  f   * +x o      �� 0 	multihtml 	multiHTML�#  �.  �-  c � l  < <����  �  �  � ��� l  < <����  �   Trim ending   � ���    T r i m   e n d i n g� ��� Z   < m����� E   < C��� o   < A�� 0 	multihtml 	multiHTML� m   A B�� ���  < / h t m l >� r   F X��� n  F R��� I   G R����  0 extractbetween extractBetween� ��� o   G L�� 0 	multihtml 	multiHTML� ��� m   L M�� ��� . C o n t e n t - T y p e :   t e x t / h t m l� ��� m   M N�� ���  < / h t m l >�  �  �  f   F G� o      �� 0 	multihtml 	multiHTML�  � r   [ m��� n  [ g��� I   \ g����  0 extractbetween extractBetween� ��� o   \ a�� 0 	multihtml 	multiHTML� ��� m   a b�� ��� . C o n t e n t - T y p e :   t e x t / h t m l� ��� o   b c�� 0 theboundary theBoundary�  �  �  f   [ \� o      �� 0 	multihtml 	multiHTML� ��� r   n w��� n   n u��� 2  s u�
� 
cpar� o   n s�
�
 0 	multihtml 	multiHTML� o      �	�	 0 
parasource 
paraSource� ��� l  x x����  �  �  � ��� l  x x����  � . ( Test for / strip out leading semi-colon   � ��� P   T e s t   f o r   /   s t r i p   o u t   l e a d i n g   s e m i - c o l o n� ��� Z   x ������ E   x ~��� n   x |��� 4   y |��
� 
cobj� m   z {�� � o   x y� �  0 
parasource 
paraSource� m   | }�� ���  ;� k   � ��� ��� r   � ���� l  � ������� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource��  ��  � o      ���� 0 myheaderlines myHeaderlines� ��� r   � ���� n  � ���� I   � �������� 0 stripheader stripHeader� ��� o   � ����� 0 
parasource 
paraSource� ���� o   � ����� 0 myheaderlines myHeaderlines��  ��  �  f   � �� o      ���� 0 	multihtml 	multiHTML� ���� r   � ���� n   � ���� 2  � ���
�� 
cpar� o   � ����� 0 	multihtml 	multiHTML� o      ���� 0 
parasource 
paraSource��  �  �  � ��� l  � ���������  ��  ��  � ��� l  � �������  � I C Test for empty line / clean subsequent encoding info, if necessary   � ��� �   T e s t   f o r   e m p t y   l i n e   /   c l e a n   s u b s e q u e n t   e n c o d i n g   i n f o ,   i f   n e c e s s a r y� ��� Z   �������� =  � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource� m   � ��� ���  � k   ��� ��� l  � ���������  ��  ��  � ��� l  � �������  � 5 / Test for / strip out content-transfer-encoding   � ��� ^   T e s t   f o r   /   s t r i p   o u t   c o n t e n t - t r a n s f e r - e n c o d i n g� ��� Z   � �������� E   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource� m   � ��� ��� 2 C o n t e n t - T r a n s f e r - E n c o d i n g� k   � ��� � � r   � � l  � ����� n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 
parasource 
paraSource��  ��   o      ���� 0 myheaderlines myHeaderlines   r   � �	
	 n  � � I   � ������� 0 stripheader stripHeader  o   � ����� 0 
parasource 
paraSource �� o   � ����� 0 myheaderlines myHeaderlines��  ��    f   � �
 o      ���� 0 	multihtml 	multiHTML �� r   � � n   � � 2  � ���
�� 
cpar o   � ����� 0 	multihtml 	multiHTML o      ���� 0 
parasource 
paraSource��  ��  ��  �  l  � �����   #  Test for / strip out charset    � :   T e s t   f o r   /   s t r i p   o u t   c h a r s e t �� Z   ����� E   � � n   � � !  4   � ���"
�� 
cobj" m   � ����� ! o   � ����� 0 
parasource 
paraSource m   � �## �$$  c h a r s e t k   � %% &'& r   � �()( l  � �*����* n   � �+,+ 4   � ���-
�� 
cobj- m   � ����� , o   � ����� 0 
parasource 
paraSource��  ��  ) o      ���� 0 myheaderlines myHeaderlines' ./. r   � �010 n  � �232 I   � ���4���� 0 stripheader stripHeader4 565 o   � ����� 0 
parasource 
paraSource6 7��7 o   � ����� 0 myheaderlines myHeaderlines��  ��  3  f   � �1 o      ���� 0 	multihtml 	multiHTML/ 8��8 r   � 9:9 n   � �;<; 2  � ���
�� 
cpar< o   � ����� 0 	multihtml 	multiHTML: o      ���� 0 
parasource 
paraSource��  ��  ��  ��  ��  ��  � =>= l 		��������  ��  ��  > ?@? l 		��AB��  A 5 / Test for / strip out content-transfer-encoding   B �CC ^   T e s t   f o r   /   s t r i p   o u t   c o n t e n t - t r a n s f e r - e n c o d i n g@ DED Z  	6FG����F E  	HIH n  	JKJ 4  
��L
�� 
cobjL m  ���� K o  	
���� 0 
parasource 
paraSourceI m  MM �NN 2 C o n t e n t - T r a n s f e r - E n c o d i n gG k  2OO PQP r  RSR l T����T n  UVU 4  ��W
�� 
cobjW m  ���� V o  ���� 0 
parasource 
paraSource��  ��  S o      ���� 0 myheaderlines myHeaderlinesQ XYX r  (Z[Z n "\]\ I  "��^���� 0 stripheader stripHeader^ _`_ o  ���� 0 
parasource 
paraSource` a��a o  ���� 0 myheaderlines myHeaderlines��  ��  ]  f  [ o      ���� 0 	multihtml 	multiHTMLY b��b r  )2cdc n  )0efe 2 .0��
�� 
cparf o  ).���� 0 	multihtml 	multiHTMLd o      ���� 0 
parasource 
paraSource��  ��  ��  E ghg l 77��������  ��  ��  h iji l 77��kl��  k #  Test for / strip out charset   l �mm :   T e s t   f o r   /   s t r i p   o u t   c h a r s e tj non Z  7dpq����p E  7?rsr n  7;tut 4  8;��v
�� 
cobjv m  9:���� u o  78���� 0 
parasource 
paraSources m  ;>ww �xx  c h a r s e tq k  B`yy z{z r  BH|}| l BF~����~ n  BF� 4  CF���
�� 
cobj� m  DE���� � o  BC���� 0 
parasource 
paraSource��  ��  } o      ���� 0 myheaderlines myHeaderlines{ ��� r  IV��� n IP��� I  JP������� 0 stripheader stripHeader� ��� o  JK���� 0 
parasource 
paraSource� ���� o  KL���� 0 myheaderlines myHeaderlines��  ��  �  f  IJ� o      ���� 0 	multihtml 	multiHTML� ���� r  W`��� n  W^��� 2 \^��
�� 
cpar� o  W\���� 0 	multihtml 	multiHTML� o      ���� 0 
parasource 
paraSource��  ��  ��  o ��� l ee��������  ��  ��  � ��� l ee������  �   Clean content   � ���    C l e a n   c o n t e n t� ��� r  ej��� o  ef���� 0 theboundary theBoundary� n     ��� 1  gi�
� 
txdl� 1  fg�~
�~ 
ascr� ��� r  kz��� n  kt��� 2 pt�}
�} 
citm� o  kp�|�| 0 	multihtml 	multiHTML� o      �{�{  0 thesourceitems theSourceItems� ��� r  {���� m  {~�� ���  � n     ��� 1  ��z
�z 
txdl� 1  ~�y
�y 
ascr� ��� r  ����� c  ����� o  ���x�x  0 thesourceitems theSourceItems� m  ���w
�w 
ctxt� o      �v�v 0 
theencoded 
theEncoded� ��� l ���u�t�s�u  �t  �s  � ��� r  ����� m  ���� ���  %� n     ��� 1  ���r
�r 
txdl� 1  ���q
�q 
ascr� ��� r  ����� n  ����� 2 ���p
�p 
citm� o  ���o�o 0 
theencoded 
theEncoded� o      �n�n  0 thesourceitems theSourceItems� ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  3 7 ;� m  ���m
�m 
TEXT� n     ��� 1  ���l
�l 
txdl� 1  ���k
�k 
ascr� ��� r  ����� c  ����� o  ���j�j  0 thesourceitems theSourceItems� m  ���i
�i 
ctxt� o      �h�h 0 
theencoded 
theEncoded� ��� l ���g�f�e�g  �f  �e  � ��� r  ����� m  ���� ���  =� n     ��� 1  ���d
�d 
txdl� 1  ���c
�c 
ascr� ��� r  ����� n  ����� 2 ���b
�b 
citm� o  ���a�a 0 
theencoded 
theEncoded� o      �`�`  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  %� n     ��� 1  ���_
�_ 
txdl� 1  ���^
�^ 
ascr� ��� r  ����� c  ����� o  ���]�]  0 thesourceitems theSourceItems� m  ���\
�\ 
ctxt� o      �[�[ 0 
theencoded 
theEncoded� ��� l ���Z�Y�X�Z  �Y  �X  � ��� r  ����� m  ���� ���  % "� n     ��� 1  ���W
�W 
txdl� 1  ���V
�V 
ascr� ��� r  ��   n  �� 2 ���U
�U 
citm o  ���T�T 0 
theencoded 
theEncoded o      �S�S  0 thesourceitems theSourceItems�  r  �  m  �� �		  = " n     

 1  ���R
�R 
txdl 1  ���Q
�Q 
ascr  r   c  
 o  �P�P  0 thesourceitems theSourceItems m  	�O
�O 
ctxt o      �N�N 0 
theencoded 
theEncoded  l �M�L�K�M  �L  �K    r   b   m   �  % l �J�I I �H�G
�H .sysontocTEXT       shor m  �F�F �G  �J  �I   n      1  �E
�E 
txdl 1  �D
�D 
ascr  !  r  ("#" n  "$%$ 2 "�C
�C 
citm% o  �B�B 0 
theencoded 
theEncoded# o      �A�A  0 thesourceitems theSourceItems! &'& r  )0()( m  ),** �++  ) n     ,-, 1  -/�@
�@ 
txdl- 1  ,-�?
�? 
ascr' ./. r  1<010 c  1:232 o  16�>�>  0 thesourceitems theSourceItems3 m  69�=
�= 
ctxt1 o      �<�< 0 
theencoded 
theEncoded/ 454 l ==�;�:�9�;  �:  �9  5 676 r  =D898 m  =@:: �;;  % %9 n     <=< 1  AC�8
�8 
txdl= 1  @A�7
�7 
ascr7 >?> r  EP@A@ n  EJBCB 2 FJ�6
�6 
citmC o  EF�5�5 0 
theencoded 
theEncodedA o      �4�4  0 thesourceitems theSourceItems? DED r  QXFGF m  QTHH �II  %G n     JKJ 1  UW�3
�3 
txdlK 1  TU�2
�2 
ascrE LML r  YdNON c  YbPQP o  Y^�1�1  0 thesourceitems theSourceItemsQ m  ^a�0
�0 
ctxtO o      �/�/ 0 
theencoded 
theEncodedM RSR l ee�.�-�,�.  �-  �,  S TUT r  etVWV b  epXYX m  ehZZ �[[  %Y l ho\�+�*\ I ho�)]�(
�) .sysontocTEXT       shor] m  hk�'�' 
�(  �+  �*  W n     ^_^ 1  qs�&
�& 
txdl_ 1  pq�%
�% 
ascrU `a` r  u�bcb n  uzded 2 vz�$
�$ 
citme o  uv�#�# 0 
theencoded 
theEncodedc o      �"�"  0 thesourceitems theSourceItemsa fgf r  ��hih m  ��jj �kk  i n     lml 1  ���!
�! 
txdlm 1  ��� 
�  
ascrg non r  ��pqp c  ��rsr o  ����  0 thesourceitems theSourceItemss m  ���
� 
ctxtq o      �� 0 
theencoded 
theEncodedo tut l ������  �  �  u vwv r  ��xyx m  ��zz �{{  % 0 Ay n     |}| 1  ���
� 
txdl} 1  ���
� 
ascrw ~~ r  ����� n  ����� 2 ���
� 
citm� o  ���� 0 
theencoded 
theEncoded� o      ��  0 thesourceitems theSourceItems ��� r  ����� m  ���� ���  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� c  ����� o  ����  0 thesourceitems theSourceItems� m  ���
� 
ctxt� o      �� 0 
theencoded 
theEncoded� ��� l ������  �  �  � ��� r  ����� m  ���� ���  % 0 9� n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� n  ����� 2 ���

�
 
citm� o  ���	�	 0 
theencoded 
theEncoded� o      ��  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� c  ����� o  ����  0 thesourceitems theSourceItems� m  ���
� 
ctxt� o      �� 0 
theencoded 
theEncoded� ��� l ����� �  �  �   � ��� r  ����� m  ���� ���  % C 2 % A 0� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  � ��� m  ���� ���  & n b s p ;� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ��� c  
��� o  ����  0 thesourceitems theSourceItems� m  	��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ��������  ��  ��  � ��� r  ��� m  �� ���  % 2 0� n     ��� 1  ��
�� 
txdl� 1  ��
�� 
ascr� ��� r   ��� n  ��� 2 ��
�� 
citm� o  ���� 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  !(��� m  !$�� ���   � n     ��� 1  %'��
�� 
txdl� 1  $%��
�� 
ascr� ��� r  )4��� c  )2��� o  ).����  0 thesourceitems theSourceItems� m  .1��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l 55��������  ��  ��  � ��� r  5@��� l 5<������ I 5<�����
�� .sysontocTEXT       shor� m  58���� 
��  ��  ��  � n     ��� 1  =?��
�� 
txdl� 1  <=��
�� 
ascr� ��� r  AL��� n  AF��� 2 BF��
�� 
citm� o  AB���� 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  MT��� m  MP   �  � n      1  QS��
�� 
txdl 1  PQ��
�� 
ascr�  r  U` c  U^	 o  UZ����  0 thesourceitems theSourceItems	 m  Z]��
�� 
ctxt o      ���� 0 
theencoded 
theEncoded 

 l aa��������  ��  ��    r  ah m  ad �  = n      1  eg��
�� 
txdl 1  de��
�� 
ascr  r  it n  in 2 jn��
�� 
citm o  ij���� 0 
theencoded 
theEncoded o      ����  0 thesourceitems theSourceItems  r  u� c  u~ b  u| !  m  ux"" �##  & #! m  x{$$ �%%  6 1 ; m  |}��
�� 
TEXT n     &'& 1  ���
�� 
txdl' 1  ~��
�� 
ascr ()( r  ��*+* c  ��,-, o  ������  0 thesourceitems theSourceItems- m  ����
�� 
ctxt+ o      ���� 0 
theencoded 
theEncoded) ./. l ����������  ��  ��  / 010 r  ��232 m  ��44 �55  $3 n     676 1  ����
�� 
txdl7 1  ����
�� 
ascr1 898 r  ��:;: n  ��<=< 2 ����
�� 
citm= o  ������ 0 
theencoded 
theEncoded; o      ����  0 thesourceitems theSourceItems9 >?> r  ��@A@ c  ��BCB b  ��DED m  ��FF �GG  & #E m  ��HH �II  3 6 ;C m  ����
�� 
TEXTA n     JKJ 1  ����
�� 
txdlK 1  ����
�� 
ascr? LML r  ��NON c  ��PQP o  ������  0 thesourceitems theSourceItemsQ m  ����
�� 
ctxtO o      ���� 0 
theencoded 
theEncodedM RSR l ����������  ��  ��  S TUT r  ��VWV m  ��XX �YY  'W n     Z[Z 1  ����
�� 
txdl[ 1  ����
�� 
ascrU \]\ r  ��^_^ n  ��`a` 2 ����
�� 
citma o  ������ 0 
theencoded 
theEncoded_ o      ����  0 thesourceitems theSourceItems] bcb r  ��ded m  ��ff �gg  & a p o s ;e n     hih 1  ����
�� 
txdli 1  ����
�� 
ascrc jkj r  ��lml c  ��non o  ������  0 thesourceitems theSourceItemso m  ����
�� 
ctxtm o      ���� 0 
theencoded 
theEncodedk pqp l ����������  ��  ��  q rsr r  ��tut m  ��vv �ww  "u n     xyx 1  ����
�� 
txdly 1  ����
�� 
ascrs z{z r  ��|}| n  ��~~ 2 ����
�� 
citm o  ������ 0 
theencoded 
theEncoded} o      ����  0 thesourceitems theSourceItems{ ��� r  � ��� m  ���� ���  \ "� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ��� c  
��� o  ����  0 thesourceitems theSourceItems� m  	��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ��������  ��  ��  � ��� r  ��� o  ���� 0 	olddelims 	oldDelims� n     ��� 1  ��
�� 
txdl� 1  ��
�� 
ascr� ��� l ��������  ��  ��  � ��� r  !��� n ��� I  �������  0 extractbetween extractBetween� ��� o  ���� 0 
theencoded 
theEncoded� ��� m  �� ���  < / h e a d >� ���� m  �� ���  < / h t m l >��  ��  �  f  � o      ���� 0 trimhtml trimHTML� ��� l ""��������  ��  ��  � ��� r  "%��� o  "#���� 0 	mycontent 	myContent� o      ���� 0 thehtml theHTML� ��� l &&��������  ��  ��  � ��� Q  &����� k  )��� ��� r  )0��� m  )*��
�� boovfals� o      ����  0 decode_success decode_Success� ��� l 11��������  ��  ��  � ��� l 11������  �   UTF-8 conversion   � ��� "   U T F - 8   c o n v e r s i o n� ��� r  1D��� I 1B�����
�� .sysoexecTEXT���     TEXT� b  1>��� b  1:��� m  14�� ��� 
 e c h o  � n  49��� 1  59��
�� 
strq� o  45���� 0 trimhtml trimHTML� m  :=�� ��� $   |   i c o n v   - t   U T F - 8  ��  � o      ��  0 newencodedtext NewEncodedText� ��� r  EL��� n  EJ��� 1  FJ�~
�~ 
strq� o  EF�}�}  0 newencodedtext NewEncodedText� o      �|�| 0 the_utf8text the_UTF8Text� ��� l MM�{�z�y�{  �z  �y  � ��� l MM�x���x  �   URL decode conversion   � ��� ,   U R L   d e c o d e   c o n v e r s i o n� ��� r  M\��� c  MZ��� b  MV��� b  MR��� m  MP�� ��� . p h p   - r   " e c h o   u r l d e c o d e (� o  PQ�w�w 0 the_utf8text the_UTF8Text� m  RU�� ���  ) ; "� m  VY�v
�v 
ctxt� o      �u�u "0 thedecodescript theDecodeScript� ��� r  ]d��� I ]b�t��s
�t .sysoexecTEXT���     TEXT� o  ]^�r�r "0 thedecodescript theDecodeScript�s  � o      �q�q 0 
thedecoded 
theDecoded� ��� l ee�p�o�n�p  �o  �n  � ��� l ee�m���m  � 2 , Fix for apostrophe / percent / equal issues   � ��� X   F i x   f o r   a p o s t r o p h e   /   p e r c e n t   /   e q u a l   i s s u e s� ��� r  el��� m  eh�� ���  & a p o s ;� n     ��� 1  ik�l
�l 
txdl� 1  hi�k
�k 
ascr� ��� r  mx   n  mr 2 nr�j
�j 
citm o  mn�i�i 0 
thedecoded 
theDecoded o      �h�h  0 thesourceitems theSourceItems�  r  y� m  y| �		  ' n     

 1  }�g
�g 
txdl 1  |}�f
�f 
ascr  r  �� c  �� o  ���e�e  0 thesourceitems theSourceItems m  ���d
�d 
ctxt o      �c�c 0 
thedecoded 
theDecoded  l ���b�a�`�b  �a  �`    r  �� c  �� b  �� m  �� �  & # m  �� �  3 7 ; m  ���_
�_ 
TEXT n      !  1  ���^
�^ 
txdl! 1  ���]
�] 
ascr "#" r  ��$%$ n  ��&'& 2 ���\
�\ 
citm' o  ���[�[ 0 
thedecoded 
theDecoded% o      �Z�Z  0 thesourceitems theSourceItems# ()( r  ��*+* m  ��,, �--  %+ n     ./. 1  ���Y
�Y 
txdl/ 1  ���X
�X 
ascr) 010 r  ��232 c  ��454 o  ���W�W  0 thesourceitems theSourceItems5 m  ���V
�V 
ctxt3 o      �U�U 0 
thedecoded 
theDecoded1 676 l ���T�S�R�T  �S  �R  7 898 r  ��:;: c  ��<=< b  ��>?> m  ��@@ �AA  & #? m  ��BB �CC  6 1 ;= m  ���Q
�Q 
TEXT; n     DED 1  ���P
�P 
txdlE 1  ���O
�O 
ascr9 FGF r  ��HIH n  ��JKJ 2 ���N
�N 
citmK o  ���M�M 0 
thedecoded 
theDecodedI o      �L�L  0 thesourceitems theSourceItemsG LML r  ��NON m  ��PP �QQ  =O n     RSR 1  ���K
�K 
txdlS 1  ���J
�J 
ascrM TUT r  ��VWV c  ��XYX o  ���I�I  0 thesourceitems theSourceItemsY m  ���H
�H 
ctxtW o      �G�G 0 
thedecoded 
theDecodedU Z[Z l ���F�E�D�F  �E  �D  [ \]\ l ���C^_�C  ^  RETURN THE VALUE   _ �``   R E T U R N   T H E   V A L U E] aba r  ��cdc o  ���B�B 0 
thedecoded 
theDecodedd o      �A�A 0 	finalhtml 	finalHTMLb efe r  ��ghg m  ���@
�@ boovtrueh o      �?�?  0 decode_success decode_Successf i�>i L  ��jj o  ���=�= 0 	finalhtml 	finalHTML�>  � R      �<�;�:
�< .ascrerr ****      � ****�;  �:  ��  � k�9k l 		�8�7�6�8  �7  �6  �9  = lml l     �5�4�3�5  �4  �3  m non l      �2pq�2  p t n 
======================================
// NOTIFICATIONS SUBROUTINES
=======================================
   q �rr �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   N O T I F I C A T I O N S   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
o sts l     �1�0�/�1  �0  �/  t uvu l     �.wx�.  w &   Check for Growl and initialize    x �yy @   C h e c k   f o r   G r o w l   a n d   i n i t i a l i z e  v z{z i   � �|}| I      �-�,�+�- 0 growl_check Growl_Check�,  �+  } Z     ?~�*�)~ I     �(��'�( 0 appisrunning appIsRunning� ��&� m    �� ��� 
 G r o w l�&  �'   k   	 ;�� ��� r   	 ��� m   	 
�%
�% boovtrue� o      �$�$ 0 growl_running growl_Running� ��#� O    ;��� k    :�� ��� r    ��� J    �� ��� m    �� ��� & I m p o r t   N o t i f i c a t i o n� ��� m    �� ��� ( S u c c e s s   N o t i f i c a t i o n� ��"� m    �� ��� ( F a i l u r e   N o t i f i c a t i o n�"  � o      �!�! .0 allnotificationsfiles allNotificationsFiles� ��� r    $��� J    "�� ��� m    �� ��� & I m p o r t   N o t i f i c a t i o n� ��� m    �� ��� ( S u c c e s s   N o t i f i c a t i o n� �� � m     �� ��� ( F a i l u r e   N o t i f i c a t i o n�   � o      �� 60 enablednotificationsfiles enabledNotificationsFiles� ��� I  % :���
� .registernull��� ��� null�  � ���
� 
appl� l 	 ' ,���� o   ' ,�� *0 notificationappname notificationAppName�  �  � ���
� 
anot� l 
 - .���� o   - .�� .0 allnotificationsfiles allNotificationsFiles�  �  � ���
� 
dnot� l 
 / 0���� o   / 0�� 60 enablednotificationsfiles enabledNotificationsFiles�  �  � ���
� 
iapp� o   1 6�� $0 notificationicon notificationIcon�  �  � m    ���                                                                                  GRRR  alis    0  OS X                       ��V�H+     k	Growl.app                                                       X���E�        ����  	                Applications    ��H�      ��7�       k  OS X:Applications: Growl.app   	 G r o w l . a p p  
  O S   X  Applications/Growl.app  / ��  �#  �*  �)  { ��� l     ���
�  �  �
  � ��� l     �	���	  � 2 , Check for presence of terminal-notifier.app   � ��� X   C h e c k   f o r   p r e s e n c e   o f   t e r m i n a l - n o t i f i e r . a p p� ��� i   � ���� I      ���� 00 osxnotifications_check osxNotifications_Check�  �  � O     +��� Z    *����� I   ���
� .coredoexnull���     ****� 4    ��
� 
file� o    �� 0 terminal_notifier_path  �  � k    �� ��� r    ��� m    � 
�  boovtrue� o      ���� 80 osxnotifications_available osxNotifications_Available� ���� L    �� m    ��
�� boovtrue��  �  � k     *�� ��� r     '��� m     !��
�� boovfals� o      ���� 80 osxnotifications_available osxNotifications_Available� ���� L   ( *�� m   ( )��
�� boovfals��  � m     ���                                                                                  sevs  alis    z  OS X                       ��V�H+     NSystem Events.app                                               5��^Q�        ����  	                CoreServices    ��H�      �^5�       N   H   G  5OS X:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  O S   X  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 1 + Annouce the count of total items to export   � ��� V   A n n o u c e   t h e   c o u n t   o f   t o t a l   i t e m s   t o   e x p o r t� ��� i   � ���� I      ������� ,0 process_notification process_Notification� ��� o      ���� 0 itemnum itemNum� ���� o      ���� 0 attnum attNum��  ��  � k     }�� ��� r     ��� m     �� ���  � o      ���� 0 	attplural 	attPlural� ��� Z    ������ =    ��� o    ���� 0 attnum attNum� m    ����  � r   
 ��� m   
 �� ���  N o� o      ���� 0 attnum attNum� ��� ?    ��� o    ���� 0 attnum attNum� m    ���� �  ��  r     m     �  s o      ���� 0 	attplural 	attPlural��  ��  �  l   ��������  ��  ��    r    #	
	 c    ! l   ���� o    ���� 0 itemnum itemNum��  ��   m     ��
�� 
nmbr
 o      ���� 0 plural_test Plural_Test  Z   $ {�� ?  $ ' o   $ %���� 0 plural_test Plural_Test m   % &����  k   * O  I   * M������ 0 notification    m   + , � & I m p o r t   N o t i f i c a t i o n  m   , - �   4 I m p o r t   T o   E v e r n o t e   S t a r t e d !"! b   - :#$# b   - 8%&% b   - 6'(' b   - 4)*) b   - 2+,+ b   - 0-.- m   - .// �00  N o w   P r o c e s s i n g  . o   . /���� 0 itemnum itemNum, m   0 111 �22    I t e m s   w i t h  * o   2 3���� 0 attnum attNum( m   4 533 �44    a t t a c h m e n t& o   6 7���� 0 	attplural 	attPlural$ m   8 955 �66  ." 787 o   : ?���� *0 notificationappname notificationAppName8 9:9 o   ? D���� (0 notificationaction notificationAction: ;��; o   D I���� $0 notificationicon notificationIcon��  ��   <��< l  N N��������  ��  ��  ��  ��   k   R {== >?> I   R y��@���� 0 notification  @ ABA m   S TCC �DD & I m p o r t   N o t i f i c a t i o nB EFE m   T UGG �HH 4 I m p o r t   T o   E v e r n o t e   S t a r t e dF IJI b   U fKLK b   U bMNM b   U `OPO b   U \QRQ b   U ZSTS b   U XUVU m   U VWW �XX  N o w   P r o c e s s i n g  V o   V W���� 0 itemnum itemNumT m   X YYY �ZZ    I t e m   W i t h  R o   Z [���� 0 attnum attNumP m   \ _[[ �\\    A t t a c h m e n tN o   ` a���� 0 	attplural 	attPluralL m   b e]] �^^  .J _`_ o   f k���� *0 notificationappname notificationAppName` aba o   k p���� (0 notificationaction notificationActionb c��c o   p u���� $0 notificationicon notificationIcon��  ��  ? d��d l  z z��������  ��  ��  ��   e��e l  | |��������  ��  ��  ��  � fgf l     ��������  ��  ��  g hih l     ��jk��  j   Results notification   k �ll *   R e s u l t s   n o t i f i c a t i o ni mnm i   � opo I      ��q���� 00 processed_notification processed_Notificationq rsr o      ���� 0 successcount successCounts t��t o      ���� 0 errnum errNum��  ��  p k     �uu vwv l     ��������  ��  ��  w xyx l     ��z{��  z , & Notification failure : user canceled	   { �|| L   N o t i f i c a t i o n   f a i l u r e   :   u s e r   c a n c e l e d 	y }~} Z     !����� =    ��� o     ���� 0 errnum errNum� m    ������� I    ������� 0 notification  � ��� m    �� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m    	�� ���  U s e r   C a n c e l l e d� ��� m   	 
�� ��� " F a i l e d   t o   e x p o r t !� ��� o   
 ���� *0 notificationappname notificationAppName� ��� o    ���� (0 notificationaction notificationAction� ���� o    ���� $0 notificationicon notificationIcon��  ��  ��  ��  ~ ��� l  " "��������  ��  ��  � ��� r   " '��� c   " %��� l  " #������ o   " #���� 0 successcount successCount��  ��  � m   # $��
�� 
nmbr� o      ���� 0 plural_test Plural_Test� ��� l  ( (��������  ��  ��  � ��� l  ( (������  � 8 2 Notification failure : no items selected in Mail	   � ��� d   N o t i f i c a t i o n   f a i l u r e   :   n o   i t e m s   s e l e c t e d   i n   M a i l 	� ��� Z   ( ������� =  ( +��� o   ( )���� 0 plural_test Plural_Test� m   ) *������� k   . G�� ��� I   . E������� 0 notification  � ��� m   / 0�� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   0 1�� ���  I m p o r t   F a i l u r e� ��� m   1 2�� ��� @ N o   I t e m s   S e l e c t e d   I n   A p p l e   M a i l !� ��� o   2 7���� *0 notificationappname notificationAppName� ��� o   7 <���� (0 notificationaction notificationAction� ���� o   < A���� $0 notificationicon notificationIcon��  ��  � ��� l  F F��������  ��  ��  � ���� l  F F������  � : 4 Notification failure : no items exported from Mail	   � ��� h   N o t i f i c a t i o n   f a i l u r e   :   n o   i t e m s   e x p o r t e d   f r o m   M a i l 	��  � ��� =  J M��� o   J K���� 0 plural_test Plural_Test� m   K L����  � ��� k   P i�� ��� I   P g������� 0 notification  � ��� m   Q R�� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   R S�� ���  I m p o r t   F a i l u r e� ��� m   S T�� ��� 8 N o   I t e m s   E x p o r t e d   F r o m   M a i l !� ��� o   T Y���� *0 notificationappname notificationAppName� ��� o   Y ^���� (0 notificationaction notificationAction� ���� o   ^ c���� $0 notificationicon notificationIcon��  ��  � ��� l  h h��������  ��  ��  � ���� l  h h������  �   Notification success   � ��� *   N o t i f i c a t i o n   s u c c e s s��  � ��� =  l o��� o   l m�� 0 plural_test Plural_Test� m   m n�~�~ � ��� k   r ��� ��� I   r ��}��|�} 0 notification  � ��� m   s t�� ��� ( S u c c e s s   N o t i f i c a t i o n� ��� m   t u�� ���  I m p o r t   S u c c e s s� ��� b   u ���� b   u ���� b   u �   b   u | m   u v � , S u c c e s s f u l l y   E x p o r t e d   o   v {�{�{ 0 itemnum itemNum m   |  �    I t e m   t o   t h e  � o   � ��z�z 0 
evnotebook 
EVnotebook� m   � � �		 *   N o t e b o o k   i n   E v e r n o t e� 

 o   � ��y�y *0 notificationappname notificationAppName  o   � ��x�x (0 notificationaction notificationAction �w o   � ��v�v $0 notificationicon notificationIcon�w  �|  �  l  � ��u�t�s�u  �t  �s   �r l  � ��q�q     Notification success    � *   N o t i f i c a t i o n   s u c c e s s�r  �  ?  � � o   � ��p�p 0 plural_test Plural_Test m   � ��o�o  �n I   � ��m�l�m 0 notification    m   � � � ( S u c c e s s   N o t i f i c a t i o n   m   � �!! �""  I m p o r t   S u c c e s s  #$# b   � �%&% b   � �'(' b   � �)*) b   � �+,+ m   � �-- �.. , S u c c e s s f u l l y   E x p o r t e d  , o   � ��k�k 0 itemnum itemNum* m   � �// �00    I t e m s   t o   t h e  ( o   � ��j�j 0 
evnotebook 
EVnotebook& m   � �11 �22 *   N o t e b o o k   i n   E v e r n o t e$ 343 o   � ��i�i *0 notificationappname notificationAppName4 565 o   � ��h�h (0 notificationaction notificationAction6 7�g7 o   � ��f�f $0 notificationicon notificationIcon�g  �l  �n  ��  � 898 r   � �:;: m   � �<< �==  0; o      �e�e 0 itemnum itemNum9 >�d> l  � ��c�b�a�c  �b  �a  �d  n ?@? l     �`�_�^�`  �_  �^  @ ABA l     �]�\�[�]  �\  �[  B CDC l     �ZEF�Z  E   Trigger OSX notification   F �GG 2   T r i g g e r   O S X   n o t i f i c a t i o nD HIH i  JKJ I      �YL�X�Y 0 terminal_notification  L MNM o      �W�W &0 notificationtitle notificationTitleN OPO o      �V�V *0 notificationmessage notificationMessageP Q�UQ o      �T�T (0 notoficationaction notoficationAction�U  �X  K Z     7RS�S�RR =    TUT I     �Q�P�O�Q 00 osxnotifications_check osxNotifications_Check�P  �O  U m    �N
�N boovtrueS k   
 3VV WXW Z   
 YZ�M[Y >  
 \]\ o   
 �L�L (0 notoficationaction notoficationAction] m    ^^ �__  Z r    `a` b    bcb b    ded m    ff �gg    - a c t i v a t e   'e o    �K�K (0 notoficationaction notoficationActionc m    hh �ii  'a o      �J�J 
0 action  �M  [ r    jkj m    ll �mm  k o      �I�I 
0 action  X n�Hn I   3�Go�F
�G .sysoexecTEXT���     TEXTo b    /pqp b    -rsr b    +tut b    )vwv b    'xyx b    %z{z o    #�E�E 0 terminal_notifier_path  { m   # $|| �}}    - t i t l e   'y o   % &�D�D &0 notificationtitle notificationTitlew m   ' (~~ �  '   - m e s s a g e   'u o   ) *�C�C *0 notificationmessage notificationMessages m   + ,�� ���  'q o   - .�B�B 
0 action  �F  �H  �S  �R  I ��� l     �A�@�?�A  �@  �?  � ��� l     �>�=�<�>  �=  �<  � ��� l     �;���;  � #  Global notification function   � ��� :   G l o b a l   n o t i f i c a t i o n   f u n c t i o n� ��:� i  ��� I      �9��8�9 0 notification  � ��� o      �7�7 0 nname nName� ��� o      �6�6 0 ntitle nTitle� ��� o      �5�5 0 nmessage nMessage� ��� o      �4�4 0 nappname nAppName� ��� o      �3�3 0 naction nAction� ��2� o      �1�1 0 nicon nIcon�2  �8  � k     I�� ��� l     �0�/�.�0  �/  �.  � ��� Z     G����-� =    ��� o     �,�, 0 notifications  � m    �� ��� 
 G R O W L� k   
 .�� ��� Z   
 ,���+�*� =  
 ��� o   
 �)�) 0 growl_running growl_Running� m    �(
�( boovtrue� O    (��� I   '�'�&�
�' .notifygrnull��� ��� null�&  � �%��
�% 
name� o    �$�$ 0 nname nName� �#��
�# 
titl� o    �"�" 0 ntitle nTitle� �!��
�! 
desc� o    � �  0 nmessage nMessage� ���
� 
appl� o     !�� 0 nappname nAppName� ���
� 
iapp� o   " #�� 0 nicon nIcon�  � m    ���                                                                                  GRRR  alis    0  OS X                       ��V�H+     k	Growl.app                                                       X���E�        ����  	                Applications    ��H�      ��7�       k  OS X:Applications: Growl.app   	 G r o w l . a p p  
  O S   X  Applications/Growl.app  / ��  �+  �*  � ��� l  - -����  �  �  �  � ��� =  1 8��� o   1 6�� 0 notifications  � m   6 7�� ���  O S X� ��� I   ; C���� 0 terminal_notification  � ��� o   < =�� 0 ntitle nTitle� ��� o   = >�� 0 nmessage nMessage� ��� o   > ?�� 0 naction nAction�  �  �  �-  � ��� l  H H����  �  �  �  �:       <�
�   ; L X d p�	 � � �� � � � � �� �� � � � �� � �� � � � �����������������������������
  � :�������� �����������������������������������������������������������������������������������������������������  0 tagging_switch tagging_Switch� 0 
evnotebook 
EVnotebook� 0 
defaulttag 
defaultTag� 0 	archiving  � 0 flagging  � 0 notifications  � 0 successcount successCount�  0 growl_running growl_Running�� 80 osxnotifications_available osxNotifications_Available�� 0 mytitle myTitle�� 0 themessages theMessages�� 0 thismessage thisMessage�� 0 itemnum itemNum�� 0 attnum attNum�� 0 errnum errNum�� 0 usertag userTag�� 0 evtag EVTag�� 0 	multihtml 	multiHTML��  0 thesourceitems theSourceItems�� 0 mysource mySource��  0 decode_success decode_Success�� 0 	finalhtml 	finalHTML�� 0 	myheaders 	myHeaders�� *0 mysource_paragraphs mysource_Paragraphs�� 0 
base64_raw 
base64_Raw�� 0 archive_mailbox_label  �� 0 archive_flag  �� 0 terminal_notifier_path  �� *0 notificationappname notificationAppName�� (0 notificationaction notificationAction�� $0 notificationicon notificationIcon�� 0 appisrunning appIsRunning�� 0 
item_check 
item_Check�� 0 
item_count 
item_Count��  0 tagging_dialog tagging_Dialog�� $0 default_notebook default_Notebook�� 0 tag_list Tag_List�� 0 	tag_check 	Tag_Check�� 0 notebook_list Notebook_List��  0 extractbetween extractBetween�� 0 simple_sort  �� 0 mail_process mail_Process�� &0 mail_post_process mail_post_Process�� 0 make_evernote make_Evernote�� 0 f_exists  �� 0 attachment_process  �� 0 trashfolder  �� 0 stripheader stripHeader�� 0 base64_check base64_Check�� 0 base64_decode base64_Decode�� 0 htmlfix htmlFix�� 0 growl_check Growl_Check�� 00 osxnotifications_check osxNotifications_Check�� ,0 process_notification process_Notification�� 00 processed_notification processed_Notification�� 0 terminal_notification  �� 0 notification  
�� .aevtoappnull  �   � ****�	  � ������  ��  � ������  ��  � ������  ��  � ������  ��  � � ��*���������� 0 appisrunning appIsRunning�� ����� �  ���� 0 appname appName��  � ���� 0 appname appName� 4����
�� 
prcs
�� 
pnam�� � 	*�-�,�U� ��?���������� 0 
item_check 
item_Check��  ��  � ���� 0 mypath myPath� ����N������
�� afdrcusr
�� .earsffdralis        afdr
�� 
slct��  ��  �� #�j E�O�  *�,Ec  
W X  hU� ��Y���������� 0 
item_count 
item_Count�� ����� �  ���� 0 themessages theMessages��  � ������ 0 themessages theMessages�� 0 
themessage 
theMessage� s��������
�� .corecnte****       ****
�� 
kocl
�� 
cobj
�� 
attc�� B� >�j Ec  OjEc  O '�[��l kh b  ��,j Ec  [OY��U� �������������  0 tagging_dialog tagging_Dialog��  ��  � ������������ 0 dialogresult  �� 0 	userinput 	userInput�� 0 	buttonsel 	ButtonSel�� 0 	thedelims 	theDelims�� 0 thetags theTags�  ���������������������������������������������
�� 
appr
�� 
dtxt
�� 
btns
�� 
dflt
�� 
cbtn
�� 
disp
�� 
in B
�� .earsffdralis        afdr
�� .sysorpthalis        TEXT�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
bhit�  � ���
� 
errn����  ���� 0 tag_list Tag_List� 0 	tag_check 	Tag_Check� 0 notebook_list Notebook_List�� � L��%���b  ����mv�������a j l a  O_ E�O�a ,E�O�a ,E�Oa kvE�W X  a Ec  O)��l+ E�OjvEc  O)�k+ Ec  O�a   )j+ Ec  Y h� ������� $0 default_notebook default_Notebook�  �  � �� *0 get_defaultnotebook get_defaultNotebook� 8���,���~
� 
EVnb�  
� 
EVnd
� 
cobj
� 
pnam
�~ 
ctxt� 1� -*�-�[�,\Ze81E�Ob  �  ��k/�,�&Ec  Y hU� �}C�|�{���z�} 0 tag_list Tag_List�| �y��y �  �x�w�x 0 	userinput 	userInput�w 0 	thedelims 	theDelims�{  � �v�u�t�s�r�q�p�v 0 	userinput 	userInput�u 0 	thedelims 	theDelims�t 0 	olddelims 	oldDelims�s 0 thelist theList�r 0 adelim aDelim�q 0 newlist newList�p 0 anitem anItem� �o�n�m�l�k�j
�o 
ascr
�n 
txdl
�m 
kocl
�l 
cobj
�k .corecnte****       ****
�j 
citm�z V��,E�O�kvE�O ?�[��l kh ���,FOjvE�O �[��l kh ���-%E�[OY��O�E�[OY��O���,FO�� �i��h�g���f�i 0 	tag_check 	Tag_Check�h �e��e �  �d�d 0 thetags theTags�g  � �c�b�a�`�c 0 thetags theTags�b 0 	finaltags 	finalTags�a 0 thetag theTag�` 0 maketag makeTag� ��_�^�]�\�[�Z�Y�X�W�V�U
�_ 
kocl
�^ 
cobj
�] .corecnte****       ****
�\ 
EVtg
�[ kfrmname
�Z .coredoexnull���     ****
�Y 
prdt
�X 
pnam
�W .corecrel****      � null�V  �U  �f W� PjvE�O H�[��l kh *��0j  " ���ll 	E�O��6FW X 
 hY 	*�/�6F[OY��UO�� �T��S�R���Q�T 0 notebook_list Notebook_List�S  �R  � �P�O�N�M�L�K�J�P "0 listofnotebooks listOfNotebooks�O 0 evnotebooks EVNotebooks�N "0 currentnotebook currentNotebook�M *0 currentnotebookname currentNotebookName�L  0 folders_sorted Folders_sorted�K 0 selnotebook SelNotebook�J 0 	userinput 	userInput� 0�I�H�G�F�E�D�C�B��A�@�?
�>�="�<%�;�:
�I .miscactvnull��� ��� null
�H 
EVnb
�G 
kocl
�F 
cobj
�E .corecnte****       ****
�D 
pnam�C 0 simple_sort  
�B 
appr
�A 
prmp
�@ 
okbt
�? 
cnbt�> 
�= .gtqpchltns    @   @ ns  
�< 
dtxt
�; .sysodlogaskr        TEXT
�: 
ttxt�Q �� |*j OjvE�O*�-E�O �[��l kh ��,E�O��6G[OY��O)�k+ E�O���������a  E�O�f   a a a l a ,E�O�Ec  Y ��k/Ec  U� �9B�8�7� �6�9  0 extractbetween extractBetween�8 �5�5   �4�3�2�4 0 
searchtext 
SearchText�3 0 	starttext 	startText�2 0 endtext endText�7  � �1�0�/�.�-�,�1 0 
searchtext 
SearchText�0 0 	starttext 	startText�/ 0 endtext endText�. 0 tid  �- 0 enditems endItems�,  0 beginningtoend beginningToEnd  �+�*�)�(
�+ 
ascr
�* 
txdl
�) 
citm
�( 
ctxt�6 -��,E�O���,FO��i/�-E�O���,FO��k/�-E�O���,FO�� �'��&�%�$�' 0 simple_sort  �& �#�#   �"�" 0 my_list  �%   �!� ������! 0 my_list  �  0 
index_list  � 0 sorted_list  � 0 low_item  � 0 i  � 0 	this_item  � 0 low_item_index   �����
� 
cobj
� 
nmbr
� 
ctxt�$ vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�� ������ 0 mail_process mail_Process� ��   �� 0 themessages theMessages�   ��������
�	��������� ����������� 0 themessages theMessages� 0 thismessage thisMessage� 0 	mycontent 	myContent� 0 	replyaddr 	ReplyAddr� 0 	emaildate 	EmailDate� 0 allrecipients allRecipients� 0 torecipients toRecipients�
 0 allrecipient allRecipient�	 0 toname toName� 0 toemail toEmail� 0 
tocombined 
toCombined� 0 therecipient theRecipient� 0 ex  � 0 msglink MsgLink� 0 theboundary theBoundary� "0 themessagestart theMessagestart� 0 themessageend theMessageEnd�  0 
parasource 
paraSource�� 0 myheaderlines myHeaderlines�� 0 myheaderline myHeaderline�� 0 	cutsource 	cutSource�� 0 evhtml evHTML�� 0 the_template the_Template 7�����������������������a�������������������������������������6AD��rtvxz|�������� $0 default_notebook default_Notebook��  0 tagging_dialog tagging_Dialog
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
subj
�� 
ctnt
�� 
raso
�� 
rpto
�� 
rdrc
�� 
trcp
�� 
pnam
�� 
radd
�� 
spac
�� 
TEXT
�� 
meid��  0 extractbetween extractBetween��  ��  
�� 
ret 
�� 
cpar
�� 
alhe
�� 
ctxt�� 0 stripheader stripHeader�� �� 0 make_evernote make_Evernote�� &0 mail_post_process mail_post_Process�)j+  O�b   �  
)j+ Y hO��[��l kh o��,Ec  	O��,E�O��,Ec  O��,E�O��,E�O��k/�-E�O�E�O ;�[��l kh ��,E�O��,E�O�_ %a %�%a %E�O��%a &E�[OY��Oa E�Oa E�Oa E�O >a E�O��k/�,E�Oa �a ,%a %E�O�a  )�a a m+ E�Y hW X   hO)b  a !a "m+ E�O_ #a $%�%E�Oa %�%_ #%a &%E^ Ob  a '-E^ O�a (,a )&a '-E^ O 8] [��l kh ] a * )] a +a ,m+ Ec  Y h[OY��O)] ] l+ -E^ O] E^ W X   hOa .�%a /%�%a 0%b  	%a 1%�%a 2%�%a 3%E^ O)b  	b  ���b  ��] b  �] b  ] a 4+ 5O)�k+ 6OP[OY�!W X   hU� �������	���� &0 mail_post_process mail_post_Process�� ��
�� 
  ���� 0 themessages theMessages��   �������������� 0 themessages theMessages�� 0 m  �� 0 mb  �� 0 acc  �� 0 archive_mailbox  �� 0 archive  	 <��������������������������$&(������8
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
long
�� 
fidx
�� 
mbxp
�� 
mact
�� .misccurdldt    ��� null
�� 
year
�� 
TEXT��  ��  
�� .sysodisAaleR        TEXT
�� 
insh
�� .coremovenull���     obj �� �� � ��[��l kh b  �  b  �&��,FY hOb  �  k��,E�O��,E�O*j 
�,�&�%b  %E�O ���/E�W X  a �%a %�%a %j OhO �a �l W X  a j OhY hOP[OY�jU� ��K�������� 0 make_evernote make_Evernote�� ����   ��������������� 0 mytitle myTitle� 0 evtag EVTag� 0 	emaildate 	EmailDate� 0 msglink MsgLink� 0 	mycontent 	myContent� 0 mysource mySource� 0 theboundary theBoundary� "0 themessagestart theMessagestart� 0 themessageend theMessageEnd� 0 	myheaders 	myHeaders� 0 thismessage thisMessage� 0 evhtml evHTML� 0 
evnotebook 
EVnotebook� 0 the_template the_Template��   ������������������ 0 mytitle myTitle� 0 evtag EVTag� 0 	emaildate 	EmailDate� 0 msglink MsgLink� 0 	mycontent 	myContent� 0 mysource mySource� 0 theboundary theBoundary� "0 themessagestart theMessagestart� 0 themessageend theMessageEnd� 0 	myheaders 	myHeaders� 0 thismessage thisMessage� 0 evhtml evHTML� 0 
evnotebook 
EVnotebook� 0 the_template the_Template� 0 n  � 0 base64detect base64Detect� 0 basehtml baseHTML )
������������������!�&������	�

�
|����
��
� 
Enhl
� 
Entt
� 
Ennb� 
� .EVRNcrntnull��� ��� null
� 
EV13
� .EVRNassnnull���     ****
� 
EV18
� .EVRNadtnnull���     EVnn
� 
EVdd
� 
EVsu� 0 base64_check base64_Check�  0 extractbetween extractBetween
� 
strq
� .sysoexecTEXT���     TEXT
� 
EV19� 0 htmlfix htmlFix� 0 base64_decode base64_Decode
� 
ctxt
� 
attc� 0 attachment_process  �  �  
� .ascrcmnt****      � ****�������� @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPYG��])�k+ E�O�e  �)��m+ Ec  Ob  a  )b  a �m+ Ec  Y hOb  a  )b  a �m+ Ec  Y hOa b  a ,%a %j E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FY �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY�a U�a )�k+ E�O�e  O)�k+ E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FOPY ��f  �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FY hOPY I�a  @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY hOPY �)�k+ E�O�e  )�k+ Ec  Y +)�a a  m+ Ec  O)b  ��m+ a !&Ec  O*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FOPOa " �a #-jv )��l+ $Y hUOb  kEc  W X % &hUOa 'b  %j (� �
����� 0 f_exists  � ��   �� 0 exportfolder ExportFolder�   ���� 0 exportfolder ExportFolder� 0 mypath myPath� 0 saveloc SaveLoc ��~�}�|�{
��z�y�x�w
��v�u
� afdrcusr
�~ .earsffdralis        afdr
�} 
alis�|  �{  
�z 
kocl
�y 
cfol
�x 
prdt
�w 
pnam�v 
�u .corecrel****      � null� , �j E�O��&O�E�W X  � *�����l� U� �t
��s�r�q�t 0 attachment_process  �s �p�p   �o�n�o 0 thismessage thisMessage�n 0 n  �r   
�m�l�k�j�i�h�g�f�e�d�m 0 thismessage thisMessage�l 0 n  �k 0 exportfolder ExportFolder�j 0 saveloc SaveLoc�i  0 theattachments theAttachments�h 0 attcount attCount�g 0 theattachment theAttachment�f 0 thefilename theFileName�e 0 trash_folder trash_Folder�d 0 success   d
��c�b�a�`
��_�^�]�\�[�Z�Y�X�W�V�U�T1�S�R�Q�P�OI�N�M�L�K�J
�c 
ascr
�b 
txdl
�a afdmdesk
�` .earsffdralis        afdr
�_ 
TEXT�^ 0 f_exists  
�] 
attc
�\ 
kocl
�[ 
cobj
�Z .corecnte****       ****
�Y 
pnam
�X 
kfil
�W 
file
�V .coresavenull���     obj �U  �T  
�S 
EV21
�R .EVRNadtnnull���     EVnn
�Q afdmtrsh
�P 
from
�O fldmfldu
�N 
psxp
�M 
strq
�L 
spac
�K .sysoexecTEXT���     TEXT�J 0 trashfolder  �q �� ����,FO�j �%�&E�O)�k+ E�O��-E�OjE�O }�[��l kh ���,%E�O ��*�/l W X  hOa  � *a *�/l UUOa a a l E�Oa �a ,a ,%_ %�a ,a ,%j OP[OY��O)�k+ E�OPU� �Io�H�G�F�I 0 trashfolder  �H �E�E   �D�D 0 saveloc SaveLoc�G   �C�B�A�@�?�>�=�<�C 0 saveloc SaveLoc�B 0 trashfolderpath  �A 0 srcfolderinfo  �@ 0 srcfoldername  �? 0 counter  �> 0 destfolderpath  �= 0 destfolderalias  �< 0 command   �;�:�9�8�7�6�5�4����3�2��1�0�
�; afdrtrsh
�: .earsffdralis        afdr
�9 
utxt
�8 
alis
�7 .sysonfo4asfe        file
�6 
pnam
�5 
psxp
�4 
strq�3  �2  
�1 
spac
�0 .sysoexecTEXT���     TEXT�F � ��j �&E�O��&j E�O��,E�O��,�,E�OjE�O <hZ�j  ��%�%E�Y ��%�%�%�%E�O 
��&E�W X  O�kE�[OY��O��,�,E�O��%�%�%E�O�j Oa �%E�O�j OeW 	X  f� �/�.�-�,�/ 0 stripheader stripHeader�. �+�+   �*�)�* 0 
parasource 
paraSource�) 0 myheaderlines myHeaderlines�-   �(�'�&�%�$�#�"�!�( 0 
parasource 
paraSource�' 0 myheaderlines myHeaderlines�& 0 lastheaderline  �% 0 n  �$ 0 sourcelength  �#  0 cutsourceitems cutSourceItems�" 0 	olddelims 	oldDelims�! 0 	cutsource 	cutSource 	� 0�L����
�  .corecnte****       ****
� 
cobj
� 
ascr
� 
txdl
� 
ret 
� 
ctxt�, y�E�O�j E�O h�� ��/E�O�kE�[OY��O�j E�O k�kh ��/�  Y h[OY��O�[�\[Z�k\Z�2E�O��,E�O���,FO��&E�O���,FO�OP� ������ 0 base64_check base64_Check� ��   �� 0 mysource mySource�   ��������� 0 mysource mySource� 0 base64detect base64Detect� 0 base64msgstr base64MsgStr� &0 base64contenttype base64ContentType� "0 base64msgoffset base64MsgOffset� *0 base64contentoffset base64ContentOffset� 0 base64offset base64Offset� 0 	theoffset 	theOffset 
�����
�	����
� 
psof
� 
psin�
 
�	 .sysooffslong    ��� null
� 
doub
� 
nmbr� 2���� MfE�O�E�O�E�O*��� E�O*��� E�O���&E�O��&E�O�� �� eE�Y hY hO�� ������ 0 base64_decode base64_Decode� � �    ���� 0 mysource mySource�   �������� 0 mysource mySource�� 0 olddelim oldDelim�� 0 basehtml baseHTML 
���������(��-��
�� 
ascr
�� 
txdl
�� 
citm
�� 
lnfd
�� 
strq
�� .sysoexecTEXT���     TEXT� ^��,E�O���,FO��l/Ec  O��%��,FOb  �l/Ec  O���,FOb  �k/Ec  O���,FO�b  �,%�%j 	E�O�� ��?���� !���� 0 htmlfix htmlFix�� ��"�� "  �������� 0 evhtml evHTML�� 0 theboundary theBoundary�� 0 	mycontent 	myContent��    ���������������������������� 0 evhtml evHTML�� 0 theboundary theBoundary�� 0 	mycontent 	myContent�� 0 	olddelims 	oldDelims�� 0 
parasource 
paraSource�� 0 myheaderlines myHeaderlines�� 0 
theencoded 
theEncoded�� 0 trimhtml trimHTML�� 0 thehtml theHTML��  0 newencodedtext NewEncodedText�� 0 the_utf8text the_UTF8Text�� "0 thedecodescript theDecodeScript�� 0 
thedecoded 
theDecoded! J����������k�����������#Mw���������������*:HZ��jz������� "$4FHXfv������������,@BP����
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
cpar
�� 
cobj�� 0 stripheader stripHeader��  0 extractbetween extractBetween
�� 
citm
�� 
ctxt�� 
�� .sysontocTEXT       shor�� 

�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  ����,E�O��&Ec  Ob  �-E�O��k/� ��k/E�O)��l+ Ec  Y hOb  � )b  ��m+ 
Ec  Y )b  �m+ 
Ec  Ob  �-E�O��k/� #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/�  \��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hO��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hY hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO���,FOb  a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa a %�&��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa a j %��,FO�a -Ec  Oa ��,FOb  a &E�Oa  ��,FO�a -Ec  Oa !��,FOb  a &E�Oa "a #j %��,FO�a -Ec  Oa $��,FOb  a &E�Oa %��,FO�a -Ec  Oa &��,FOb  a &E�Oa '��,FO�a -Ec  Oa (��,FOb  a &E�Oa )��,FO�a -Ec  Oa *��,FOb  a &E�Oa +��,FO�a -Ec  Oa ,��,FOb  a &E�Oa #j ��,FO�a -Ec  Oa -��,FOb  a &E�Oa .��,FO�a -Ec  Oa /a 0%�&��,FOb  a &E�Oa 1��,FO�a -Ec  Oa 2a 3%�&��,FOb  a &E�Oa 4��,FO�a -Ec  Oa 5��,FOb  a &E�Oa 6��,FO�a -Ec  Oa 7��,FOb  a &E�O���,FO)�a 8a 9m+ 
E�O�E�O �fEc  Oa :�a ;,%a <%j =E�O�a ;,E�Oa >�%a ?%a &E�O�j =E�Oa @��,FO�a -Ec  Oa A��,FOb  a &E�Oa Ba C%�&��,FO�a -Ec  Oa D��,FOb  a &E�Oa Ea F%�&��,FO�a -Ec  Oa G��,FOb  a &E�O�Ec  OeEc  Ob  W X H IhOP� ��}����#$���� 0 growl_check Growl_Check��  ��  # ������ .0 allnotificationsfiles allNotificationsFiles�� 60 enablednotificationsfiles enabledNotificationsFiles$ ������������������������ 0 appisrunning appIsRunning
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null�� @*�k+  7eEc  O� '���mvE�O���mvE�O*�b  ���b  � UY h� �������%&���� 00 osxnotifications_check osxNotifications_Check��  ��  %  & ���
� 
file
� .coredoexnull���     ****�� ,� (*�b  /j  eEc  OeY fEc  OfU� ����'(�� ,0 process_notification process_Notification� �)� )  ��� 0 itemnum itemNum� 0 attnum attNum�  ' ����� 0 itemnum itemNum� 0 attnum attNum� 0 	attplural 	attPlural� 0 plural_test Plural_Test( ���/135��CGWY[]
� 
nmbr� � 0 notification  � ~�E�O�j  �E�Y �k �E�Y hO��&E�O�k **���%�%�%�%�%�%b  b  b  �+ OPY +*���%�%�%a %�%a %b  b  b  �+ OPOP� �p��*+�� 00 processed_notification processed_Notification� �,� ,  ��� 0 successcount successCount� 0 errnum errNum�  * ���� 0 successcount successCount� 0 errnum errNum� 0 plural_test Plural_Test+ ���������������!-/1<���� � 0 notification  
� 
nmbr� ��  *���b  b  b  �+ Y hO��&E�O�i  *���b  b  b  �+ OPY ��j  *���b  b  b  �+ OPY s�k  2*���b  %a %b  %a %b  b  b  �+ OPY =�k 6*a a a b  %a %b  %a %b  b  b  �+ Y hOa Ec  OP� �K��-.�� 0 terminal_notification  � �/� /  ���� &0 notificationtitle notificationTitle� *0 notificationmessage notificationMessage� (0 notoficationaction notoficationAction�  - ����� &0 notificationtitle notificationTitle� *0 notificationmessage notificationMessage� (0 notoficationaction notoficationAction� 
0 action  . 	�^fhl|~��� 00 osxnotifications_check osxNotifications_Check
� .sysoexecTEXT���     TEXT� 8*j+  e  .�� �%�%E�Y �E�Ob  �%�%�%�%�%�%j Y h� ����01�� 0 notification  � �2� 2  ������� 0 nname nName� 0 ntitle nTitle� 0 nmessage nMessage� 0 nappname nAppName� 0 naction nAction� 0 nicon nIcon�  0 ������� 0 nname nName� 0 ntitle nTitle� 0 nmessage nMessage� 0 nappname nAppName� 0 naction nAction� 0 nicon nIcon1 �������~�}�|��{
� 
name
� 
titl
� 
desc
� 
appl
�~ 
iapp�} 

�| .notifygrnull��� ��� null�{ 0 terminal_notification  � Jb  �  )b  e  � *������ UY hOPY b  �  *���m+ 
Y hOP� �z3�y�x45�w
�z .aevtoappnull  �   � ****3 k    "66 77 88 99 *�v�v  �y  �x  4 �u�t�u 0 errtext errText�t 0 errnum errNum5 $�s�r<�q�p�o�n�m�l�k:�j����i�h����g��f�e�d
�s 
ascr
�r 
txdl�q 0 growl_check Growl_Check�p 0 
item_check 
item_Check�o 0 
item_count 
item_Count�n ,0 process_notification process_Notification�m 0 mail_process mail_Process�l 00 processed_notification processed_Notification�k 0 errtext errText: �c�b�a
�c 
errn�b 0 errnum errNum�a  �j���i �h 0 notification  
�g 
ret 
�f 
bool
�e 
disp
�d .sysodlogaskr        TEXT�w#�Ec  O�Ec  O���,FO mb  �  
)j+ Y hO)j+ Ob  
jv ,)b  
k+ O)b  b  l+ 	O)b  
k+ 
OPY 	iEc  O)b  b  l+ OPW �X  b  e  b��  $*�a a b  b  b  a + OPY 5*a a a _ %b  	%a %_ %�%b  b  b  a + OPY 1b  f 	 b  f a & a �%_ %�%a jl Y h ascr  ��ޭ