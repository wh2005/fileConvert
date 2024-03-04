 
;  SYNERGY DATA LANGUAGE OUTPUT
;
;  REPOSITORY     : E:\DEV\fileConvert\rps\rpsmain.ism
;                 : E:\DEV\fileConvert\rps\rpstext.ism
;                 : Version 12.3.1
;
;  GENERATED      : 03-MAR-2024, 17:26:11
;                 : Version 12.3.1
;  EXPORT OPTIONS : [ALL] 
 
 
Structure CCCD   DBL ISAM
   Description "Explicit Group 2"
 
Field BFIELD1   Type ALPHA   Size 1
 
Field BARRAYFIELD2A5   Type ALPHA   Size 5   Dimension 2
 
Field BARRAYFIELD2X2D4   Type DECIMAL   Size 6   Dimension 2:2
 
Field BARRAYFIELD2X3X4A1   Type ALPHA   Size 1   Dimension 2:3:4
 
Field BARRAYFIELD4X4X4X4A1   Type ALPHA   Size 1   Dimension 4:4:4:4
 
Group BGROUP1   Type ALPHA
 
   Field BGROUPFIELD1   Type ALPHA   Size 1
 
   Field BGROUPFIELD2   Type DECIMAL   Size 2
 
   Group BGROUP2   Type ALPHA   Size 10
 
      Field BGROUP2FIELD1   Type ALPHA   Size 1
 
      Field BGROUP2FIELD2   Type ALPHA   Size 2
 
   Endgroup
 
Endgroup
 
Structure AAAB   DBL ISAM
   Description "Explicit Group"
 
Field BFIELD1   Type ALPHA   Size 1
 
Field BARRAYFIELD2A5   Type ALPHA   Size 5   Dimension 2   Language Noview
 
Field BARRAYFIELD2X2D4   Type DECIMAL   Size 4   Dimension 2:2   Script Noview
 
Field BARRAYFIELD2X3X4A1   Type ALPHA   Size 1   Dimension 2:3:4
   Report Noview
 
Field BARRAYFIELD4X4X4X4A1   Type ALPHA   Size 1   Dimension 4:4:4:4
   Web Noview
 
Group BGROUP1   Type ALPHA
 
   Field BGROUPFIELD1   Type ALPHA   Size 1
 
   Field BGROUPFIELD2   Type DECIMAL   Size 2
 
   Group BGROUP2   Type ALPHA   Size 10
 
      Field BGROUP2FIELD1   Type ALPHA   Size 1
 
      Field BGROUP2FIELD2   Type ALPHA   Size 2
 
   Endgroup
 
Endgroup
 
Structure AAAA   DBL ISAM
   Description "Structure"
 
Field AFIELD1   Type ALPHA   Size 1
 
Group AEXPLGROUP   Type ALPHA   Size 2
 
   Field AGRP1   Type ALPHA   Size 1
 
   Field AGRP2   Type ALPHA   Size 1
 
Endgroup
 
Group AIMPLGROUP   Reference AAAB   Type ALPHA
 
Structure CCCC   DBL ISAM
   Description "Structure 2"
 
Field AFIELD1   Type ALPHA   Size 1
 
Group AEXPLGROUP   Type ALPHA   Size 4
 
   Field AGRP1   Type ALPHA   Size 2
 
   Field AGRP2   Type ALPHA   Size 2
 
Endgroup
 
Group AIMPLGROUP   Reference CCCD   Type ALPHA
 
File AAAA   DBL ISAM   "DAT:aaaa.ism"
   Description "Test file"
   Assign AAAA
 
File CCCC   DBL ISAM   "DAT:aaaa.ism"
   Description "Test file"
   Assign CCCC
 
