.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel osCreateThread
/* 3F400 80064000 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 3F404 80064004 AFBF0020 */  sw        $ra, 0x20($sp)
/* 3F408 80064008 AFBE001C */  sw        $fp, 0x1C($sp)
/* 3F40C 8006400C AFB00018 */  sw        $s0, 0x18($sp)
/* 3F410 80064010 03A0F021 */  addu      $fp, $sp, $zero
/* 3F414 80064014 AFC40028 */  sw        $a0, 0x28($fp)
/* 3F418 80064018 AFC5002C */  sw        $a1, 0x2C($fp)
/* 3F41C 8006401C AFC60030 */  sw        $a2, 0x30($fp)
/* 3F420 80064020 AFC70034 */  sw        $a3, 0x34($fp)
/* 3F424 80064024 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F428 80064028 8FC3002C */  lw        $v1, 0x2C($fp)
/* 3F42C 8006402C AC430014 */  sw        $v1, 0x14($v0)
/* 3F430 80064030 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F434 80064034 8FC3003C */  lw        $v1, 0x3C($fp)
/* 3F438 80064038 AC430004 */  sw        $v1, 0x4($v0)
/* 3F43C 8006403C 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F440 80064040 AC400000 */  sw        $zero, 0x0($v0)
/* 3F444 80064044 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F448 80064048 AC400008 */  sw        $zero, 0x8($v0)
/* 3F44C 8006404C 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F450 80064050 8FC30030 */  lw        $v1, 0x30($fp)
/* 3F454 80064054 AC43011C */  sw        $v1, 0x11C($v0)
/* 3F458 80064058 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F45C 8006405C 8FC30034 */  lw        $v1, 0x34($fp)
/* 3F460 80064060 AC43003C */  sw        $v1, 0x3C($v0)
/* 3F464 80064064 00031FC3 */  sra       $v1, $v1, 31
/* 3F468 80064068 AC430038 */  sw        $v1, 0x38($v0)
/* 3F46C 8006406C 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F470 80064070 8FC60038 */  lw        $a2, 0x38($fp)
/* 3F474 80064074 00061FC3 */  sra       $v1, $a2, 31
/* 3F478 80064078 8FC50038 */  lw        $a1, 0x38($fp)
/* 3F47C 8006407C 00602021 */  addu      $a0, $v1, $zero
/* 3F480 80064080 24A7FFF0 */  addiu     $a3, $a1, -0x10
/* 3F484 80064084 2CE3FFF0 */  sltiu     $v1, $a3, -0x10
/* 3F488 80064088 2486FFFF */  addiu     $a2, $a0, -0x1
/* 3F48C 8006408C 00C33021 */  addu      $a2, $a2, $v1
/* 3F490 80064090 AC4600F0 */  sw        $a2, 0xF0($v0)
/* 3F494 80064094 AC4700F4 */  sw        $a3, 0xF4($v0)
/* 3F498 80064098 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F49C 8006409C 3C068006 */  lui       $a2, %hi(__osCleanupThread)
/* 3F4A0 800640A0 24C66CF0 */  addiu     $a2, $a2, %lo(__osCleanupThread)
/* 3F4A4 800640A4 00061FC3 */  sra       $v1, $a2, 31
/* 3F4A8 800640A8 3C058006 */  lui       $a1, %hi(__osCleanupThread)
/* 3F4AC 800640AC 24A56CF0 */  addiu     $a1, $a1, %lo(__osCleanupThread)
/* 3F4B0 800640B0 00602021 */  addu      $a0, $v1, $zero
/* 3F4B4 800640B4 AC440100 */  sw        $a0, 0x100($v0)
/* 3F4B8 800640B8 AC450104 */  sw        $a1, 0x104($v0)
/* 3F4BC 800640BC 3C02003F */  lui       $v0, (0x3FFF01 >> 16)
/* 3F4C0 800640C0 3442FF01 */  ori       $v0, $v0, (0x3FFF01 & 0xFFFF)
/* 3F4C4 800640C4 AFC20010 */  sw        $v0, 0x10($fp)
/* 3F4C8 800640C8 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F4CC 800640CC 8FC40010 */  lw        $a0, 0x10($fp)
/* 3F4D0 800640D0 3083FF01 */  andi      $v1, $a0, 0xFF01
/* 3F4D4 800640D4 34640002 */  ori       $a0, $v1, 0x2
/* 3F4D8 800640D8 AC440118 */  sw        $a0, 0x118($v0)
/* 3F4DC 800640DC 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F4E0 800640E0 8FC30010 */  lw        $v1, 0x10($fp)
/* 3F4E4 800640E4 3C04003F */  lui       $a0, (0x3F0000 >> 16)
/* 3F4E8 800640E8 00641824 */  and       $v1, $v1, $a0
/* 3F4EC 800640EC 00032402 */  srl       $a0, $v1, 16
/* 3F4F0 800640F0 AC440128 */  sw        $a0, 0x128($v0)
/* 3F4F4 800640F4 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F4F8 800640F8 3C030100 */  lui       $v1, (0x1000800 >> 16)
/* 3F4FC 800640FC 34630800 */  ori       $v1, $v1, (0x1000800 & 0xFFFF)
/* 3F500 80064100 AC43012C */  sw        $v1, 0x12C($v0)
/* 3F504 80064104 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F508 80064108 AC400018 */  sw        $zero, 0x18($v0)
/* 3F50C 8006410C 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F510 80064110 24030001 */  addiu     $v1, $zero, 0x1
/* 3F514 80064114 A4430010 */  sh        $v1, 0x10($v0)
/* 3F518 80064118 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F51C 8006411C 0C019B40 */  jal       __osDisableInt
/* 3F520 80064120 A4400012 */   sh       $zero, 0x12($v0)
/* 3F524 80064124 00408021 */  addu      $s0, $v0, $zero
/* 3F528 80064128 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F52C 8006412C 3C038009 */  lui       $v1, %hi(__osActiveQueue)
/* 3F530 80064130 8C63327C */  lw        $v1, %lo(__osActiveQueue)($v1)
/* 3F534 80064134 AC43000C */  sw        $v1, 0xC($v0)
/* 3F538 80064138 8FC20028 */  lw        $v0, 0x28($fp)
/* 3F53C 8006413C 3C018009 */  lui       $at, %hi(__osActiveQueue)
/* 3F540 80064140 AC22327C */  sw        $v0, %lo(__osActiveQueue)($at)
/* 3F544 80064144 0C019B5C */  jal       __osRestoreInt
/* 3F548 80064148 02002021 */   addu     $a0, $s0, $zero
/* 3F54C 8006414C 03C0E821 */  addu      $sp, $fp, $zero
/* 3F550 80064150 8FBF0020 */  lw        $ra, 0x20($sp)
/* 3F554 80064154 8FBE001C */  lw        $fp, 0x1C($sp)
/* 3F558 80064158 8FB00018 */  lw        $s0, 0x18($sp)
/* 3F55C 8006415C 03E00008 */  jr        $ra
/* 3F560 80064160 27BD0028 */   addiu    $sp, $sp, 0x28
/* 3F564 80064164 00000000 */  nop
/* 3F568 80064168 00000000 */  nop
/* 3F56C 8006416C 00000000 */  nop
