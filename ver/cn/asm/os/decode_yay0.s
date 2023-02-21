.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel decode_yay0
/* 49780 8006E380 8C980004 */  lw        $t8, 0x4($a0)
/* 49784 8006E384 8C870008 */  lw        $a3, 0x8($a0)
/* 49788 8006E388 8C99000C */  lw        $t9, 0xC($a0)
/* 4978C 8006E38C 0000302D */  daddu     $a2, $zero, $zero
/* 49790 8006E390 0305C020 */  add       $t8, $t8, $a1 # handwritten instruction
/* 49794 8006E394 00E43820 */  add       $a3, $a3, $a0 # handwritten instruction
/* 49798 8006E398 0324C820 */  add       $t9, $t9, $a0 # handwritten instruction
/* 4979C 8006E39C 20840010 */  addi      $a0, $a0, 0x10 # handwritten instruction
.LIQUE_8006E3A0:
/* 497A0 8006E3A0 14C00004 */  bnez      $a2, .LIQUE_8006E3B4
/* 497A4 8006E3A4 00000000 */   nop
/* 497A8 8006E3A8 8C880000 */  lw        $t0, 0x0($a0)
/* 497AC 8006E3AC 24060020 */  addiu     $a2, $zero, 0x20
/* 497B0 8006E3B0 20840004 */  addi      $a0, $a0, 0x4 # handwritten instruction
.LIQUE_8006E3B4:
/* 497B4 8006E3B4 0100482A */  slt       $t1, $t0, $zero
/* 497B8 8006E3B8 11200006 */  beqz      $t1, .LIQUE_8006E3D4
/* 497BC 8006E3BC 00000000 */   nop
/* 497C0 8006E3C0 832A0000 */  lb        $t2, 0x0($t9)
/* 497C4 8006E3C4 23390001 */  addi      $t9, $t9, 0x1 # handwritten instruction
/* 497C8 8006E3C8 A0AA0000 */  sb        $t2, 0x0($a1)
/* 497CC 8006E3CC 1000000E */  b         .LIQUE_8006E408
/* 497D0 8006E3D0 20A50001 */   addi     $a1, $a1, 0x1 # handwritten instruction
.LIQUE_8006E3D4:
/* 497D4 8006E3D4 94EA0000 */  lhu       $t2, 0x0($a3)
/* 497D8 8006E3D8 20E70002 */  addi      $a3, $a3, 0x2 # handwritten instruction
/* 497DC 8006E3DC 000A5B02 */  srl       $t3, $t2, 12
/* 497E0 8006E3E0 314A0FFF */  andi      $t2, $t2, 0xFFF
/* 497E4 8006E3E4 1160000D */  beqz      $t3, .LIQUE_8006E41C
/* 497E8 8006E3E8 00AA4822 */   sub      $t1, $a1, $t2
/* 497EC 8006E3EC 216B0002 */  addi      $t3, $t3, 0x2 # handwritten instruction
.LIQUE_8006E3F0:
/* 497F0 8006E3F0 812AFFFF */  lb        $t2, -0x1($t1)
/* 497F4 8006E3F4 216BFFFF */  addi      $t3, $t3, -0x1 # handwritten instruction
/* 497F8 8006E3F8 21290001 */  addi      $t1, $t1, 0x1 # handwritten instruction
/* 497FC 8006E3FC A0AA0000 */  sb        $t2, 0x0($a1)
/* 49800 8006E400 1560FFFB */  bnez      $t3, .LIQUE_8006E3F0
/* 49804 8006E404 20A50001 */   addi     $a1, $a1, 0x1 # handwritten instruction
.LIQUE_8006E408:
/* 49808 8006E408 00084040 */  sll       $t0, $t0, 1
/* 4980C 8006E40C 14B8FFE4 */  bne       $a1, $t8, .LIQUE_8006E3A0
/* 49810 8006E410 20C6FFFF */   addi     $a2, $a2, -0x1 # handwritten instruction
/* 49814 8006E414 03E00008 */  jr        $ra
/* 49818 8006E418 00000000 */   nop
.LIQUE_8006E41C:
/* 4981C 8006E41C 932B0000 */  lbu       $t3, 0x0($t9)
/* 49820 8006E420 23390001 */  addi      $t9, $t9, 0x1 # handwritten instruction
/* 49824 8006E424 1000FFF2 */  b         .LIQUE_8006E3F0
/* 49828 8006E428 216B0012 */   addi     $t3, $t3, 0x12 # handwritten instruction
/* 4982C 8006E42C 00000000 */  nop
