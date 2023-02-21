.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel osRecvMesg
/* 3EB30 80063730 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 3EB34 80063734 AFBF0018 */  sw        $ra, 0x18($sp)
/* 3EB38 80063738 AFBE0014 */  sw        $fp, 0x14($sp)
/* 3EB3C 8006373C AFB00010 */  sw        $s0, 0x10($sp)
/* 3EB40 80063740 03A0F021 */  addu      $fp, $sp, $zero
/* 3EB44 80063744 AFC40020 */  sw        $a0, 0x20($fp)
/* 3EB48 80063748 AFC50024 */  sw        $a1, 0x24($fp)
/* 3EB4C 8006374C 0C019B40 */  jal       __osDisableInt
/* 3EB50 80063750 AFC60028 */   sw       $a2, 0x28($fp)
/* 3EB54 80063754 00408021 */  addu      $s0, $v0, $zero
.LIQUE_80063758:
/* 3EB58 80063758 8FC20020 */  lw        $v0, 0x20($fp)
/* 3EB5C 8006375C 8C430008 */  lw        $v1, 0x8($v0)
/* 3EB60 80063760 10600003 */  beqz      $v1, .LIQUE_80063770
/* 3EB64 80063764 00000000 */   nop
/* 3EB68 80063768 08018DED */  j         .LIQUE_800637B4
/* 3EB6C 8006376C 00000000 */   nop
.LIQUE_80063770:
/* 3EB70 80063770 8FC20028 */  lw        $v0, 0x28($fp)
/* 3EB74 80063774 14400007 */  bnez      $v0, .LIQUE_80063794
/* 3EB78 80063778 00000000 */   nop
/* 3EB7C 8006377C 0C019B5C */  jal       __osRestoreInt
/* 3EB80 80063780 02002021 */   addu     $a0, $s0, $zero
/* 3EB84 80063784 08018E20 */  j         .LIQUE_80063880
/* 3EB88 80063788 2402FFFF */   addiu    $v0, $zero, -0x1
/* 3EB8C 8006378C 08018DEB */  j         .LIQUE_800637AC
/* 3EB90 80063790 00000000 */   nop
.LIQUE_80063794:
/* 3EB94 80063794 3C028009 */  lui       $v0, %hi(__osRunningThread)
/* 3EB98 80063798 8C423280 */  lw        $v0, %lo(__osRunningThread)($v0)
/* 3EB9C 8006379C 24030008 */  addiu     $v1, $zero, 0x8
/* 3EBA0 800637A0 A4430010 */  sh        $v1, 0x10($v0)
/* 3EBA4 800637A4 0C019A81 */  jal       __osEnqueueAndYield
/* 3EBA8 800637A8 8FC40020 */   lw       $a0, 0x20($fp)
.LIQUE_800637AC:
/* 3EBAC 800637AC 08018DD6 */  j         .LIQUE_80063758
/* 3EBB0 800637B0 00000000 */   nop
.LIQUE_800637B4:
/* 3EBB4 800637B4 8FC20024 */  lw        $v0, 0x24($fp)
/* 3EBB8 800637B8 1040000B */  beqz      $v0, .LIQUE_800637E8
/* 3EBBC 800637BC 00000000 */   nop
/* 3EBC0 800637C0 8FC20024 */  lw        $v0, 0x24($fp)
/* 3EBC4 800637C4 8FC30020 */  lw        $v1, 0x20($fp)
/* 3EBC8 800637C8 8FC40020 */  lw        $a0, 0x20($fp)
/* 3EBCC 800637CC 8C85000C */  lw        $a1, 0xC($a0)
/* 3EBD0 800637D0 00A02021 */  addu      $a0, $a1, $zero
/* 3EBD4 800637D4 00042880 */  sll       $a1, $a0, 2
/* 3EBD8 800637D8 8C640014 */  lw        $a0, 0x14($v1)
/* 3EBDC 800637DC 00A41821 */  addu      $v1, $a1, $a0
/* 3EBE0 800637E0 8C640000 */  lw        $a0, 0x0($v1)
/* 3EBE4 800637E4 AC440000 */  sw        $a0, 0x0($v0)
.LIQUE_800637E8:
/* 3EBE8 800637E8 8FC20020 */  lw        $v0, 0x20($fp)
/* 3EBEC 800637EC 8FC30020 */  lw        $v1, 0x20($fp)
/* 3EBF0 800637F0 8C64000C */  lw        $a0, 0xC($v1)
/* 3EBF4 800637F4 24830001 */  addiu     $v1, $a0, 0x1
/* 3EBF8 800637F8 8FC40020 */  lw        $a0, 0x20($fp)
/* 3EBFC 800637FC 8C850010 */  lw        $a1, 0x10($a0)
/* 3EC00 80063800 14A00002 */  bnez      $a1, .LIQUE_8006380C
/* 3EC04 80063804 0065001A */   div      $zero, $v1, $a1
/* 3EC08 80063808 0007000D */  break     7
.LIQUE_8006380C:
/* 3EC0C 8006380C 2401FFFF */  addiu     $at, $zero, -0x1
/* 3EC10 80063810 14A10004 */  bne       $a1, $at, .LIQUE_80063824
/* 3EC14 80063814 3C018000 */   lui      $at, (0x80000000 >> 16)
/* 3EC18 80063818 14610002 */  bne       $v1, $at, .LIQUE_80063824
/* 3EC1C 8006381C 00000000 */   nop
/* 3EC20 80063820 0006000D */  break     6
.LIQUE_80063824:
/* 3EC24 80063824 00001810 */  mfhi      $v1
/* 3EC28 80063828 AC43000C */  sw        $v1, 0xC($v0)
/* 3EC2C 8006382C 8FC30020 */  lw        $v1, 0x20($fp)
/* 3EC30 80063830 8FC20020 */  lw        $v0, 0x20($fp)
/* 3EC34 80063834 8FC30020 */  lw        $v1, 0x20($fp)
/* 3EC38 80063838 8C640008 */  lw        $a0, 0x8($v1)
/* 3EC3C 8006383C 2483FFFF */  addiu     $v1, $a0, -0x1
/* 3EC40 80063840 AC430008 */  sw        $v1, 0x8($v0)
/* 3EC44 80063844 8FC20020 */  lw        $v0, 0x20($fp)
/* 3EC48 80063848 8C430004 */  lw        $v1, 0x4($v0)
/* 3EC4C 8006384C 8C620000 */  lw        $v0, 0x0($v1)
/* 3EC50 80063850 10400007 */  beqz      $v0, .LIQUE_80063870
/* 3EC54 80063854 00000000 */   nop
/* 3EC58 80063858 8FC30020 */  lw        $v1, 0x20($fp)
/* 3EC5C 8006385C 24620004 */  addiu     $v0, $v1, 0x4
/* 3EC60 80063860 0C019AD6 */  jal       __osPopThread
/* 3EC64 80063864 00402021 */   addu     $a0, $v0, $zero
/* 3EC68 80063868 0C0190A0 */  jal       osStartThread
/* 3EC6C 8006386C 00402021 */   addu     $a0, $v0, $zero
.LIQUE_80063870:
/* 3EC70 80063870 0C019B5C */  jal       __osRestoreInt
/* 3EC74 80063874 02002021 */   addu     $a0, $s0, $zero
/* 3EC78 80063878 08018E20 */  j         .LIQUE_80063880
/* 3EC7C 8006387C 00001021 */   addu     $v0, $zero, $zero
.LIQUE_80063880:
/* 3EC80 80063880 03C0E821 */  addu      $sp, $fp, $zero
/* 3EC84 80063884 8FBF0018 */  lw        $ra, 0x18($sp)
/* 3EC88 80063888 8FBE0014 */  lw        $fp, 0x14($sp)
/* 3EC8C 8006388C 8FB00010 */  lw        $s0, 0x10($sp)
/* 3EC90 80063890 03E00008 */  jr        $ra
/* 3EC94 80063894 27BD0020 */   addiu    $sp, $sp, 0x20
/* 3EC98 80063898 00000000 */  nop
/* 3EC9C 8006389C 00000000 */  nop
