.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel update_camera_mode_1
/* 9D40 8002E940 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 9D44 8002E944 AFB10034 */  sw        $s1, 0x34($sp)
/* 9D48 8002E948 0080882D */  daddu     $s1, $a0, $zero
/* 9D4C 8002E94C AFBF0038 */  sw        $ra, 0x38($sp)
/* 9D50 8002E950 AFB00030 */  sw        $s0, 0x30($sp)
/* 9D54 8002E954 F7BE0068 */  sdc1      $f30, 0x68($sp)
/* 9D58 8002E958 F7BC0060 */  sdc1      $f28, 0x60($sp)
/* 9D5C 8002E95C F7BA0058 */  sdc1      $f26, 0x58($sp)
/* 9D60 8002E960 F7B80050 */  sdc1      $f24, 0x50($sp)
/* 9D64 8002E964 F7B60048 */  sdc1      $f22, 0x48($sp)
/* 9D68 8002E968 F7B40040 */  sdc1      $f20, 0x40($sp)
/* 9D6C 8002E96C 86220006 */  lh        $v0, 0x6($s1)
/* 9D70 8002E970 10400089 */  beqz      $v0, .LIQUE_8002EB98
/* 9D74 8002E974 00000000 */   nop
/* 9D78 8002E978 C63E0054 */  lwc1      $f30, 0x54($s1)
/* 9D7C 8002E97C C63C005C */  lwc1      $f28, 0x5C($s1)
/* 9D80 8002E980 C6380060 */  lwc1      $f24, 0x60($s1)
/* 9D84 8002E984 C6360068 */  lwc1      $f22, 0x68($s1)
/* 9D88 8002E988 8622001C */  lh        $v0, 0x1C($s1)
/* 9D8C 8002E98C 86230020 */  lh        $v1, 0x20($s1)
/* 9D90 8002E990 3C10800A */  lui       $s0, %hi(D_8009A5EC)
/* 9D94 8002E994 261091B8 */  addiu     $s0, $s0, %lo(D_8009A5EC)
/* 9D98 8002E998 A6200006 */  sh        $zero, 0x6($s1)
/* 9D9C 8002E99C 4600F306 */  mov.s     $f12, $f30
/* 9DA0 8002E9A0 4600E386 */  mov.s     $f14, $f28
/* 9DA4 8002E9A4 44820000 */  mtc1      $v0, $f0
/* 9DA8 8002E9A8 00000000 */  nop
/* 9DAC 8002E9AC 46800020 */  cvt.s.w   $f0, $f0
/* 9DB0 8002E9B0 00031040 */  sll       $v0, $v1, 1
/* 9DB4 8002E9B4 00431021 */  addu      $v0, $v0, $v1
/* 9DB8 8002E9B8 000210C0 */  sll       $v0, $v0, 3
/* 9DBC 8002E9BC 00431021 */  addu      $v0, $v0, $v1
/* 9DC0 8002E9C0 00021080 */  sll       $v0, $v0, 2
/* 9DC4 8002E9C4 E6200074 */  swc1      $f0, 0x74($s1)
/* 9DC8 8002E9C8 44820000 */  mtc1      $v0, $f0
/* 9DCC 8002E9CC 00000000 */  nop
/* 9DD0 8002E9D0 46800020 */  cvt.s.w   $f0, $f0
/* 9DD4 8002E9D4 4406C000 */  mfc1      $a2, $f24
/* 9DD8 8002E9D8 4407B000 */  mfc1      $a3, $f22
/* 9DDC 8002E9DC C6020000 */  lwc1      $f2, 0x0($s0)
/* 9DE0 8002E9E0 86230022 */  lh        $v1, 0x22($s1)
/* 9DE4 8002E9E4 46020003 */  div.s     $f0, $f0, $f2
/* 9DE8 8002E9E8 00031080 */  sll       $v0, $v1, 2
/* 9DEC 8002E9EC 00431021 */  addu      $v0, $v0, $v1
/* 9DF0 8002E9F0 00021080 */  sll       $v0, $v0, 2
/* 9DF4 8002E9F4 E6200078 */  swc1      $f0, 0x78($s1)
/* 9DF8 8002E9F8 44820000 */  mtc1      $v0, $f0
/* 9DFC 8002E9FC 00000000 */  nop
/* 9E00 8002EA00 46800020 */  cvt.s.w   $f0, $f0
/* 9E04 8002EA04 46020003 */  div.s     $f0, $f0, $f2
/* 9E08 8002EA08 0C00A654 */  jal       atan2
/* 9E0C 8002EA0C E620007C */   swc1     $f0, 0x7C($s1)
/* 9E10 8002EA10 46000506 */  mov.s     $f20, $f0
/* 9E14 8002EA14 4600F306 */  mov.s     $f12, $f30
/* 9E18 8002EA18 4406C000 */  mfc1      $a2, $f24
/* 9E1C 8002EA1C 4407B000 */  mfc1      $a3, $f22
/* 9E20 8002EA20 0C00A6E9 */  jal       dist2D
/* 9E24 8002EA24 4600E386 */   mov.s    $f14, $f28
/* 9E28 8002EA28 8623001E */  lh        $v1, 0x1E($s1)
/* 9E2C 8002EA2C C6040000 */  lwc1      $f4, 0x0($s0)
/* 9E30 8002EA30 00031040 */  sll       $v0, $v1, 1
/* 9E34 8002EA34 00431021 */  addu      $v0, $v0, $v1
/* 9E38 8002EA38 000210C0 */  sll       $v0, $v0, 3
/* 9E3C 8002EA3C 00431021 */  addu      $v0, $v0, $v1
/* 9E40 8002EA40 00021080 */  sll       $v0, $v0, 2
/* 9E44 8002EA44 44821000 */  mtc1      $v0, $f2
/* 9E48 8002EA48 00000000 */  nop
/* 9E4C 8002EA4C 468010A0 */  cvt.s.w   $f2, $f2
/* 9E50 8002EA50 46041083 */  div.s     $f2, $f2, $f4
/* 9E54 8002EA54 4602003C */  c.lt.s    $f0, $f2
/* 9E58 8002EA58 00000000 */  nop
/* 9E5C 8002EA5C 45020004 */  bc1fl     .LIQUE_8002EA70
/* 9E60 8002EA60 E6340084 */   swc1     $f20, 0x84($s1)
/* 9E64 8002EA64 C6340084 */  lwc1      $f20, 0x84($s1)
/* 9E68 8002EA68 0800BA9D */  j         .LIQUE_8002EA74
/* 9E6C 8002EA6C AFA00010 */   sw       $zero, 0x10($sp)
.LIQUE_8002EA70:
/* 9E70 8002EA70 AFA00010 */  sw        $zero, 0x10($sp)
.LIQUE_8002EA74:
/* 9E74 8002EA74 C6220074 */  lwc1      $f2, 0x74($s1)
/* 9E78 8002EA78 C6280054 */  lwc1      $f8, 0x54($s1)
/* 9E7C 8002EA7C 3C0140C9 */  lui       $at, (0x40C90FD0 >> 16)
/* 9E80 8002EA80 34210FD0 */  ori       $at, $at, (0x40C90FD0 & 0xFFFF)
/* 9E84 8002EA84 44815000 */  mtc1      $at, $f10
/* 9E88 8002EA88 C6200058 */  lwc1      $f0, 0x58($s1)
/* 9E8C 8002EA8C C624007C */  lwc1      $f4, 0x7C($s1)
/* 9E90 8002EA90 460A1082 */  mul.s     $f2, $f2, $f10
/* 9E94 8002EA94 00000000 */  nop
/* 9E98 8002EA98 C626005C */  lwc1      $f6, 0x5C($s1)
/* 9E9C 8002EA9C 3C0143B4 */  lui       $at, (0x43B40000 >> 16)
/* 9EA0 8002EAA0 4481B000 */  mtc1      $at, $f22
/* 9EA4 8002EAA4 E6340088 */  swc1      $f20, 0x88($s1)
/* 9EA8 8002EAA8 46040000 */  add.s     $f0, $f0, $f4
/* 9EAC 8002EAAC E6280048 */  swc1      $f8, 0x48($s1)
/* 9EB0 8002EAB0 E6260050 */  swc1      $f6, 0x50($s1)
/* 9EB4 8002EAB4 E620004C */  swc1      $f0, 0x4C($s1)
/* 9EB8 8002EAB8 46161603 */  div.s     $f24, $f2, $f22
/* 9EBC 8002EABC 0C00A78F */  jal       sin_rad
/* 9EC0 8002EAC0 4600C306 */   mov.s    $f12, $f24
/* 9EC4 8002EAC4 46000686 */  mov.s     $f26, $f0
/* 9EC8 8002EAC8 0C00A7A8 */  jal       cos_rad
/* 9ECC 8002EACC 4600C306 */   mov.s    $f12, $f24
/* 9ED0 8002EAD0 C7B00010 */  lwc1      $f16, 0x10($sp)
/* 9ED4 8002EAD4 46000206 */  mov.s     $f8, $f0
/* 9ED8 8002EAD8 46104182 */  mul.s     $f6, $f8, $f16
/* 9EDC 8002EADC 00000000 */  nop
/* 9EE0 8002EAE0 C63C0078 */  lwc1      $f28, 0x78($s1)
/* 9EE4 8002EAE4 461AE082 */  mul.s     $f2, $f28, $f26
/* 9EE8 8002EAE8 00000000 */  nop
/* 9EEC 8002EAEC 46008007 */  neg.s     $f0, $f16
/* 9EF0 8002EAF0 4600D002 */  mul.s     $f0, $f26, $f0
/* 9EF4 8002EAF4 00000000 */  nop
/* 9EF8 8002EAF8 4608E102 */  mul.s     $f4, $f28, $f8
/* 9EFC 8002EAFC 00000000 */  nop
/* 9F00 8002EB00 3C0140C9 */  lui       $at, (0x40C90FD0 >> 16)
/* 9F04 8002EB04 34210FD0 */  ori       $at, $at, (0x40C90FD0 & 0xFFFF)
/* 9F08 8002EB08 44815000 */  mtc1      $at, $f10
/* 9F0C 8002EB0C 00000000 */  nop
/* 9F10 8002EB10 460AA282 */  mul.s     $f10, $f20, $f10
/* 9F14 8002EB14 00000000 */  nop
/* 9F18 8002EB18 46008606 */  mov.s     $f24, $f16
/* 9F1C 8002EB1C 4600C786 */  mov.s     $f30, $f24
/* 9F20 8002EB20 46023180 */  add.s     $f6, $f6, $f2
/* 9F24 8002EB24 46165603 */  div.s     $f24, $f10, $f22
/* 9F28 8002EB28 4600C306 */  mov.s     $f12, $f24
/* 9F2C 8002EB2C 46040700 */  add.s     $f28, $f0, $f4
/* 9F30 8002EB30 0C00A78F */  jal       sin_rad
/* 9F34 8002EB34 E7A60010 */   swc1     $f6, 0x10($sp)
/* 9F38 8002EB38 46000686 */  mov.s     $f26, $f0
/* 9F3C 8002EB3C 0C00A7A8 */  jal       cos_rad
/* 9F40 8002EB40 4600C306 */   mov.s    $f12, $f24
/* 9F44 8002EB44 46000206 */  mov.s     $f8, $f0
/* 9F48 8002EB48 461E4182 */  mul.s     $f6, $f8, $f30
/* 9F4C 8002EB4C 00000000 */  nop
/* 9F50 8002EB50 461AE082 */  mul.s     $f2, $f28, $f26
/* 9F54 8002EB54 00000000 */  nop
/* 9F58 8002EB58 461ED102 */  mul.s     $f4, $f26, $f30
/* 9F5C 8002EB5C 00000000 */  nop
/* 9F60 8002EB60 4608E002 */  mul.s     $f0, $f28, $f8
/* 9F64 8002EB64 00000000 */  nop
/* 9F68 8002EB68 46023601 */  sub.s     $f24, $f6, $f2
/* 9F6C 8002EB6C C7B00010 */  lwc1      $f16, 0x10($sp)
/* 9F70 8002EB70 46002580 */  add.s     $f22, $f4, $f0
/* 9F74 8002EB74 C620004C */  lwc1      $f0, 0x4C($s1)
/* 9F78 8002EB78 46100000 */  add.s     $f0, $f0, $f16
/* 9F7C 8002EB7C C6240048 */  lwc1      $f4, 0x48($s1)
/* 9F80 8002EB80 46182100 */  add.s     $f4, $f4, $f24
/* 9F84 8002EB84 C6220050 */  lwc1      $f2, 0x50($s1)
/* 9F88 8002EB88 46161080 */  add.s     $f2, $f2, $f22
/* 9F8C 8002EB8C E6200040 */  swc1      $f0, 0x40($s1)
/* 9F90 8002EB90 E624003C */  swc1      $f4, 0x3C($s1)
/* 9F94 8002EB94 E6220044 */  swc1      $f2, 0x44($s1)
.LIQUE_8002EB98:
/* 9F98 8002EB98 C62A0054 */  lwc1      $f10, 0x54($s1)
/* 9F9C 8002EB9C 3C10800A */  lui       $s0, %hi(D_8009A5EC)
/* 9FA0 8002EBA0 261091B8 */  addiu     $s0, $s0, %lo(D_8009A5EC)
/* 9FA4 8002EBA4 E7AA0028 */  swc1      $f10, 0x28($sp)
/* 9FA8 8002EBA8 C632005C */  lwc1      $f18, 0x5C($s1)
/* 9FAC 8002EBAC C63E0054 */  lwc1      $f30, 0x54($s1)
/* 9FB0 8002EBB0 C6380060 */  lwc1      $f24, 0x60($s1)
/* 9FB4 8002EBB4 C6360068 */  lwc1      $f22, 0x68($s1)
/* 9FB8 8002EBB8 86230022 */  lh        $v1, 0x22($s1)
/* 9FBC 8002EBBC C6260058 */  lwc1      $f6, 0x58($s1)
/* 9FC0 8002EBC0 C60A0000 */  lwc1      $f10, 0x0($s0)
/* 9FC4 8002EBC4 C6280048 */  lwc1      $f8, 0x48($s1)
/* 9FC8 8002EBC8 46009706 */  mov.s     $f28, $f18
/* 9FCC 8002EBCC 00031080 */  sll       $v0, $v1, 2
/* 9FD0 8002EBD0 00431021 */  addu      $v0, $v0, $v1
/* 9FD4 8002EBD4 00021080 */  sll       $v0, $v0, 2
/* 9FD8 8002EBD8 44828000 */  mtc1      $v0, $f16
/* 9FDC 8002EBDC 00000000 */  nop
/* 9FE0 8002EBE0 46808420 */  cvt.s.w   $f16, $f16
/* 9FE4 8002EBE4 460A8283 */  div.s     $f10, $f16, $f10
/* 9FE8 8002EBE8 4600F306 */  mov.s     $f12, $f30
/* 9FEC 8002EBEC E62A007C */  swc1      $f10, 0x7C($s1)
/* 9FF0 8002EBF0 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 9FF4 8002EBF4 4600E386 */  mov.s     $f14, $f28
/* 9FF8 8002EBF8 46088401 */  sub.s     $f16, $f16, $f8
/* 9FFC 8002EBFC 4406C000 */  mfc1      $a2, $f24
/* A000 8002EC00 4407B000 */  mfc1      $a3, $f22
/* A004 8002EC04 460A3180 */  add.s     $f6, $f6, $f10
/* A008 8002EC08 E7B00028 */  swc1      $f16, 0x28($sp)
/* A00C 8002EC0C C6200050 */  lwc1      $f0, 0x50($s1)
/* A010 8002EC10 8622001C */  lh        $v0, 0x1C($s1)
/* A014 8002EC14 46009481 */  sub.s     $f18, $f18, $f0
/* A018 8002EC18 44820000 */  mtc1      $v0, $f0
/* A01C 8002EC1C 00000000 */  nop
/* A020 8002EC20 46800020 */  cvt.s.w   $f0, $f0
/* A024 8002EC24 E6200074 */  swc1      $f0, 0x74($s1)
/* A028 8002EC28 3C013F00 */  lui       $at, (0x3F000000 >> 16)
/* A02C 8002EC2C 44810000 */  mtc1      $at, $f0
/* A030 8002EC30 86230020 */  lh        $v1, 0x20($s1)
/* A034 8002EC34 46008282 */  mul.s     $f10, $f16, $f0
/* A038 8002EC38 00000000 */  nop
/* A03C 8002EC3C C622004C */  lwc1      $f2, 0x4C($s1)
/* A040 8002EC40 00031040 */  sll       $v0, $v1, 1
/* A044 8002EC44 00431021 */  addu      $v0, $v0, $v1
/* A048 8002EC48 000210C0 */  sll       $v0, $v0, 3
/* A04C 8002EC4C 46023181 */  sub.s     $f6, $f6, $f2
/* A050 8002EC50 00431021 */  addu      $v0, $v0, $v1
/* A054 8002EC54 00021080 */  sll       $v0, $v0, 2
/* A058 8002EC58 46009482 */  mul.s     $f18, $f18, $f0
/* A05C 8002EC5C 00000000 */  nop
/* A060 8002EC60 3C014120 */  lui       $at, (0x41200000 >> 16)
/* A064 8002EC64 44810000 */  mtc1      $at, $f0
/* A068 8002EC68 44822000 */  mtc1      $v0, $f4
/* A06C 8002EC6C 00000000 */  nop
/* A070 8002EC70 46802120 */  cvt.s.w   $f4, $f4
/* A074 8002EC74 46003183 */  div.s     $f6, $f6, $f0
/* A078 8002EC78 46001006 */  mov.s     $f0, $f2
/* A07C 8002EC7C 46060000 */  add.s     $f0, $f0, $f6
/* A080 8002EC80 C6100000 */  lwc1      $f16, 0x0($s0)
/* A084 8002EC84 C6220050 */  lwc1      $f2, 0x50($s1)
/* A088 8002EC88 460A4200 */  add.s     $f8, $f8, $f10
/* A08C 8002EC8C 46102103 */  div.s     $f4, $f4, $f16
/* A090 8002EC90 E6240078 */  swc1      $f4, 0x78($s1)
/* A094 8002EC94 46121080 */  add.s     $f2, $f2, $f18
/* A098 8002EC98 E620004C */  swc1      $f0, 0x4C($s1)
/* A09C 8002EC9C E6280048 */  swc1      $f8, 0x48($s1)
/* A0A0 8002ECA0 0C00A654 */  jal       atan2
/* A0A4 8002ECA4 E6220050 */   swc1     $f2, 0x50($s1)
/* A0A8 8002ECA8 46000506 */  mov.s     $f20, $f0
/* A0AC 8002ECAC 4600F306 */  mov.s     $f12, $f30
/* A0B0 8002ECB0 4406C000 */  mfc1      $a2, $f24
/* A0B4 8002ECB4 4407B000 */  mfc1      $a3, $f22
/* A0B8 8002ECB8 0C00A6E9 */  jal       dist2D
/* A0BC 8002ECBC 4600E386 */   mov.s    $f14, $f28
/* A0C0 8002ECC0 8623001E */  lh        $v1, 0x1E($s1)
/* A0C4 8002ECC4 C6040000 */  lwc1      $f4, 0x0($s0)
/* A0C8 8002ECC8 00031040 */  sll       $v0, $v1, 1
/* A0CC 8002ECCC 00431021 */  addu      $v0, $v0, $v1
/* A0D0 8002ECD0 000210C0 */  sll       $v0, $v0, 3
/* A0D4 8002ECD4 00431021 */  addu      $v0, $v0, $v1
/* A0D8 8002ECD8 00021080 */  sll       $v0, $v0, 2
/* A0DC 8002ECDC 44821000 */  mtc1      $v0, $f2
/* A0E0 8002ECE0 00000000 */  nop
/* A0E4 8002ECE4 468010A0 */  cvt.s.w   $f2, $f2
/* A0E8 8002ECE8 46041083 */  div.s     $f2, $f2, $f4
/* A0EC 8002ECEC 4602003C */  c.lt.s    $f0, $f2
/* A0F0 8002ECF0 00000000 */  nop
/* A0F4 8002ECF4 45020002 */  bc1fl     .LIQUE_8002ED00
/* A0F8 8002ECF8 E6340084 */   swc1     $f20, 0x84($s1)
/* A0FC 8002ECFC C6340084 */  lwc1      $f20, 0x84($s1)
.LIQUE_8002ED00:
/* A100 8002ED00 C62E0088 */  lwc1      $f14, 0x88($s1)
/* A104 8002ED04 0C00A63E */  jal       get_clamped_angle_diff
/* A108 8002ED08 4600A306 */   mov.s    $f12, $f20
/* A10C 8002ED0C C6240074 */  lwc1      $f4, 0x74($s1)
/* A110 8002ED10 3C0140C9 */  lui       $at, (0x40C90FD0 >> 16)
/* A114 8002ED14 34210FD0 */  ori       $at, $at, (0x40C90FD0 & 0xFFFF)
/* A118 8002ED18 44815000 */  mtc1      $at, $f10
/* A11C 8002ED1C 3C014120 */  lui       $at, (0x41200000 >> 16)
/* A120 8002ED20 44811000 */  mtc1      $at, $f2
/* A124 8002ED24 460A2102 */  mul.s     $f4, $f4, $f10
/* A128 8002ED28 00000000 */  nop
/* A12C 8002ED2C 46020003 */  div.s     $f0, $f0, $f2
/* A130 8002ED30 C6220088 */  lwc1      $f2, 0x88($s1)
/* A134 8002ED34 3C0143B4 */  lui       $at, (0x43B40000 >> 16)
/* A138 8002ED38 4481B000 */  mtc1      $at, $f22
/* A13C 8002ED3C 46001081 */  sub.s     $f2, $f2, $f0
/* A140 8002ED40 AFA00010 */  sw        $zero, 0x10($sp)
/* A144 8002ED44 46001506 */  mov.s     $f20, $f2
/* A148 8002ED48 E6340088 */  swc1      $f20, 0x88($s1)
/* A14C 8002ED4C 46162603 */  div.s     $f24, $f4, $f22
/* A150 8002ED50 0C00A78F */  jal       sin_rad
/* A154 8002ED54 4600C306 */   mov.s    $f12, $f24
/* A158 8002ED58 46000686 */  mov.s     $f26, $f0
/* A15C 8002ED5C 0C00A7A8 */  jal       cos_rad
/* A160 8002ED60 4600C306 */   mov.s    $f12, $f24
/* A164 8002ED64 C7B00010 */  lwc1      $f16, 0x10($sp)
/* A168 8002ED68 46000206 */  mov.s     $f8, $f0
/* A16C 8002ED6C 46104182 */  mul.s     $f6, $f8, $f16
/* A170 8002ED70 00000000 */  nop
/* A174 8002ED74 C63C0078 */  lwc1      $f28, 0x78($s1)
/* A178 8002ED78 461AE082 */  mul.s     $f2, $f28, $f26
/* A17C 8002ED7C 00000000 */  nop
/* A180 8002ED80 46008007 */  neg.s     $f0, $f16
/* A184 8002ED84 4600D002 */  mul.s     $f0, $f26, $f0
/* A188 8002ED88 00000000 */  nop
/* A18C 8002ED8C 4608E102 */  mul.s     $f4, $f28, $f8
/* A190 8002ED90 00000000 */  nop
/* A194 8002ED94 3C0140C9 */  lui       $at, (0x40C90FD0 >> 16)
/* A198 8002ED98 34210FD0 */  ori       $at, $at, (0x40C90FD0 & 0xFFFF)
/* A19C 8002ED9C 44815000 */  mtc1      $at, $f10
/* A1A0 8002EDA0 00000000 */  nop
/* A1A4 8002EDA4 460AA282 */  mul.s     $f10, $f20, $f10
/* A1A8 8002EDA8 00000000 */  nop
/* A1AC 8002EDAC 46008606 */  mov.s     $f24, $f16
/* A1B0 8002EDB0 4600C786 */  mov.s     $f30, $f24
/* A1B4 8002EDB4 46023180 */  add.s     $f6, $f6, $f2
/* A1B8 8002EDB8 46165603 */  div.s     $f24, $f10, $f22
/* A1BC 8002EDBC 4600C306 */  mov.s     $f12, $f24
/* A1C0 8002EDC0 46040700 */  add.s     $f28, $f0, $f4
/* A1C4 8002EDC4 0C00A78F */  jal       sin_rad
/* A1C8 8002EDC8 E7A60010 */   swc1     $f6, 0x10($sp)
/* A1CC 8002EDCC 46000686 */  mov.s     $f26, $f0
/* A1D0 8002EDD0 0C00A7A8 */  jal       cos_rad
/* A1D4 8002EDD4 4600C306 */   mov.s    $f12, $f24
/* A1D8 8002EDD8 46000206 */  mov.s     $f8, $f0
/* A1DC 8002EDDC 461E4102 */  mul.s     $f4, $f8, $f30
/* A1E0 8002EDE0 00000000 */  nop
/* A1E4 8002EDE4 461AE002 */  mul.s     $f0, $f28, $f26
/* A1E8 8002EDE8 00000000 */  nop
/* A1EC 8002EDEC 461ED182 */  mul.s     $f6, $f26, $f30
/* A1F0 8002EDF0 00000000 */  nop
/* A1F4 8002EDF4 4608E082 */  mul.s     $f2, $f28, $f8
/* A1F8 8002EDF8 00000000 */  nop
/* A1FC 8002EDFC 46002601 */  sub.s     $f24, $f4, $f0
/* A200 8002EE00 C7B00010 */  lwc1      $f16, 0x10($sp)
/* A204 8002EE04 46023580 */  add.s     $f22, $f6, $f2
/* A208 8002EE08 C622004C */  lwc1      $f2, 0x4C($s1)
/* A20C 8002EE0C 46101080 */  add.s     $f2, $f2, $f16
/* A210 8002EE10 C6200048 */  lwc1      $f0, 0x48($s1)
/* A214 8002EE14 8E260048 */  lw        $a2, 0x48($s1)
/* A218 8002EE18 46180000 */  add.s     $f0, $f0, $f24
/* A21C 8002EE1C C62E0050 */  lwc1      $f14, 0x50($s1)
/* A220 8002EE20 8E270050 */  lw        $a3, 0x50($s1)
/* A224 8002EE24 46167380 */  add.s     $f14, $f14, $f22
/* A228 8002EE28 E6220040 */  swc1      $f2, 0x40($s1)
/* A22C 8002EE2C E620003C */  swc1      $f0, 0x3C($s1)
/* A230 8002EE30 46000306 */  mov.s     $f12, $f0
/* A234 8002EE34 0C00A654 */  jal       atan2
/* A238 8002EE38 E62E0044 */   swc1     $f14, 0x44($s1)
/* A23C 8002EE3C C6240048 */  lwc1      $f4, 0x48($s1)
/* A240 8002EE40 C622003C */  lwc1      $f2, 0x3C($s1)
/* A244 8002EE44 4480A000 */  mtc1      $zero, $f20
/* A248 8002EE48 46022781 */  sub.s     $f30, $f4, $f2
/* A24C 8002EE4C C6240050 */  lwc1      $f4, 0x50($s1)
/* A250 8002EE50 C6220044 */  lwc1      $f2, 0x44($s1)
/* A254 8002EE54 4600A306 */  mov.s     $f12, $f20
/* A258 8002EE58 46022701 */  sub.s     $f28, $f4, $f2
/* A25C 8002EE5C C624004C */  lwc1      $f4, 0x4C($s1)
/* A260 8002EE60 C6220040 */  lwc1      $f2, 0x40($s1)
/* A264 8002EE64 4406F000 */  mfc1      $a2, $f30
/* A268 8002EE68 46022101 */  sub.s     $f4, $f4, $f2
/* A26C 8002EE6C 4407E000 */  mfc1      $a3, $f28
/* A270 8002EE70 4600A386 */  mov.s     $f14, $f20
/* A274 8002EE74 E7A40010 */  swc1      $f4, 0x10($sp)
/* A278 8002EE78 0C00A654 */  jal       atan2
/* A27C 8002EE7C E620006C */   swc1     $f0, 0x6C($s1)
/* A280 8002EE80 461EF102 */  mul.s     $f4, $f30, $f30
/* A284 8002EE84 00000000 */  nop
/* A288 8002EE88 461CE082 */  mul.s     $f2, $f28, $f28
/* A28C 8002EE8C 00000000 */  nop
/* A290 8002EE90 46022300 */  add.s     $f12, $f4, $f2
/* A294 8002EE94 46000007 */  neg.s     $f0, $f0
/* A298 8002EE98 E6200090 */  swc1      $f0, 0x90($s1)
/* A29C 8002EE9C 46006004 */  sqrt.s    $f0, $f12
/* A2A0 8002EEA0 46000032 */  c.eq.s    $f0, $f0
/* A2A4 8002EEA4 00000000 */  nop
/* A2A8 8002EEA8 45030004 */  bc1tl     .LIQUE_8002EEBC
/* A2AC 8002EEAC 4600A306 */   mov.s    $f12, $f20
/* A2B0 8002EEB0 0C0183A0 */  jal       sqrtf
/* A2B4 8002EEB4 00000000 */   nop
/* A2B8 8002EEB8 4600A306 */  mov.s     $f12, $f20
.LIQUE_8002EEBC:
/* A2BC 8002EEBC 46000007 */  neg.s     $f0, $f0
/* A2C0 8002EEC0 8FA60010 */  lw        $a2, 0x10($sp)
/* A2C4 8002EEC4 44070000 */  mfc1      $a3, $f0
/* A2C8 8002EEC8 0C00A654 */  jal       atan2
/* A2CC 8002EECC 46006386 */   mov.s    $f14, $f12
/* A2D0 8002EED0 E6200094 */  swc1      $f0, 0x94($s1)
/* A2D4 8002EED4 8FBF0038 */  lw        $ra, 0x38($sp)
/* A2D8 8002EED8 8FB10034 */  lw        $s1, 0x34($sp)
/* A2DC 8002EEDC 8FB00030 */  lw        $s0, 0x30($sp)
/* A2E0 8002EEE0 D7BE0068 */  ldc1      $f30, 0x68($sp)
/* A2E4 8002EEE4 D7BC0060 */  ldc1      $f28, 0x60($sp)
/* A2E8 8002EEE8 D7BA0058 */  ldc1      $f26, 0x58($sp)
/* A2EC 8002EEEC D7B80050 */  ldc1      $f24, 0x50($sp)
/* A2F0 8002EEF0 D7B60048 */  ldc1      $f22, 0x48($sp)
/* A2F4 8002EEF4 D7B40040 */  ldc1      $f20, 0x40($sp)
/* A2F8 8002EEF8 03E00008 */  jr        $ra
/* A2FC 8002EEFC 27BD0070 */   addiu    $sp, $sp, 0x70
