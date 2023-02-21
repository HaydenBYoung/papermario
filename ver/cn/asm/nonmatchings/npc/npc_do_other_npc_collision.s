.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel npc_do_other_npc_collision
/* 13ABC 800386BC 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 13AC0 800386C0 AFB1001C */  sw        $s1, 0x1C($sp)
/* 13AC4 800386C4 0080882D */  daddu     $s1, $a0, $zero
/* 13AC8 800386C8 AFBF0028 */  sw        $ra, 0x28($sp)
/* 13ACC 800386CC AFB30024 */  sw        $s3, 0x24($sp)
/* 13AD0 800386D0 AFB20020 */  sw        $s2, 0x20($sp)
/* 13AD4 800386D4 AFB00018 */  sw        $s0, 0x18($sp)
/* 13AD8 800386D8 F7BE0058 */  sdc1      $f30, 0x58($sp)
/* 13ADC 800386DC F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 13AE0 800386E0 F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 13AE4 800386E4 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 13AE8 800386E8 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 13AEC 800386EC F7B40030 */  sdc1      $f20, 0x30($sp)
/* 13AF0 800386F0 8E230000 */  lw        $v1, 0x0($s1)
/* 13AF4 800386F4 30620100 */  andi      $v0, $v1, 0x100
/* 13AF8 800386F8 14400096 */  bnez      $v0, .LIQUE_80038954
/* 13AFC 800386FC 3C02FDFF */   lui      $v0, (0xFDFFFFFF >> 16)
/* 13B00 80038700 3442FFFF */  ori       $v0, $v0, (0xFDFFFFFF & 0xFFFF)
/* 13B04 80038704 0000902D */  daddu     $s2, $zero, $zero
/* 13B08 80038708 3C130400 */  lui       $s3, (0x4000000 >> 16)
/* 13B0C 8003870C C63E0038 */  lwc1      $f30, 0x38($s1)
/* 13B10 80038710 C626003C */  lwc1      $f6, 0x3C($s1)
/* 13B14 80038714 3C013F00 */  lui       $at, (0x3F000000 >> 16)
/* 13B18 80038718 44811000 */  mtc1      $at, $f2
/* 13B1C 8003871C 00621024 */  and       $v0, $v1, $v0
/* 13B20 80038720 E7A60010 */  swc1      $f6, 0x10($sp)
/* 13B24 80038724 AE220000 */  sw        $v0, 0x0($s1)
/* 13B28 80038728 862200A6 */  lh        $v0, 0xA6($s1)
/* 13B2C 8003872C C63C0040 */  lwc1      $f28, 0x40($s1)
/* 13B30 80038730 44820000 */  mtc1      $v0, $f0
/* 13B34 80038734 00000000 */  nop
/* 13B38 80038738 46800020 */  cvt.s.w   $f0, $f0
/* 13B3C 8003873C 46020002 */  mul.s     $f0, $f0, $f2
/* 13B40 80038740 00000000 */  nop
/* 13B44 80038744 E7A00014 */  swc1      $f0, 0x14($sp)
.LIQUE_80038748:
/* 13B48 80038748 0C00E063 */  jal       get_npc_by_index
/* 13B4C 8003874C 0240202D */   daddu    $a0, $s2, $zero
/* 13B50 80038750 0040802D */  daddu     $s0, $v0, $zero
/* 13B54 80038754 5200007A */  beql      $s0, $zero, .LIQUE_80038940
/* 13B58 80038758 26520001 */   addiu    $s2, $s2, 0x1
/* 13B5C 8003875C 52300078 */  beql      $s1, $s0, .LIQUE_80038940
/* 13B60 80038760 26520001 */   addiu    $s2, $s2, 0x1
/* 13B64 80038764 8E030000 */  lw        $v1, 0x0($s0)
/* 13B68 80038768 50600075 */  beql      $v1, $zero, .LIQUE_80038940
/* 13B6C 8003876C 26520001 */   addiu    $s2, $s2, 0x1
/* 13B70 80038770 3C028000 */  lui       $v0, (0x80000100 >> 16)
/* 13B74 80038774 34420100 */  ori       $v0, $v0, (0x80000100 & 0xFFFF)
/* 13B78 80038778 00621024 */  and       $v0, $v1, $v0
/* 13B7C 8003877C 54400070 */  bnel      $v0, $zero, .LIQUE_80038940
/* 13B80 80038780 26520001 */   addiu    $s2, $s2, 0x1
/* 13B84 80038784 860200A8 */  lh        $v0, 0xA8($s0)
/* 13B88 80038788 C602003C */  lwc1      $f2, 0x3C($s0)
/* 13B8C 8003878C 44820000 */  mtc1      $v0, $f0
/* 13B90 80038790 00000000 */  nop
/* 13B94 80038794 46800020 */  cvt.s.w   $f0, $f0
/* 13B98 80038798 46001000 */  add.s     $f0, $f2, $f0
/* 13B9C 8003879C C7A60010 */  lwc1      $f6, 0x10($sp)
/* 13BA0 800387A0 4606003C */  c.lt.s    $f0, $f6
/* 13BA4 800387A4 00000000 */  nop
/* 13BA8 800387A8 45030065 */  bc1tl     .LIQUE_80038940
/* 13BAC 800387AC 26520001 */   addiu    $s2, $s2, 0x1
/* 13BB0 800387B0 862200A8 */  lh        $v0, 0xA8($s1)
/* 13BB4 800387B4 44820000 */  mtc1      $v0, $f0
/* 13BB8 800387B8 00000000 */  nop
/* 13BBC 800387BC 46800020 */  cvt.s.w   $f0, $f0
/* 13BC0 800387C0 46003000 */  add.s     $f0, $f6, $f0
/* 13BC4 800387C4 4602003C */  c.lt.s    $f0, $f2
/* 13BC8 800387C8 00000000 */  nop
/* 13BCC 800387CC 4503005C */  bc1tl     .LIQUE_80038940
/* 13BD0 800387D0 26520001 */   addiu    $s2, $s2, 0x1
/* 13BD4 800387D4 C6140038 */  lwc1      $f20, 0x38($s0)
/* 13BD8 800387D8 461EA581 */  sub.s     $f22, $f20, $f30
/* 13BDC 800387DC 4616B082 */  mul.s     $f2, $f22, $f22
/* 13BE0 800387E0 00000000 */  nop
/* 13BE4 800387E4 C61A0040 */  lwc1      $f26, 0x40($s0)
/* 13BE8 800387E8 461CD101 */  sub.s     $f4, $f26, $f28
/* 13BEC 800387EC 46042002 */  mul.s     $f0, $f4, $f4
/* 13BF0 800387F0 00000000 */  nop
/* 13BF4 800387F4 860200A6 */  lh        $v0, 0xA6($s0)
/* 13BF8 800387F8 46001300 */  add.s     $f12, $f2, $f0
/* 13BFC 800387FC 3C013F00 */  lui       $at, (0x3F000000 >> 16)
/* 13C00 80038800 44811000 */  mtc1      $at, $f2
/* 13C04 80038804 44820000 */  mtc1      $v0, $f0
/* 13C08 80038808 00000000 */  nop
/* 13C0C 8003880C 46800020 */  cvt.s.w   $f0, $f0
/* 13C10 80038810 46020582 */  mul.s     $f22, $f0, $f2
/* 13C14 80038814 00000000 */  nop
/* 13C18 80038818 46006104 */  sqrt.s    $f4, $f12
/* 13C1C 8003881C 46042032 */  c.eq.s    $f4, $f4
/* 13C20 80038820 00000000 */  nop
/* 13C24 80038824 45010004 */  bc1t      .LIQUE_80038838
/* 13C28 80038828 00000000 */   nop
/* 13C2C 8003882C 0C0183A0 */  jal       sqrtf
/* 13C30 80038830 00000000 */   nop
/* 13C34 80038834 46000106 */  mov.s     $f4, $f0
.LIQUE_80038838:
/* 13C38 80038838 C7A60014 */  lwc1      $f6, 0x14($sp)
/* 13C3C 8003883C 46163000 */  add.s     $f0, $f6, $f22
/* 13C40 80038840 46002606 */  mov.s     $f24, $f4
/* 13C44 80038844 4618003E */  c.le.s    $f0, $f24
/* 13C48 80038848 00000000 */  nop
/* 13C4C 8003884C 4503003C */  bc1tl     .LIQUE_80038940
/* 13C50 80038850 26520001 */   addiu    $s2, $s2, 0x1
/* 13C54 80038854 8E220000 */  lw        $v0, 0x0($s1)
/* 13C58 80038858 00531024 */  and       $v0, $v0, $s3
/* 13C5C 8003885C 10400005 */  beqz      $v0, .LIQUE_80038874
/* 13C60 80038860 0000182D */   daddu    $v1, $zero, $zero
/* 13C64 80038864 3C028011 */  lui       $v0, %hi(gPartnerActionStatus)
/* 13C68 80038868 8042CF90 */  lb        $v0, %lo(gPartnerActionStatus)($v0)
/* 13C6C 8003886C 0800E225 */  j         .LIQUE_80038894
/* 13C70 80038870 2C430001 */   sltiu    $v1, $v0, 0x1
.LIQUE_80038874:
/* 13C74 80038874 8E020000 */  lw        $v0, 0x0($s0)
/* 13C78 80038878 00531024 */  and       $v0, $v0, $s3
/* 13C7C 8003887C 50400005 */  beql      $v0, $zero, .LIQUE_80038894
/* 13C80 80038880 24030001 */   addiu    $v1, $zero, 0x1
/* 13C84 80038884 3C028011 */  lui       $v0, %hi(gPartnerActionStatus)
/* 13C88 80038888 8042CF90 */  lb        $v0, %lo(gPartnerActionStatus)($v0)
/* 13C8C 8003888C 50400001 */  beql      $v0, $zero, .LIQUE_80038894
/* 13C90 80038890 24030001 */   addiu    $v1, $zero, 0x1
.LIQUE_80038894:
/* 13C94 80038894 10600025 */  beqz      $v1, .LIQUE_8003892C
/* 13C98 80038898 00000000 */   nop
/* 13C9C 8003889C 4600A306 */  mov.s     $f12, $f20
/* 13CA0 800388A0 4406F000 */  mfc1      $a2, $f30
/* 13CA4 800388A4 4407E000 */  mfc1      $a3, $f28
/* 13CA8 800388A8 0C00A654 */  jal       atan2
/* 13CAC 800388AC 4600D386 */   mov.s    $f14, $f26
/* 13CB0 800388B0 3C0140C9 */  lui       $at, (0x40C90FD0 >> 16)
/* 13CB4 800388B4 34210FD0 */  ori       $at, $at, (0x40C90FD0 & 0xFFFF)
/* 13CB8 800388B8 44811000 */  mtc1      $at, $f2
/* 13CBC 800388BC 00000000 */  nop
/* 13CC0 800388C0 46020502 */  mul.s     $f20, $f0, $f2
/* 13CC4 800388C4 00000000 */  nop
/* 13CC8 800388C8 C7A60014 */  lwc1      $f6, 0x14($sp)
/* 13CCC 800388CC 46163000 */  add.s     $f0, $f6, $f22
/* 13CD0 800388D0 3C0143B4 */  lui       $at, (0x43B40000 >> 16)
/* 13CD4 800388D4 44811000 */  mtc1      $at, $f2
/* 13CD8 800388D8 46180601 */  sub.s     $f24, $f0, $f24
/* 13CDC 800388DC 4602A503 */  div.s     $f20, $f20, $f2
/* 13CE0 800388E0 0C00A78F */  jal       sin_rad
/* 13CE4 800388E4 4600A306 */   mov.s    $f12, $f20
/* 13CE8 800388E8 4600C582 */  mul.s     $f22, $f24, $f0
/* 13CEC 800388EC 00000000 */  nop
/* 13CF0 800388F0 0C00A7A8 */  jal       cos_rad
/* 13CF4 800388F4 4600A306 */   mov.s    $f12, $f20
/* 13CF8 800388F8 4600C087 */  neg.s     $f2, $f24
/* 13CFC 800388FC 46001102 */  mul.s     $f4, $f2, $f0
/* 13D00 80038900 00000000 */  nop
/* 13D04 80038904 3C013DCC */  lui       $at, (0x3DCCCCCD >> 16)
/* 13D08 80038908 3421CCCD */  ori       $at, $at, (0x3DCCCCCD & 0xFFFF)
/* 13D0C 8003890C 44813000 */  mtc1      $at, $f6
/* 13D10 80038910 00000000 */  nop
/* 13D14 80038914 4606B002 */  mul.s     $f0, $f22, $f6
/* 13D18 80038918 00000000 */  nop
/* 13D1C 8003891C 46062082 */  mul.s     $f2, $f4, $f6
/* 13D20 80038920 00000000 */  nop
/* 13D24 80038924 4600F780 */  add.s     $f30, $f30, $f0
/* 13D28 80038928 4602E700 */  add.s     $f28, $f28, $f2
.LIQUE_8003892C:
/* 13D2C 8003892C 8E220000 */  lw        $v0, 0x0($s1)
/* 13D30 80038930 3C030200 */  lui       $v1, (0x2000000 >> 16)
/* 13D34 80038934 00431025 */  or        $v0, $v0, $v1
/* 13D38 80038938 AE220000 */  sw        $v0, 0x0($s1)
/* 13D3C 8003893C 26520001 */  addiu     $s2, $s2, 0x1
.LIQUE_80038940:
/* 13D40 80038940 2A420040 */  slti      $v0, $s2, 0x40
/* 13D44 80038944 1440FF80 */  bnez      $v0, .LIQUE_80038748
/* 13D48 80038948 00000000 */   nop
/* 13D4C 8003894C E63E0038 */  swc1      $f30, 0x38($s1)
/* 13D50 80038950 E63C0040 */  swc1      $f28, 0x40($s1)
.LIQUE_80038954:
/* 13D54 80038954 8FBF0028 */  lw        $ra, 0x28($sp)
/* 13D58 80038958 8FB30024 */  lw        $s3, 0x24($sp)
/* 13D5C 8003895C 8FB20020 */  lw        $s2, 0x20($sp)
/* 13D60 80038960 8FB1001C */  lw        $s1, 0x1C($sp)
/* 13D64 80038964 8FB00018 */  lw        $s0, 0x18($sp)
/* 13D68 80038968 D7BE0058 */  ldc1      $f30, 0x58($sp)
/* 13D6C 8003896C D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 13D70 80038970 D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 13D74 80038974 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 13D78 80038978 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 13D7C 8003897C D7B40030 */  ldc1      $f20, 0x30($sp)
/* 13D80 80038980 03E00008 */  jr        $ra
/* 13D84 80038984 27BD0060 */   addiu    $sp, $sp, 0x60
