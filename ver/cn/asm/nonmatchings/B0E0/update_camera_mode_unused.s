.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel update_camera_mode_unused
/* A790 8002F390 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* A794 8002F394 AFB00010 */  sw        $s0, 0x10($sp)
/* A798 8002F398 0080802D */  daddu     $s0, $a0, $zero
/* A79C 8002F39C AFBF0014 */  sw        $ra, 0x14($sp)
/* A7A0 8002F3A0 F7BE0040 */  sdc1      $f30, 0x40($sp)
/* A7A4 8002F3A4 F7BC0038 */  sdc1      $f28, 0x38($sp)
/* A7A8 8002F3A8 F7BA0030 */  sdc1      $f26, 0x30($sp)
/* A7AC 8002F3AC F7B80028 */  sdc1      $f24, 0x28($sp)
/* A7B0 8002F3B0 F7B60020 */  sdc1      $f22, 0x20($sp)
/* A7B4 8002F3B4 F7B40018 */  sdc1      $f20, 0x18($sp)
/* A7B8 8002F3B8 86020006 */  lh        $v0, 0x6($s0)
/* A7BC 8002F3BC 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* A7C0 8002F3C0 2463D3A8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* A7C4 8002F3C4 14400004 */  bnez      $v0, .LIQUE_8002F3D8
/* A7C8 8002F3C8 00000000 */   nop
/* A7CC 8002F3CC 86020008 */  lh        $v0, 0x8($s0)
/* A7D0 8002F3D0 1040000F */  beqz      $v0, .LIQUE_8002F410
/* A7D4 8002F3D4 00000000 */   nop
.LIQUE_8002F3D8:
/* A7D8 8002F3D8 C6000054 */  lwc1      $f0, 0x54($s0)
/* A7DC 8002F3DC C6020058 */  lwc1      $f2, 0x58($s0)
/* A7E0 8002F3E0 C604005C */  lwc1      $f4, 0x5C($s0)
/* A7E4 8002F3E4 24020064 */  addiu     $v0, $zero, 0x64
/* A7E8 8002F3E8 A6000006 */  sh        $zero, 0x6($s0)
/* A7EC 8002F3EC A6000008 */  sh        $zero, 0x8($s0)
/* A7F0 8002F3F0 A600001C */  sh        $zero, 0x1C($s0)
/* A7F4 8002F3F4 A602001E */  sh        $v0, 0x1E($s0)
/* A7F8 8002F3F8 A6020020 */  sh        $v0, 0x20($s0)
/* A7FC 8002F3FC A6000022 */  sh        $zero, 0x22($s0)
/* A800 8002F400 A6000024 */  sh        $zero, 0x24($s0)
/* A804 8002F404 E6000048 */  swc1      $f0, 0x48($s0)
/* A808 8002F408 E602004C */  swc1      $f2, 0x4C($s0)
/* A80C 8002F40C E6040050 */  swc1      $f4, 0x50($s0)
.LIQUE_8002F410:
/* A810 8002F410 8C620000 */  lw        $v0, 0x0($v1)
/* A814 8002F414 30420006 */  andi      $v0, $v0, 0x6
/* A818 8002F418 14400007 */  bnez      $v0, .LIQUE_8002F438
/* A81C 8002F41C 00000000 */   nop
/* A820 8002F420 C460002C */  lwc1      $f0, 0x2C($v1)
/* A824 8002F424 3C014270 */  lui       $at, (0x42700000 >> 16)
/* A828 8002F428 44811000 */  mtc1      $at, $f2
/* A82C 8002F42C 00000000 */  nop
/* A830 8002F430 46020000 */  add.s     $f0, $f0, $f2
/* A834 8002F434 E6000058 */  swc1      $f0, 0x58($s0)
.LIQUE_8002F438:
/* A838 8002F438 C4600028 */  lwc1      $f0, 0x28($v1)
/* A83C 8002F43C 3C0143C8 */  lui       $at, (0x43C80000 >> 16)
/* A840 8002F440 44811000 */  mtc1      $at, $f2
/* A844 8002F444 E6000054 */  swc1      $f0, 0x54($s0)
/* A848 8002F448 C4600030 */  lwc1      $f0, 0x30($v1)
/* A84C 8002F44C 46020000 */  add.s     $f0, $f0, $f2
/* A850 8002F450 8602001C */  lh        $v0, 0x1C($s0)
/* A854 8002F454 14400062 */  bnez      $v0, .LIQUE_8002F5E0
/* A858 8002F458 E600005C */   swc1     $f0, 0x5C($s0)
/* A85C 8002F45C 86030020 */  lh        $v1, 0x20($s0)
/* A860 8002F460 24022710 */  addiu     $v0, $zero, 0x2710
/* A864 8002F464 14600002 */  bnez      $v1, .LIQUE_8002F470
/* A868 8002F468 0043001A */   div      $zero, $v0, $v1
/* A86C 8002F46C 0007000D */  break     7
.LIQUE_8002F470:
/* A870 8002F470 2401FFFF */  addiu     $at, $zero, -0x1
/* A874 8002F474 14610004 */  bne       $v1, $at, .LIQUE_8002F488
/* A878 8002F478 3C018000 */   lui      $at, (0x80000000 >> 16)
/* A87C 8002F47C 14410002 */  bne       $v0, $at, .LIQUE_8002F488
/* A880 8002F480 00000000 */   nop
/* A884 8002F484 0006000D */  break     6
.LIQUE_8002F488:
/* A888 8002F488 00002012 */  mflo      $a0
/* A88C 8002F48C C6000054 */  lwc1      $f0, 0x54($s0)
/* A890 8002F490 C6020058 */  lwc1      $f2, 0x58($s0)
/* A894 8002F494 C604005C */  lwc1      $f4, 0x5C($s0)
/* A898 8002F498 86020024 */  lh        $v0, 0x24($s0)
/* A89C 8002F49C 8603001E */  lh        $v1, 0x1E($s0)
/* A8A0 8002F4A0 E6000048 */  swc1      $f0, 0x48($s0)
/* A8A4 8002F4A4 44820000 */  mtc1      $v0, $f0
/* A8A8 8002F4A8 00000000 */  nop
/* A8AC 8002F4AC 46800020 */  cvt.s.w   $f0, $f0
/* A8B0 8002F4B0 86020022 */  lh        $v0, 0x22($s0)
/* A8B4 8002F4B4 E602004C */  swc1      $f2, 0x4C($s0)
/* A8B8 8002F4B8 E6040050 */  swc1      $f4, 0x50($s0)
/* A8BC 8002F4BC E6000084 */  swc1      $f0, 0x84($s0)
/* A8C0 8002F4C0 44820000 */  mtc1      $v0, $f0
/* A8C4 8002F4C4 00000000 */  nop
/* A8C8 8002F4C8 46800020 */  cvt.s.w   $f0, $f0
/* A8CC 8002F4CC E6000074 */  swc1      $f0, 0x74($s0)
/* A8D0 8002F4D0 44830000 */  mtc1      $v1, $f0
/* A8D4 8002F4D4 00000000 */  nop
/* A8D8 8002F4D8 46800020 */  cvt.s.w   $f0, $f0
/* A8DC 8002F4DC 04810002 */  bgez      $a0, .LIQUE_8002F4E8
/* A8E0 8002F4E0 E6000078 */   swc1     $f0, 0x78($s0)
/* A8E4 8002F4E4 24840003 */  addiu     $a0, $a0, 0x3
.LIQUE_8002F4E8:
/* A8E8 8002F4E8 C6020074 */  lwc1      $f2, 0x74($s0)
/* A8EC 8002F4EC 3C0140C9 */  lui       $at, (0x40C90FD0 >> 16)
/* A8F0 8002F4F0 34210FD0 */  ori       $at, $at, (0x40C90FD0 & 0xFFFF)
/* A8F4 8002F4F4 4481A000 */  mtc1      $at, $f20
/* A8F8 8002F4F8 00041083 */  sra       $v0, $a0, 2
/* A8FC 8002F4FC 46141082 */  mul.s     $f2, $f2, $f20
/* A900 8002F500 00000000 */  nop
/* A904 8002F504 4480F000 */  mtc1      $zero, $f30
/* A908 8002F508 3C0143B4 */  lui       $at, (0x43B40000 >> 16)
/* A90C 8002F50C 4481B000 */  mtc1      $at, $f22
/* A910 8002F510 44820000 */  mtc1      $v0, $f0
/* A914 8002F514 00000000 */  nop
/* A918 8002F518 46800020 */  cvt.s.w   $f0, $f0
/* A91C 8002F51C E6000018 */  swc1      $f0, 0x18($s0)
/* A920 8002F520 46161683 */  div.s     $f26, $f2, $f22
/* A924 8002F524 0C00A78F */  jal       sin_rad
/* A928 8002F528 4600D306 */   mov.s    $f12, $f26
/* A92C 8002F52C 46000706 */  mov.s     $f28, $f0
/* A930 8002F530 0C00A7A8 */  jal       cos_rad
/* A934 8002F534 4600D306 */   mov.s    $f12, $f26
/* A938 8002F538 461E0202 */  mul.s     $f8, $f0, $f30
/* A93C 8002F53C 00000000 */  nop
/* A940 8002F540 4600F087 */  neg.s     $f2, $f30
/* A944 8002F544 4602E082 */  mul.s     $f2, $f28, $f2
/* A948 8002F548 00000000 */  nop
/* A94C 8002F54C C6180078 */  lwc1      $f24, 0x78($s0)
/* A950 8002F550 461CC102 */  mul.s     $f4, $f24, $f28
/* A954 8002F554 00000000 */  nop
/* A958 8002F558 4600C182 */  mul.s     $f6, $f24, $f0
/* A95C 8002F55C 00000000 */  nop
/* A960 8002F560 C6000084 */  lwc1      $f0, 0x84($s0)
/* A964 8002F564 46140002 */  mul.s     $f0, $f0, $f20
/* A968 8002F568 00000000 */  nop
/* A96C 8002F56C 4600F286 */  mov.s     $f10, $f30
/* A970 8002F570 46005506 */  mov.s     $f20, $f10
/* A974 8002F574 46044780 */  add.s     $f30, $f8, $f4
/* A978 8002F578 46061600 */  add.s     $f24, $f2, $f6
/* A97C 8002F57C 46160683 */  div.s     $f26, $f0, $f22
/* A980 8002F580 0C00A78F */  jal       sin_rad
/* A984 8002F584 4600D306 */   mov.s    $f12, $f26
/* A988 8002F588 46000706 */  mov.s     $f28, $f0
/* A98C 8002F58C 0C00A7A8 */  jal       cos_rad
/* A990 8002F590 4600D306 */   mov.s    $f12, $f26
/* A994 8002F594 46140182 */  mul.s     $f6, $f0, $f20
/* A998 8002F598 00000000 */  nop
/* A99C 8002F59C 4614E102 */  mul.s     $f4, $f28, $f20
/* A9A0 8002F5A0 00000000 */  nop
/* A9A4 8002F5A4 461CC082 */  mul.s     $f2, $f24, $f28
/* A9A8 8002F5A8 00000000 */  nop
/* A9AC 8002F5AC 4600C002 */  mul.s     $f0, $f24, $f0
/* A9B0 8002F5B0 00000000 */  nop
/* A9B4 8002F5B4 46023281 */  sub.s     $f10, $f6, $f2
/* A9B8 8002F5B8 46002100 */  add.s     $f4, $f4, $f0
/* A9BC 8002F5BC C600004C */  lwc1      $f0, 0x4C($s0)
/* A9C0 8002F5C0 461E0000 */  add.s     $f0, $f0, $f30
/* A9C4 8002F5C4 C6060048 */  lwc1      $f6, 0x48($s0)
/* A9C8 8002F5C8 460A3180 */  add.s     $f6, $f6, $f10
/* A9CC 8002F5CC C6020050 */  lwc1      $f2, 0x50($s0)
/* A9D0 8002F5D0 46041080 */  add.s     $f2, $f2, $f4
/* A9D4 8002F5D4 E6000040 */  swc1      $f0, 0x40($s0)
/* A9D8 8002F5D8 E606003C */  swc1      $f6, 0x3C($s0)
/* A9DC 8002F5DC E6020044 */  swc1      $f2, 0x44($s0)
.LIQUE_8002F5E0:
/* A9E0 8002F5E0 C60C003C */  lwc1      $f12, 0x3C($s0)
/* A9E4 8002F5E4 C60E0044 */  lwc1      $f14, 0x44($s0)
/* A9E8 8002F5E8 8E060048 */  lw        $a2, 0x48($s0)
/* A9EC 8002F5EC 0C00A654 */  jal       atan2
/* A9F0 8002F5F0 8E070050 */   lw       $a3, 0x50($s0)
/* A9F4 8002F5F4 C6040048 */  lwc1      $f4, 0x48($s0)
/* A9F8 8002F5F8 4480B000 */  mtc1      $zero, $f22
/* A9FC 8002F5FC C602003C */  lwc1      $f2, 0x3C($s0)
/* AA00 8002F600 E600006C */  swc1      $f0, 0x6C($s0)
/* AA04 8002F604 46022501 */  sub.s     $f20, $f4, $f2
/* AA08 8002F608 C6040050 */  lwc1      $f4, 0x50($s0)
/* AA0C 8002F60C C6020044 */  lwc1      $f2, 0x44($s0)
/* AA10 8002F610 4600B306 */  mov.s     $f12, $f22
/* AA14 8002F614 46022601 */  sub.s     $f24, $f4, $f2
/* AA18 8002F618 C604004C */  lwc1      $f4, 0x4C($s0)
/* AA1C 8002F61C C6020040 */  lwc1      $f2, 0x40($s0)
/* AA20 8002F620 4406A000 */  mfc1      $a2, $f20
/* AA24 8002F624 46022781 */  sub.s     $f30, $f4, $f2
/* AA28 8002F628 4407C000 */  mfc1      $a3, $f24
/* AA2C 8002F62C 0C00A654 */  jal       atan2
/* AA30 8002F630 4600B386 */   mov.s    $f14, $f22
/* AA34 8002F634 4614A102 */  mul.s     $f4, $f20, $f20
/* AA38 8002F638 00000000 */  nop
/* AA3C 8002F63C 4618C082 */  mul.s     $f2, $f24, $f24
/* AA40 8002F640 00000000 */  nop
/* AA44 8002F644 46022300 */  add.s     $f12, $f4, $f2
/* AA48 8002F648 46000007 */  neg.s     $f0, $f0
/* AA4C 8002F64C E6000090 */  swc1      $f0, 0x90($s0)
/* AA50 8002F650 46006004 */  sqrt.s    $f0, $f12
/* AA54 8002F654 46000032 */  c.eq.s    $f0, $f0
/* AA58 8002F658 00000000 */  nop
/* AA5C 8002F65C 45030004 */  bc1tl     .LIQUE_8002F670
/* AA60 8002F660 4600B306 */   mov.s    $f12, $f22
/* AA64 8002F664 0C0183A0 */  jal       sqrtf
/* AA68 8002F668 00000000 */   nop
/* AA6C 8002F66C 4600B306 */  mov.s     $f12, $f22
.LIQUE_8002F670:
/* AA70 8002F670 46000007 */  neg.s     $f0, $f0
/* AA74 8002F674 4406F000 */  mfc1      $a2, $f30
/* AA78 8002F678 44070000 */  mfc1      $a3, $f0
/* AA7C 8002F67C 0C00A654 */  jal       atan2
/* AA80 8002F680 46006386 */   mov.s    $f14, $f12
/* AA84 8002F684 E6000094 */  swc1      $f0, 0x94($s0)
/* AA88 8002F688 8FBF0014 */  lw        $ra, 0x14($sp)
/* AA8C 8002F68C 8FB00010 */  lw        $s0, 0x10($sp)
/* AA90 8002F690 D7BE0040 */  ldc1      $f30, 0x40($sp)
/* AA94 8002F694 D7BC0038 */  ldc1      $f28, 0x38($sp)
/* AA98 8002F698 D7BA0030 */  ldc1      $f26, 0x30($sp)
/* AA9C 8002F69C D7B80028 */  ldc1      $f24, 0x28($sp)
/* AAA0 8002F6A0 D7B60020 */  ldc1      $f22, 0x20($sp)
/* AAA4 8002F6A4 D7B40018 */  ldc1      $f20, 0x18($sp)
/* AAA8 8002F6A8 03E00008 */  jr        $ra
/* AAAC 8002F6AC 27BD0048 */   addiu    $sp, $sp, 0x48
