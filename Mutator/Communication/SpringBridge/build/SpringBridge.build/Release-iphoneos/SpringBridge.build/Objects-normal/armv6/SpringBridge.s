	.section __TEXT,__text,regular
	.section __TEXT,__textcoal_nt,coalesced
	.section __TEXT,__const_coal,coalesced
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.section __DWARF,__debug_frame,regular,debug
Lsection__debug_frame:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
	.section __DWARF,__debug_abbrev,regular,debug
Lsection__debug_abbrev:
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.section __DWARF,__debug_macinfo,regular,debug
Lsection__debug_macinfo:
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
	.section __DWARF,__debug_abbrev,regular,debug
Ldebug_abbrev0:
	.section __DWARF,__debug_info,regular,debug
Ldebug_info0:
	.section __DWARF,__debug_line,regular,debug
Ldebug_line0:
	.text
Ltext0:
	.private_extern _Debug_
	.globl _Debug_
	.data
_Debug_:
	.byte	1
	.private_extern _Engineer_
	.globl _Engineer_
_Engineer_:
	.space 1
	.cstring
	.align 2
LC0:
	.ascii "WB:Error: failed to inject [%s %s]\0"
	.section __DATA, __cfstring
	.align 2
LC1:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC0
	.long	34
	.text
	.align 1
	.globl _SpringBridgeInject
	.private_extern _SpringBridgeInject
	.code 16
	.thumb_func _SpringBridgeInject
_SpringBridgeInject:
LFB140:
LM1:
	push	{r4, r7, lr}
LCFI0:
	add	r7, sp, #4
LCFI1:
	sub	sp, sp, #20
LCFI2:
	add	r4, sp, #12
	str	r0, [r4]
	add	r0, sp, #8
	str	r1, [r0]
	add	r1, sp, #4
	str	r2, [r1]
	mov	r2, sp
	str	r3, [r2]
LM2:
	add	r3, sp, #12
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_objc_getClass$stub
	mov	r2, r0
	add	r3, sp, #16
	str	r2, [r3]
LM3:
	add	r3, sp, #16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	L5
LM4:
	add	r3, sp, #8
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_sel_registerName$stub
	mov	r1, r0
	add	r3, sp, #16
	ldr	r2, [r3]
	add	r3, sp, #4
	ldr	r4, [r3]
	mov	r3, sp
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r4
	blx	L_class_addMethod$stub
	mov	r3, r0
	uxtb	r3, r3
	cmp	r3, #0
	bne	L5
LM5:
	ldr	r2, L6
	add	r3, sp, #12
	ldr	r1, [r3]
	add	r3, sp, #8
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r3
	blx	L_NSLog$stub
L5:
LM6:
	add	sp, sp, #20
	@ sp needed for prologue
	pop	{r4, r7, pc}
	.p2align 2
L7:
	.align 2
L6:
	.long	LC1
LFE140:
	.cstring
	.align 2
LC4:
	.ascii "WB:Warning: cannot find class [%s]\0"
	.section __DATA, __cfstring
	.align 2
LC5:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC4
	.long	34
	.cstring
	.align 2
LC7:
	.ascii "WB:Warning: cannot find method [%s %s]\0"
	.section __DATA, __cfstring
	.align 2
LC8:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC7
	.long	38
	.cstring
	.align 2
LC10:
	.ascii "lh_\0"
	.align 2
LC12:
	.ascii "WB:Error: failed to rename [%s %s]\0"
	.section __DATA, __cfstring
	.align 2
LC13:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC12
	.long	34
	.text
	.align 1
	.globl _SpringBridgeRename
	.private_extern _SpringBridgeRename
	.code 16
	.thumb_func _SpringBridgeRename
_SpringBridgeRename:
LFB141:
LM7:
	push	{r4, r5, r7, lr}
LCFI3:
	add	r7, sp, #8
LCFI4:
	sub	sp, sp, #56
LCFI5:
	mov	r4, r0
	mov	r0, r7
	sub	r0, r0, #48
	str	r1, [r0]
	mov	r1, r7
	sub	r1, r1, #52
	str	r2, [r1]
	mov	r2, r7
	sub	r2, r2, #56
	str	r3, [r2]
	mov	r2, r7
	sub	r2, r2, #44
	add	r3, r4, #0
	strb	r3, [r2]
LM8:
	mov	ip, sp
	mov	r2, ip
	mov	r3, #60
	neg	r3, r3
	add	r3, r3, r7
	str	r2, [r3]
LM9:
	mov	r3, r7
	sub	r3, r3, #48
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_objc_getClass$stub
	mov	r2, r0
	mov	r3, r7
	sub	r3, r3, #32
	str	r2, [r3]
LM10:
	mov	r3, r7
	sub	r3, r3, #32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	L9
LM11:
	ldr	r3, L36
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	LCB122
	b	L13	@long jump
LCB122:
LM12:
	ldr	r3, L36+4
	mov	r2, r7
	sub	r2, r2, #48
	ldr	r2, [r2]
	mov	r0, r3
	mov	r1, r2
	blx	L_NSLog$stub
	b	L13
L9:
LM13:
	mov	r3, r7
	sub	r3, r3, #44
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	L14
LM14:
	mov	r3, r7
	sub	r3, r3, #32
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_object_getClass$stub
	mov	r2, r0
	mov	r3, r7
	sub	r3, r3, #32
	str	r2, [r3]
L14:
LM15:
	mov	r3, r7
	sub	r3, r3, #52
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_sel_getUid$stub
	mov	r2, r0
	mov	r3, r7
	sub	r3, r3, #32
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, r2
	blx	L_class_getInstanceMethod$stub
	mov	r2, r0
	mov	r3, r7
	sub	r3, r3, #28
	str	r2, [r3]
LM16:
	mov	r3, r7
	sub	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	L16
LM17:
	ldr	r3, L36
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	LCB183
	b	L13	@long jump
LCB183:
LM18:
	ldr	r2, L36+8
	mov	r3, r7
	sub	r3, r3, #48
	ldr	r1, [r3]
	mov	r3, r7
	sub	r3, r3, #52
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r3
	blx	L_NSLog$stub
	b	L13
L16:
LM19:
	mov	r3, r7
	sub	r3, r3, #52
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_strlen$stub
	mov	r2, r0
	mov	r3, r7
	sub	r3, r3, #24
	str	r2, [r3]
LM20:
	mov	r3, r7
	sub	r3, r3, #24
	ldr	r3, [r3]
	add	r3, r3, #4
	add	r3, r3, #3
	add	r3, r3, #3
	lsr	r3, r3, #2
	lsl	r3, r3, #2
	mov	r2, sp
	sub	r2, r2, r3
	mov	sp, r2
	mov	r3, sp
	mov	r2, #64
	neg	r2, r2
	add	r2, r2, r7
	str	r3, [r2]
	mov	r2, #64
	neg	r2, r2
	add	r2, r2, r7
	ldr	r3, [r2]
	add	r3, r3, #3
	lsr	r3, r3, #2
	lsl	r3, r3, #2
	mov	r2, #64
	neg	r2, r2
	add	r2, r2, r7
	str	r3, [r2]
	mov	r3, r7
	sub	r3, r3, #36
	mov	r2, #64
	neg	r2, r2
	add	r2, r2, r7
	ldr	r2, [r2]
	str	r2, [r3]
LM21:
	mov	r3, r7
	sub	r3, r3, #36
	ldr	r3, [r3]
	ldr	r2, L36+12
	mov	r0, r3
	mov	r1, r2
	mov	r2, #3
	blx	L_memcpy$stub
LM22:
	mov	r3, r7
	sub	r3, r3, #36
	ldr	r3, [r3]
	add	r1, r3, #3
	mov	r3, r7
	sub	r3, r3, #24
	ldr	r3, [r3]
	add	r2, r3, #1
	mov	r3, r7
	sub	r3, r3, #52
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r3
	blx	L_memcpy$stub
LM23:
	mov	r3, r7
	sub	r3, r3, #28
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_method_getTypeEncoding$stub
	mov	r2, r0
	mov	r3, r7
	sub	r3, r3, #20
	str	r2, [r3]
LM24:
	mov	r3, r7
	sub	r3, r3, #36
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_sel_registerName$stub
	mov	r5, r0
	mov	r3, r7
	sub	r3, r3, #28
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_method_getImplementation$stub
	mov	r4, r0
	mov	r3, r7
	sub	r3, r3, #32
	ldr	r2, [r3]
	mov	r3, r7
	sub	r3, r3, #20
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r5
	mov	r2, r4
	blx	L_class_addMethod$stub
	mov	r3, r0
	uxtb	r3, r3
	cmp	r3, #0
	bne	L20
LM25:
	ldr	r2, L36+16
	mov	r3, r7
	sub	r3, r3, #48
	ldr	r1, [r3]
	mov	r3, r7
	sub	r3, r3, #52
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r3
	blx	L_NSLog$stub
L20:
LM26:
	mov	r3, r7
	sub	r3, r3, #32
	ldr	r3, [r3]
	mov	r2, r7
	sub	r2, r2, #40
	mov	r0, r3
	mov	r1, r2
	blx	L_class_copyMethodList$stub
	mov	r2, r0
	mov	r3, r7
	sub	r3, r3, #16
	str	r2, [r3]
LM27:
	mov	r2, r7
	sub	r2, r2, #12
	mov	r3, #0
	str	r3, [r2]
	b	L22
L23:
LM28:
	mov	r3, r7
	sub	r3, r3, #12
	ldr	r3, [r3]
	lsl	r3, r3, #2
	mov	r2, r3
	mov	r3, r7
	sub	r3, r3, #16
	ldr	r3, [r3]
	add	r3, r2, r3
	ldr	r2, [r3]
	mov	r3, r7
	sub	r3, r3, #28
	ldr	r3, [r3]
	cmp	r2, r3
	beq	L24
LM29:
	mov	r2, r7
	sub	r2, r2, #12
	mov	r3, r7
	sub	r3, r3, #12
	ldr	r3, [r3]
	add	r3, r3, #1
	str	r3, [r2]
L22:
	mov	r3, r7
	sub	r3, r3, #40
	ldr	r2, [r3]
	mov	r3, r7
	sub	r3, r3, #12
	ldr	r3, [r3]
	cmp	r3, r2
	bne	L23
LM30:
	mov	r3, r7
	sub	r3, r3, #56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	L30
LM31:
	mov	r3, r7
	sub	r3, r3, #52
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_sel_getUid$stub
	mov	r1, r0
	mov	r3, r7
	sub	r3, r3, #32
	ldr	r2, [r3]
	mov	r3, r7
	sub	r3, r3, #56
	ldr	r4, [r3]
	mov	r3, r7
	sub	r3, r3, #20
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r4
	blx	L_class_addMethod$stub
	mov	r3, r0
	uxtb	r3, r3
	cmp	r3, #0
	bne	L30
LM32:
	ldr	r2, L36+16
	mov	r3, r7
	sub	r3, r3, #48
	ldr	r1, [r3]
	mov	r3, r7
	sub	r3, r3, #52
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r3
	blx	L_NSLog$stub
LM33:
	b	L30
L24:
LM34:
	mov	r3, r7
	sub	r3, r3, #56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	L30
LM35:
	mov	r3, r7
	sub	r3, r3, #28
	ldr	r2, [r3]
	mov	r3, r7
	sub	r3, r3, #56
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_method_setImplementation$stub
L30:
LM36:
	mov	r3, r7
	sub	r3, r3, #16
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_free$stub
L13:
	mov	r3, #60
	neg	r3, r3
	add	r3, r3, r7
	ldr	r3, [r3]
	mov	sp, r3
LM37:
	mov	r3, r7
	sub	r3, r3, #8
	mov	sp, r3
	@ sp needed for prologue
	pop	{r4, r5, r7, pc}
	.p2align 2
L37:
	.align 2
L36:
	.long	_Debug_
	.long	LC5
	.long	LC8
	.long	LC10
	.long	LC13
LFE141:
	.align 1
	.code 16
	.thumb_func _SpringBridge_uiapplication_specialLaunchApp
_SpringBridge_uiapplication_specialLaunchApp:
LFB142:
LM38:
	push	{r7, lr}
LCFI6:
	add	r7, sp, #0
LCFI7:
	sub	sp, sp, #12
LCFI8:
	add	r3, sp, #8
	str	r0, [r3]
	add	r3, sp, #4
	str	r1, [r3]
	mov	r3, sp
	str	r2, [r3]
LM39:
	ldr	r3, L41
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, L41+4
	ldr	r1, [r3]
	mov	r3, sp
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r3
	blx	L_objc_msgSend$stub
LM40:
	add	sp, sp, #12
	@ sp needed for prologue
	pop	{r7, pc}
	.p2align 2
L42:
	.align 2
L41:
	.long	L_relay$non_lazy_ptr
	.long	L_OBJC_SELECTOR_REFERENCES_0
LFE142:
	.cstring
	.align 2
LC23:
	.ascii "springboard\0"
	.section __DATA, __cfstring
	.align 2
LC24:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC23
	.long	11
	.cstring
	.align 2
LC30:
	.ascii "UIApplication\0"
	.align 2
LC32:
	.ascii "specialLaunchApp:\0"
	.align 2
LC34:
	.ascii "\0"
	.text
	.align 1
	.code 16
	.thumb_func _SpringBridgeInitializer
_SpringBridgeInitializer:
LFB143:
LM41:
	push	{r4, r5, r7, lr}
LCFI9:
	add	r7, sp, #8
LCFI10:
	sub	sp, sp, #12
LCFI11:
LM42:
	ldr	r3, L56
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, L56+4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	mov	r2, r3
	ldr	r3, L56+8
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #4
	str	r2, [r3]
LM43:
	ldr	r3, L56+12
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2]
LM44:
	ldr	r3, L56+16
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2]
LM45:
	ldr	r3, L56+20
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, L56+24
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	mov	r2, r3
	ldr	r3, L56+28
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #8
	str	r2, [r3]
LM46:
	add	r3, sp, #8
	ldr	r1, [r3]
	ldr	r3, L56+32
	ldr	r3, [r3]
	ldr	r2, L56+36
	mov	r0, r1
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	uxtb	r3, r3
	cmp	r3, #0
	beq	L46
LM47:
	ldr	r3, L56+40
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #1
	strb	r3, [r2]
LM48:
	ldr	r3, L56+44
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, L56+4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	mov	r2, r3
	ldr	r3, L56+8
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	mov	r2, r3
	ldr	r3, L56+12
	ldr	r3, [r3]
	str	r2, [r3]
LM49:
	ldr	r3, L56+12
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, L56+48
	ldr	r4, [r3]
	ldr	r3, L56+52
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r4
	mov	r3, #0
	blx	L_objc_msgSend$stub
	b	L51
L46:
LM50:
	ldr	r3, L56+40
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, #0
	strb	r3, [r2]
LM51:
	ldr	r5, L56+56
	ldr	r3, L56+60
	ldr	r2, L56+64
	ldr	r4, L56+68
	mov	r0, r3
	mov	r1, r2
	mov	r2, r5
	mov	r3, r4
	bl	_SpringBridgeInject
LM52:
	ldr	r3, L56+72
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, L56+4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	mov	r2, r3
	ldr	r3, L56+8
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	mov	r2, r3
	ldr	r3, L56+16
	ldr	r3, [r3]
	str	r2, [r3]
LM53:
	ldr	r3, L56+16
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, L56+48
	ldr	r4, [r3]
	ldr	r3, L56+52
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r1
	mov	r1, r4
	mov	r3, #0
	blx	L_objc_msgSend$stub
L51:
LM54:
	add	r3, sp, #4
	ldr	r2, [r3]
	ldr	r3, L56+76
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
LM55:
	add	sp, sp, #12
	@ sp needed for prologue
	pop	{r4, r5, r7, pc}
	.p2align 2
L57:
	.align 2
L56:
	.long	L_OBJC_CLASSLIST_REFERENCES_$_0
	.long	L_OBJC_SELECTOR_REFERENCES_1
	.long	L_OBJC_SELECTOR_REFERENCES_2
	.long	L_sbridge$non_lazy_ptr
	.long	L_relay$non_lazy_ptr
	.long	L_OBJC_CLASSLIST_REFERENCES_$_1
	.long	L_OBJC_SELECTOR_REFERENCES_3
	.long	L_OBJC_SELECTOR_REFERENCES_4
	.long	L_OBJC_SELECTOR_REFERENCES_5
	.long	LC24
	.long	L_isSpringBoard$non_lazy_ptr
	.long	L_OBJC_CLASSLIST_REFERENCES_$_2
	.long	L_OBJC_SELECTOR_REFERENCES_7
	.long	L_OBJC_SELECTOR_REFERENCES_6
	.long	_SpringBridge_uiapplication_specialLaunchApp
	.long	LC30
	.long	LC32
	.long	LC34
	.long	L_OBJC_CLASSLIST_REFERENCES_$_3
	.long	L_OBJC_SELECTOR_REFERENCES_8
LFE143:
	.mod_init_func
	.align 2
	.long	_SpringBridgeInitializer
	.text
	.align 1
	.code 16
	.thumb_func "-[SpringBridge didInjectIntoProgram]"
"-[SpringBridge didInjectIntoProgram]":
LFB144:
LM56:
	push	{r4, r5, r7, lr}
LCFI12:
	add	r7, sp, #8
LCFI13:
	sub	sp, sp, #16
LCFI14:
	add	r3, sp, #12
	str	r0, [r3]
	add	r3, sp, #8
	str	r1, [r3]
LM57:
	add	r3, sp, #12
	ldr	r1, [r3]
	ldr	r3, L60
	ldr	r5, [r3]
	ldr	r3, L60+4
	ldr	r2, [r3]
	ldr	r3, L60+8
	ldr	r4, L60+12
	str	r3, [sp]
	str	r4, [sp, #4]
	mov	r0, r1
	mov	r1, r5
	mov	r3, #0
	blx	L_objc_msgSend$stub
LM58:
	add	sp, sp, #16
	@ sp needed for prologue
	pop	{r4, r5, r7, pc}
	.p2align 2
L61:
	.align 2
L60:
	.long	L_OBJC_SELECTOR_REFERENCES_10
	.long	L_OBJC_SELECTOR_REFERENCES_9
	.long	-1717986918
	.long	1069128089
LFE144:
	.cstring
	.align 2
LC40:
	.ascii "SpringBridge initializing\0"
	.section __DATA, __cfstring
	.align 2
LC41:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC40
	.long	25
	.text
	.align 1
	.code 16
	.thumb_func "-[SpringBridge inject]"
"-[SpringBridge inject]":
LFB145:
LM59:
	push	{r7, lr}
LCFI15:
	add	r7, sp, #0
LCFI16:
	sub	sp, sp, #8
LCFI17:
	add	r3, sp, #4
	str	r0, [r3]
	mov	r3, sp
	str	r1, [r3]
LM60:
	ldr	r3, L64
	mov	r0, r3
	blx	L_NSLog$stub
LM61:
	add	r3, sp, #4
	ldr	r2, [r3]
	ldr	r3, L64+4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
LM62:
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r7, pc}
	.p2align 2
L65:
	.align 2
L64:
	.long	LC41
	.long	L_OBJC_SELECTOR_REFERENCES_11
LFE145:
	.cstring
	.align 2
LC48:
	.ascii "%s\0"
	.section __DATA, __cfstring
	.align 2
LC49:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC48
	.long	2
	.cstring
	.align 2
LC51:
	.ascii "SBUIController\0"
	.align 2
LC55:
	.ascii "SBApplicationController\0"
	.align 2
LC58:
	.ascii "com.apple.mobileslideshow-Camera\0"
	.section __DATA, __cfstring
	.align 2
LC59:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC58
	.long	32
	.cstring
	.align 2
LC61:
	.ascii "com.apple.mobileslideshow-Photos\0"
	.section __DATA, __cfstring
	.align 2
LC62:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC61
	.long	32
	.cstring
	.align 2
LC64:
	.ascii "Camera\0"
	.section __DATA, __cfstring
	.align 2
LC65:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC64
	.long	6
	.cstring
	.align 2
LC67:
	.ascii "Photos\0"
	.section __DATA, __cfstring
	.align 2
LC68:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC67
	.long	6
	.text
	.align 1
	.code 16
	.thumb_func _relayDataCallBack
_relayDataCallBack:
LFB146:
LM63:
	push	{r4, r5, r6, r7, lr}
LCFI18:
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
LCFI19:
	add	r7, sp, #20
LCFI20:
	sub	sp, sp, #184
LCFI21:
	add	r4, sp, #40
	str	r0, [r4]
	add	r0, sp, #36
	str	r1, [r0]
	add	r1, sp, #32
	str	r2, [r1]
	add	r2, sp, #28
	str	r3, [r2]
LM64:
	add	r2, sp, #44
	add	r3, sp, #28
	ldr	r3, [r3]
	str	r3, [r2]
LM65:
	add	r3, sp, #44
	ldr	r2, [r3]
	ldr	r3, L89
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r2, r0
	mov	r3, #128
	lsl	r3, r3, #1
	cmp	r2, r3
	beq	LCB847
	b	L88	@long jump
LCB847:
LBB2:
LM66:
	add	r3, sp, #44
	ldr	r2, [r3]
	ldr	r3, L89+4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #48
	str	r2, [r3]
LM67:
	ldr	r3, L89+8
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, L89+12
	ldr	r2, [r3]
	ldr	r4, L89+16
	add	r3, sp, #48
	ldr	r3, [r3]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r4
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #52
	str	r2, [r3]
LM68:
	ldr	r3, L89+20
	mov	r0, r3
	blx	L_objc_getClass$stub
	mov	r2, r0
	add	r3, sp, #56
	str	r2, [r3]
LM69:
	add	r3, sp, #56
	ldr	r2, [r3]
	ldr	r3, L89+24
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #60
	str	r2, [r3]
LM70:
	add	r3, sp, #60
	ldr	r2, [r3]
	ldr	r3, L89+28
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
LM71:
	ldr	r3, L89+32
	mov	r0, r3
	blx	L_objc_getClass$stub
	mov	r2, r0
	add	r3, sp, #64
	str	r2, [r3]
LM72:
	add	r3, sp, #64
	ldr	r2, [r3]
	ldr	r3, L89+24
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #68
	str	r2, [r3]
LM73:
	add	r3, sp, #52
	ldr	r1, [r3]
	ldr	r3, L89+36
	ldr	r3, [r3]
	ldr	r2, L89+40
	mov	r0, r1
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	uxtb	r3, r3
	cmp	r3, #0
	bne	L69
	add	r3, sp, #52
	ldr	r1, [r3]
	ldr	r3, L89+36
	ldr	r3, [r3]
	ldr	r2, L89+44
	mov	r0, r1
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	uxtb	r3, r3
	cmp	r3, #0
	bne	LCB944
	b	L71	@long jump
LCB944:
L69:
LBB3:
LM74:
	add	r2, sp, #72
	ldr	r3, L89+48
	str	r3, [r2]
LM75:
	add	r3, sp, #52
	ldr	r1, [r3]
	ldr	r3, L89+36
	ldr	r3, [r3]
	ldr	r2, L89+44
	mov	r0, r1
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	uxtb	r3, r3
	cmp	r3, #0
	bne	LCB963
	b	L88	@long jump
LCB963:
LM76:
	add	r2, sp, #72
	ldr	r3, L89+52
	str	r3, [r2]
LBB4:
LM77:
	add	r3, sp, #80
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	add	r3, sp, #68
	ldr	r3, [r3]
	str	r3, [sp, #8]
	ldr	r3, L89+56
	ldr	r3, [r3]
	ldr	r0, [sp, #8]
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	str	r3, [sp, #12]
	ldr	r3, L89+60
	ldr	r2, [r3]
	add	r4, sp, #80
	add	r5, sp, #112
	mov	r3, #16
	str	r3, [sp]
	ldr	r0, [sp, #12]
	mov	r1, r2
	mov	r2, r4
	mov	r3, r5
	blx	L_objc_msgSend$stub
	mov	r3, r0
	str	r3, [sp, #16]
	ldr	r1, [sp, #16]
	cmp	r1, #0
	beq	L74
	add	r3, sp, #80
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	str	r3, [sp, #20]
L76:
	mov	r2, #0
	str	r2, [sp, #24]
L77:
	add	r3, sp, #80
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	ldr	r1, [sp, #20]
	cmp	r3, r1
	beq	L78
	ldr	r3, L89+56
	ldr	r3, [r3]
	ldr	r0, [sp, #8]
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	mov	r0, r3
	blx	L_objc_enumerationMutation$stub
L78:
	add	r3, sp, #80
	ldr	r2, [r3, #4]
	ldr	r1, [sp, #24]
	lsl	r3, r1, #2
	add	r3, r2, r3
	add	r2, sp, #76
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r2, [sp, #24]
	add	r2, r2, #1
	str	r2, [sp, #24]
LBB5:
LM78:
	add	r3, sp, #76
	ldr	r2, [r3]
	ldr	r3, L89+64
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #176
	str	r2, [r3]
LM79:
	add	r3, sp, #176
	ldr	r2, [r3]
	ldr	r3, L89+36
	ldr	r1, [r3]
	add	r3, sp, #72
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	uxtb	r3, r3
	cmp	r3, #0
	beq	L80
LM80:
	ldr	r3, L89+68
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, L89+72
	ldr	r1, [r3]
	ldr	r3, L89+76
	ldr	r5, [r3]
	add	r3, sp, #76
	ldr	r6, [r3]
	ldr	r3, L89+80
	ldr	r4, L89+84
	str	r3, [sp]
	str	r4, [sp, #4]
	mov	r0, r2
	mov	r2, r5
	mov	r3, r6
	blx	L_objc_msgSend$stub
LM81:
	b	L88
L80:
LBE5:
LM82:
	ldr	r3, [sp, #24]
	ldr	r1, [sp, #16]
	cmp	r3, r1
	bcc	L77
	ldr	r3, L89+60
	ldr	r2, [r3]
	add	r4, sp, #80
	add	r5, sp, #112
	mov	r3, #16
	str	r3, [sp]
	ldr	r0, [sp, #12]
	mov	r1, r2
	mov	r2, r4
	mov	r3, r5
	blx	L_objc_msgSend$stub
	mov	r3, r0
	str	r3, [sp, #16]
	ldr	r2, [sp, #16]
	cmp	r2, #0
	bne	L76
	add	r2, sp, #76
	mov	r3, #0
	str	r3, [r2]
	b	L88
L74:
	add	r2, sp, #76
	mov	r3, #0
	str	r3, [r2]
LM83:
	b	L88
L71:
LBE4:
LBE3:
LBB6:
LM84:
	add	r3, sp, #68
	ldr	r2, [r3]
	ldr	r3, L89+88
	ldr	r1, [r3]
	add	r3, sp, #52
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r3
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #180
	str	r2, [r3]
LM85:
	add	r3, sp, #180
	ldr	r2, [r3]
	ldr	r3, L89+92
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	cmp	r3, #0
	beq	L88
LM86:
	ldr	r3, L89+68
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r6, r3
	ldr	r3, L89+72
	ldr	r1, [r3]
	mov	r8, r1
	ldr	r3, L89+76
	ldr	r2, [r3]
	mov	r10, r2
	add	r3, sp, #180
	ldr	r2, [r3]
	ldr	r3, L89+96
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	blx	L_objc_msgSend$stub
	mov	r5, r0
	ldr	r3, L89+80
	ldr	r4, L89+84
	str	r3, [sp]
	str	r4, [sp, #4]
	mov	r0, r6
	mov	r1, r8
	mov	r2, r10
	mov	r3, r5
	blx	L_objc_msgSend$stub
L88:
LBE6:
LBE2:
LM87:
	add	sp, sp, #184
	@ sp needed for prologue
	pop	{r2, r3}
	mov	r8, r2
	mov	r10, r3
	pop	{r4, r5, r6, r7, pc}
	.p2align 2
L90:
	.align 2
L89:
	.long	L_OBJC_SELECTOR_REFERENCES_12
	.long	L_OBJC_SELECTOR_REFERENCES_13
	.long	L_OBJC_CLASSLIST_REFERENCES_$_4
	.long	L_OBJC_SELECTOR_REFERENCES_14
	.long	LC49
	.long	LC51
	.long	L_OBJC_SELECTOR_REFERENCES_15
	.long	L_OBJC_SELECTOR_REFERENCES_16
	.long	LC55
	.long	L_OBJC_SELECTOR_REFERENCES_17
	.long	LC59
	.long	LC62
	.long	LC65
	.long	LC68
	.long	L_OBJC_SELECTOR_REFERENCES_18
	.long	L_OBJC_SELECTOR_REFERENCES_21
	.long	L_OBJC_SELECTOR_REFERENCES_19
	.long	L_sbridge$non_lazy_ptr
	.long	L_OBJC_SELECTOR_REFERENCES_10
	.long	L_OBJC_SELECTOR_REFERENCES_20
	.long	-1717986918
	.long	1069128089
	.long	L_OBJC_SELECTOR_REFERENCES_22
	.long	L_OBJC_SELECTOR_REFERENCES_23
	.long	L_OBJC_SELECTOR_REFERENCES_24
LFE146:
	.cstring
	.align 2
LC80:
	.ascii "launching now! %@\0"
	.section __DATA, __cfstring
	.align 2
LC81:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC80
	.long	17
	.text
	.align 1
	.code 16
	.thumb_func "-[SpringBridge launchTheApp:]"
"-[SpringBridge launchTheApp:]":
LFB147:
LM88:
	push	{r4, r5, r6, r7, lr}
LCFI22:
	add	r7, sp, #12
LCFI23:
	sub	sp, sp, #20
LCFI24:
	add	r3, sp, #8
	str	r0, [r3]
	add	r3, sp, #4
	str	r1, [r3]
	mov	r3, sp
	str	r2, [r3]
LM89:
	ldr	r3, L93
	ldr	r3, [r3]
	mov	r4, r3
	ldr	r3, L93+4
	ldr	r5, [r3]
	ldr	r6, L93+8
	mov	r3, sp
	ldr	r2, [r3]
	ldr	r3, L93+12
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r3, r0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	blx	L_objc_msgSend$stub
	mov	r3, r0
	mov	r0, r3
	blx	L_NSLog$stub
LM90:
	ldr	r3, L93+16
	mov	r0, r3
	blx	L_objc_getClass$stub
	mov	r2, r0
	add	r3, sp, #12
	str	r2, [r3]
LM91:
	add	r3, sp, #12
	ldr	r2, [r3]
	ldr	r3, L93+20
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #16
	str	r2, [r3]
LM92:
	add	r3, sp, #16
	ldr	r2, [r3]
	ldr	r3, L93+24
	ldr	r1, [r3]
	mov	r3, sp
	ldr	r3, [r3]
	mov	r0, r2
	mov	r2, r3
	blx	L_objc_msgSend$stub
LM93:
	add	sp, sp, #20
	@ sp needed for prologue
	pop	{r4, r5, r6, r7, pc}
	.p2align 2
L94:
	.align 2
L93:
	.long	L_OBJC_CLASSLIST_REFERENCES_$_4
	.long	L_OBJC_SELECTOR_REFERENCES_14
	.long	LC81
	.long	L_OBJC_SELECTOR_REFERENCES_4
	.long	LC51
	.long	L_OBJC_SELECTOR_REFERENCES_15
	.long	L_OBJC_SELECTOR_REFERENCES_25
LFE147:
	.cstring
	.align 2
LC88:
	.ascii "SpringBridge: Failed to create listen socket\0"
	.section __DATA, __cfstring
	.align 2
LC89:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC88
	.long	44
	.cstring
	.align 2
LC91:
	.ascii "127.0.0.1\0"
	.align 2
LC95:
	.ascii "SpringBridge: Failed to bind socket to port: error=%@\0"
	.section __DATA, __cfstring
	.align 2
LC96:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC95
	.long	53
	.cstring
	.align 2
LC98:
	.ascii "created socket and bound successfully!\0"
	.section __DATA, __cfstring
	.align 2
LC99:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC98
	.long	38
	.text
	.align 1
	.code 16
	.thumb_func "-[SpringBridge listenForRelayConnections]"
"-[SpringBridge listenForRelayConnections]":
LFB148:
LM94:
	push	{r4, r7, lr}
LCFI25:
	add	r7, sp, #4
LCFI26:
	sub	sp, sp, #76
LCFI27:
	add	r3, sp, #16
	str	r0, [r3]
	add	r3, sp, #12
	str	r1, [r3]
LM95:
	add	r2, sp, #36
	mov	r3, #0
	str	r3, [r2]
	add	r2, sp, #36
	add	r3, sp, #16
	ldr	r3, [r3]
	str	r3, [r2, #4]
	add	r2, sp, #36
	mov	r3, #0
	str	r3, [r2, #8]
	add	r2, sp, #36
	mov	r3, #0
	str	r3, [r2, #12]
	add	r2, sp, #36
	mov	r3, #0
	str	r3, [r2, #16]
LM96:
	ldr	r3, L105
	ldr	r3, [r3]
	ldr	r2, [r3]
	mov	r3, #3
	str	r3, [sp]
	mov	ip, sp
	ldr	r3, L105+4
	mov	r1, ip
	str	r3, [r1, #4]
	add	r3, sp, #36
	mov	ip, sp
	mov	r1, ip
	str	r3, [r1, #8]
	mov	r0, r2
	mov	r1, #2
	mov	r2, #2
	mov	r3, #17
	blx	L_CFSocketCreate$stub
	mov	r2, r0
	add	r3, sp, #56
	str	r2, [r3]
LM97:
	add	r3, sp, #56
	ldr	r3, [r3]
	cmp	r3, #0
	bne	L97
	ldr	r3, L105+8
	mov	r0, r3
	blx	L_NSLog$stub
	b	L104
L97:
LM98:
	add	r3, sp, #20
	mov	r0, r3
	mov	r1, #0
	mov	r2, #16
	blx	L_memset$stub
LM99:
	add	r2, sp, #20
	mov	r3, #16
	strb	r3, [r2]
LM100:
	add	r2, sp, #20
	mov	r3, #2
	strb	r3, [r2, #1]
LM101:
	add	r2, sp, #20
	ldr	r3, L105+12
	strh	r3, [r2, #2]
LM102:
	ldr	r3, L105+16
	mov	r0, r3
	blx	L_inet_addr$stub
	mov	r2, r0
	add	r3, sp, #20
	str	r2, [r3, #4]
LM103:
	ldr	r3, L105+20
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, L105+24
	ldr	r3, [r3]
	add	r2, sp, #20
	mov	r0, r1
	mov	r1, r3
	mov	r3, #16
	blx	L_objc_msgSend$stub
	mov	r2, r0
	add	r3, sp, #60
	str	r2, [r3]
LM104:
	add	r3, sp, #60
	ldr	r2, [r3]
	add	r3, sp, #56
	ldr	r3, [r3]
	mov	r0, r3
	mov	r1, r2
	blx	L_CFSocketSetAddress$stub
	mov	r2, r0
	add	r3, sp, #64
	str	r2, [r3]
	add	r3, sp, #64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	L100
LM105:
	ldr	r4, L105+28
	blx	L___error$stub
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_strerror$stub
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	blx	L_NSLog$stub
LM106:
	add	r3, sp, #56
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_CFRelease$stub
LM107:
	b	L104
L100:
LM108:
	blx	L_CFRunLoopGetCurrent$stub
	mov	r2, r0
	add	r3, sp, #68
	str	r2, [r3]
LM109:
	ldr	r3, L105
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, sp, #56
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	blx	L_CFSocketCreateRunLoopSource$stub
	mov	r2, r0
	add	r3, sp, #72
	str	r2, [r3]
LM110:
	ldr	r3, L105+32
	ldr	r3, [r3]
	ldr	r4, [r3]
	add	r3, sp, #68
	ldr	r2, [r3]
	add	r3, sp, #72
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	mov	r2, r4
	blx	L_CFRunLoopAddSource$stub
LM111:
	add	r3, sp, #72
	ldr	r3, [r3]
	mov	r0, r3
	blx	L_CFRelease$stub
LM112:
	ldr	r3, L105+36
	mov	r0, r3
	blx	L_NSLog$stub
L104:
LM113:
	add	sp, sp, #76
	@ sp needed for prologue
	pop	{r4, r7, pc}
	.p2align 2
L106:
	.align 2
L105:
	.long	L_kCFAllocatorDefault$non_lazy_ptr
	.long	_relayDataCallBack
	.long	LC89
	.long	12405
	.long	LC91
	.long	L_OBJC_CLASSLIST_REFERENCES_$_5
	.long	L_OBJC_SELECTOR_REFERENCES_26
	.long	LC96
	.long	L_kCFRunLoopCommonModes$non_lazy_ptr
	.long	LC99
LFE148:
	.align 1
	.code 16
	.thumb_func "-[SpringBridgeRelay didInjectIntoProgram]"
"-[SpringBridgeRelay didInjectIntoProgram]":
LFB149:
LM114:
	push	{r4, r5, r7, lr}
LCFI28:
	add	r7, sp, #8
LCFI29:
	sub	sp, sp, #16
LCFI30:
	add	r3, sp, #12
	str	r0, [r3]
	add	r3, sp, #8
	str	r1, [r3]
LM115:
	add	r3, sp, #12
	ldr	r1, [r3]
	ldr	r3, L109
	ldr	r5, [r3]
	ldr	r3, L109+4
	ldr	r2, [r3]
	ldr	r3, L109+8
	ldr	r4, L109+12
	str	r3, [sp]
	str	r4, [sp, #4]
	mov	r0, r1
	mov	r1, r5
	mov	r3, #0
	blx	L_objc_msgSend$stub
LM116:
	add	sp, sp, #16
	@ sp needed for prologue
	pop	{r4, r5, r7, pc}
	.p2align 2
L110:
	.align 2
L109:
	.long	L_OBJC_SELECTOR_REFERENCES_10
	.long	L_OBJC_SELECTOR_REFERENCES_9
	.long	-1717986918
	.long	1069128089
LFE149:
	.align 1
	.code 16
	.thumb_func "-[SpringBridgeRelay inject]"
"-[SpringBridgeRelay inject]":
LFB150:
LM117:
	push	{r4, r7, lr}
LCFI31:
	add	r7, sp, #4
LCFI32:
	sub	sp, sp, #8
LCFI33:
	add	r3, sp, #4
	str	r0, [r3]
	mov	r3, sp
	str	r1, [r3]
LM118:
	add	r3, sp, #4
	ldr	r2, [r3]
	ldr	r3, L118
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r3, r2, r3
	mov	r4, r3
	mov	r0, #2
	mov	r1, #2
	mov	r2, #17
	blx	L_socket$stub
	mov	r3, r0
	str	r3, [r4]
LM119:
	add	r3, sp, #4
	ldr	r2, [r3]
	ldr	r3, L118+4
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r3, r2, r3
	mov	r2, r3
	mov	r3, #2
	strb	r3, [r2, #1]
LM120:
	add	r3, sp, #4
	ldr	r2, [r3]
	ldr	r3, L118+4
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r3, r2, r3
	mov	r2, r3
	mov	r3, #16
	strb	r3, [r2]
LM121:
	add	r3, sp, #4
	ldr	r2, [r3]
	ldr	r3, L118+4
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, L118+8
	strh	r3, [r2, #2]
LM122:
	add	r3, sp, #4
	ldr	r2, [r3]
	ldr	r3, L118+4
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r3, r2, r3
	mov	r4, r3
	ldr	r3, L118+12
	mov	r0, r3
	blx	L_inet_addr$stub
	mov	r3, r0
	str	r3, [r4, #4]
LM123:
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, r7, pc}
	.p2align 2
L119:
	.align 2
L118:
	.long	L_OBJC_IVAR_$_SpringBridgeRelay.sock$non_lazy_ptr
	.long	L_OBJC_IVAR_$_SpringBridgeRelay.serverAddr$non_lazy_ptr
	.long	12405
	.long	LC91
LFE150:
	.align 1
	.code 16
	.thumb_func "-[SpringBridgeRelay sendAppForLaunch:]"
"-[SpringBridgeRelay sendAppForLaunch:]":
LFB151:
LM124:
	push	{r4, r7, lr}
LCFI34:
	add	r7, sp, #4
LCFI35:
	sub	sp, sp, #276
LCFI36:
	ldr	r3, L124
	add	r4, sp, #276
	add	r3, r4, r3
	str	r0, [r3]
	ldr	r3, L124+4
	add	r0, sp, #276
	add	r3, r0, r3
	str	r1, [r3]
	ldr	r3, L124+8
	add	r1, sp, #276
	add	r3, r1, r3
	str	r2, [r3]
LM125:
	add	r2, sp, #20
	mov	r3, #128
	lsl	r3, r3, #1
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	blx	L_memset$stub
LM126:
	ldr	r3, L124+8
	add	r2, sp, #276
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, L124+12
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	blx	L_objc_msgSend$stub
	mov	r1, r0
	add	r2, sp, #20
	mov	r3, #128
	lsl	r3, r3, #1
	mov	r0, r2
	mov	r2, r3
	blx	L_strncpy$stub
LM127:
	ldr	r3, L124
	add	r4, sp, #276
	add	r3, r4, r3
	ldr	r2, [r3]
	ldr	r3, L124+16
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r3, r2, r3
	ldr	r0, [r3]
	ldr	r3, L124
	add	r1, sp, #276
	add	r3, r1, r3
	ldr	r2, [r3]
	ldr	r3, L124+20
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r3, r2, r3
	add	r1, sp, #20
	mov	r2, #128
	lsl	r2, r2, #1
	str	r3, [sp]
	mov	ip, sp
	mov	r3, #16
	mov	r4, ip
	str	r3, [r4, #4]
	mov	r3, #0
	blx	L_sendto$stub
LM128:
	add	sp, sp, #276
	@ sp needed for prologue
	pop	{r4, r7, pc}
	.p2align 2
L125:
	.align 2
L124:
	.long	-260
	.long	-264
	.long	-268
	.long	L_OBJC_SELECTOR_REFERENCES_27
	.long	L_OBJC_IVAR_$_SpringBridgeRelay.sock$non_lazy_ptr
	.long	L_OBJC_IVAR_$_SpringBridgeRelay.serverAddr$non_lazy_ptr
LFE151:
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_0:
	.ascii "sock\0"
	.align 2
L_OBJC_METH_VAR_TYPE_0:
	.ascii "i\0"
	.align 2
L_OBJC_METH_VAR_NAME_1:
	.ascii "serverAddr\0"
	.align 2
L_OBJC_METH_VAR_TYPE_1:
	.ascii "{sockaddr_in=\"sin_len\"C\"sin_family\"C\"sin_port\"S\"sin_addr\"{in_addr=\"s_addr\"I}\"sin_zero\"[8c]}\0"
	.section __DATA, __objc_const
	.align 2
L_OBJC_$_INSTANCE_VARIABLES_SpringBridgeRelay:
	.long	20
	.long	2
	.long	_OBJC_IVAR_$_SpringBridgeRelay.sock
	.long	L_OBJC_METH_VAR_NAME_0
	.long	L_OBJC_METH_VAR_TYPE_0
	.long	2
	.long	4
	.long	_OBJC_IVAR_$_SpringBridgeRelay.serverAddr
	.long	L_OBJC_METH_VAR_NAME_1
	.long	L_OBJC_METH_VAR_TYPE_1
	.long	2
	.long	16
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_2:
	.ascii "sendAppForLaunch:\0"
	.align 2
L_OBJC_METH_VAR_TYPE_2:
	.ascii "v12@0:4@8\0"
	.align 2
L_OBJC_METH_VAR_NAME_3:
	.ascii "inject\0"
	.align 2
L_OBJC_METH_VAR_TYPE_3:
	.ascii "v8@0:4\0"
	.align 2
L_OBJC_METH_VAR_NAME_4:
	.ascii "didInjectIntoProgram\0"
	.section __DATA, __objc_const
	.align 2
L_OBJC_$_INSTANCE_METHODS_SpringBridgeRelay:
	.long	12
	.long	3
	.long	L_OBJC_METH_VAR_NAME_2
	.long	L_OBJC_METH_VAR_TYPE_2
	.long	"-[SpringBridgeRelay sendAppForLaunch:]"
	.long	L_OBJC_METH_VAR_NAME_3
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	"-[SpringBridgeRelay inject]"
	.long	L_OBJC_METH_VAR_NAME_4
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	"-[SpringBridgeRelay didInjectIntoProgram]"
	.cstring
	.align 2
L_OBJC_CLASS_NAME_0:
	.ascii "SpringBridgeRelay\0"
	.section __DATA, __objc_const
	.align 2
L_OBJC_METACLASS_RO_$_SpringBridgeRelay:
	.long	1
	.long	20
	.long	20
	.long	0
	.long	L_OBJC_CLASS_NAME_0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.private_extern _OBJC_METACLASS_$_SpringBridgeRelay
	.globl _OBJC_METACLASS_$_SpringBridgeRelay
	.section __DATA, __objc_data
	.align 2
_OBJC_METACLASS_$_SpringBridgeRelay:
	.long	_OBJC_METACLASS_$_NSObject
	.long	_OBJC_METACLASS_$_NSObject
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	L_OBJC_METACLASS_RO_$_SpringBridgeRelay
	.section __DATA, __objc_const
	.align 2
L_OBJC_CLASS_RO_$_SpringBridgeRelay:
	.long	0
	.long	4
	.long	24
	.long	0
	.long	L_OBJC_CLASS_NAME_0
	.long	L_OBJC_$_INSTANCE_METHODS_SpringBridgeRelay
	.long	0
	.long	L_OBJC_$_INSTANCE_VARIABLES_SpringBridgeRelay
	.long	0
	.long	0
	.private_extern _OBJC_CLASS_$_SpringBridgeRelay
	.globl _OBJC_CLASS_$_SpringBridgeRelay
	.section __DATA, __objc_data
	.align 2
_OBJC_CLASS_$_SpringBridgeRelay:
	.long	_OBJC_METACLASS_$_SpringBridgeRelay
	.long	_OBJC_CLASS_$_NSObject
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	L_OBJC_CLASS_RO_$_SpringBridgeRelay
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_5:
	.ascii "isDisplaying\0"
	.align 2
L_OBJC_METH_VAR_TYPE_4:
	.ascii "B\0"
	.section __DATA, __objc_const
	.align 2
L_OBJC_$_INSTANCE_VARIABLES_SpringBridge:
	.long	20
	.long	1
	.long	_OBJC_IVAR_$_SpringBridge.isDisplaying
	.long	L_OBJC_METH_VAR_NAME_5
	.long	L_OBJC_METH_VAR_TYPE_4
	.long	0
	.long	1
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_6:
	.ascii "listenForRelayConnections\0"
	.align 2
L_OBJC_METH_VAR_NAME_7:
	.ascii "launchTheApp:\0"
	.section __DATA, __objc_const
	.align 2
L_OBJC_$_INSTANCE_METHODS_SpringBridge:
	.long	12
	.long	4
	.long	L_OBJC_METH_VAR_NAME_6
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	"-[SpringBridge listenForRelayConnections]"
	.long	L_OBJC_METH_VAR_NAME_7
	.long	L_OBJC_METH_VAR_TYPE_2
	.long	"-[SpringBridge launchTheApp:]"
	.long	L_OBJC_METH_VAR_NAME_3
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	"-[SpringBridge inject]"
	.long	L_OBJC_METH_VAR_NAME_4
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	"-[SpringBridge didInjectIntoProgram]"
	.cstring
	.align 2
L_OBJC_CLASS_NAME_1:
	.ascii "SpringBridge\0"
	.section __DATA, __objc_const
	.align 2
L_OBJC_METACLASS_RO_$_SpringBridge:
	.long	1
	.long	20
	.long	20
	.long	0
	.long	L_OBJC_CLASS_NAME_1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.private_extern _OBJC_METACLASS_$_SpringBridge
	.globl _OBJC_METACLASS_$_SpringBridge
	.section __DATA, __objc_data
	.align 2
_OBJC_METACLASS_$_SpringBridge:
	.long	_OBJC_METACLASS_$_NSObject
	.long	_OBJC_METACLASS_$_NSObject
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	L_OBJC_METACLASS_RO_$_SpringBridge
	.section __DATA, __objc_const
	.align 2
L_OBJC_CLASS_RO_$_SpringBridge:
	.long	0
	.long	4
	.long	5
	.long	0
	.long	L_OBJC_CLASS_NAME_1
	.long	L_OBJC_$_INSTANCE_METHODS_SpringBridge
	.long	0
	.long	L_OBJC_$_INSTANCE_VARIABLES_SpringBridge
	.long	0
	.long	0
	.private_extern _OBJC_CLASS_$_SpringBridge
	.globl _OBJC_CLASS_$_SpringBridge
	.section __DATA, __objc_data
	.align 2
_OBJC_CLASS_$_SpringBridge:
	.long	_OBJC_METACLASS_$_SpringBridge
	.long	_OBJC_CLASS_$_NSObject
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	L_OBJC_CLASS_RO_$_SpringBridge
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_8:
	.ascii "UTF8String\0"
	.section __DATA, __objc_msgrefs, regular, no_dead_strip
	.section __DATA, __objc_data
	.section __DATA, __objc_const
	.section __DATA, __objc_classrefs, regular, no_dead_strip
	.section __DATA, __objc_classlist, regular, no_dead_strip
	.section __DATA, __objc_catlist, regular, no_dead_strip
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.section __DATA, __objc_nlclslist, regular, no_dead_strip
	.section __DATA, __objc_nlcatlist, regular, no_dead_strip
	.section __DATA, __objc_protolist, coalesced, no_dead_strip
	.section __DATA, __objc_protorefs, coalesced, no_dead_strip
	.section __DATA, __objc_superrefs, regular, no_dead_strip
	.section __DATA, __objc_imageinfo, regular, no_dead_strip
	.section __DATA, __objc_stringobj, regular, no_dead_strip
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_27:
	.long	L_OBJC_METH_VAR_NAME_8
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_9:
	.ascii "dataWithBytes:length:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_26:
	.long	L_OBJC_METH_VAR_NAME_9
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_10:
	.ascii "animateLaunchApplication:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_25:
	.long	L_OBJC_METH_VAR_NAME_10
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_11:
	.ascii "objectAtIndex:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_24:
	.long	L_OBJC_METH_VAR_NAME_11
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_12:
	.ascii "count\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_23:
	.long	L_OBJC_METH_VAR_NAME_12
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_13:
	.ascii "applicationsWithBundleIdentifier:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_22:
	.long	L_OBJC_METH_VAR_NAME_13
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_14:
	.ascii "countByEnumeratingWithState:objects:count:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_21:
	.long	L_OBJC_METH_VAR_NAME_14
	.align 2
L_OBJC_SELECTOR_REFERENCES_20:
	.long	L_OBJC_METH_VAR_NAME_7
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_15:
	.ascii "roleIdentifier\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_19:
	.long	L_OBJC_METH_VAR_NAME_15
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_16:
	.ascii "allApplications\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_18:
	.long	L_OBJC_METH_VAR_NAME_16
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_17:
	.ascii "isEqualToString:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_17:
	.long	L_OBJC_METH_VAR_NAME_17
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_18:
	.ascii "quitTopApplication\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_16:
	.long	L_OBJC_METH_VAR_NAME_18
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_19:
	.ascii "sharedInstance\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_15:
	.long	L_OBJC_METH_VAR_NAME_19
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_20:
	.ascii "stringWithFormat:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_14:
	.long	L_OBJC_METH_VAR_NAME_20
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_21:
	.ascii "bytes\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_13:
	.long	L_OBJC_METH_VAR_NAME_21
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_22:
	.ascii "length\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_12:
	.long	L_OBJC_METH_VAR_NAME_22
	.align 2
L_OBJC_SELECTOR_REFERENCES_11:
	.long	L_OBJC_METH_VAR_NAME_6
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_23:
	.ascii "performSelector:withObject:afterDelay:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_10:
	.long	L_OBJC_METH_VAR_NAME_23
	.align 2
L_OBJC_SELECTOR_REFERENCES_9:
	.long	L_OBJC_METH_VAR_NAME_3
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_24:
	.ascii "release\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_8:
	.long	L_OBJC_METH_VAR_NAME_24
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_25:
	.ascii "performSelectorOnMainThread:withObject:waitUntilDone:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_7:
	.long	L_OBJC_METH_VAR_NAME_25
	.align 2
L_OBJC_SELECTOR_REFERENCES_6:
	.long	L_OBJC_METH_VAR_NAME_4
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_26:
	.ascii "hasSuffix:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_5:
	.long	L_OBJC_METH_VAR_NAME_26
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_27:
	.ascii "bundleIdentifier\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_4:
	.long	L_OBJC_METH_VAR_NAME_27
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_28:
	.ascii "mainBundle\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_3:
	.long	L_OBJC_METH_VAR_NAME_28
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_29:
	.ascii "init\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_2:
	.long	L_OBJC_METH_VAR_NAME_29
	.cstring
	.align 2
L_OBJC_METH_VAR_NAME_30:
	.ascii "alloc\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_1:
	.long	L_OBJC_METH_VAR_NAME_30
	.align 2
L_OBJC_SELECTOR_REFERENCES_0:
	.long	L_OBJC_METH_VAR_NAME_2
	.section __DATA, __objc_classrefs, regular, no_dead_strip
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_0:
	.long	_OBJC_CLASS_$_NSAutoreleasePool
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_1:
	.long	_OBJC_CLASS_$_NSBundle
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_2:
	.long	_OBJC_CLASS_$_SpringBridge
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_3:
	.long	_OBJC_CLASS_$_SpringBridgeRelay
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_4:
	.long	_OBJC_CLASS_$_NSString
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_5:
	.long	_OBJC_CLASS_$_NSData
	.private_extern _OBJC_IVAR_$_SpringBridgeRelay.sock
	.globl _OBJC_IVAR_$_SpringBridgeRelay.sock
	.section __DATA, __objc_const
	.align 2
_OBJC_IVAR_$_SpringBridgeRelay.sock:
	.long	4
	.private_extern _OBJC_IVAR_$_SpringBridgeRelay.serverAddr
	.globl _OBJC_IVAR_$_SpringBridgeRelay.serverAddr
	.align 2
_OBJC_IVAR_$_SpringBridgeRelay.serverAddr:
	.long	8
	.private_extern _OBJC_IVAR_$_SpringBridge.isDisplaying
	.globl _OBJC_IVAR_$_SpringBridge.isDisplaying
	.align 2
_OBJC_IVAR_$_SpringBridge.isDisplaying:
	.long	4
	.section __DATA, __objc_classlist, regular, no_dead_strip
	.align 2
L_OBJC_LABEL_CLASS_$:
	.long	_OBJC_CLASS_$_SpringBridgeRelay
	.long	_OBJC_CLASS_$_SpringBridge
	.section __DATA, __objc_imageinfo, regular, no_dead_strip
	.align 2
L_OBJC_IMAGE_INFO:
	.long	0
	.long	16
	.objc_class_name_SpringBridgeRelay=0
	.globl .objc_class_name_SpringBridgeRelay
	.objc_class_name_SpringBridge=0
	.globl .objc_class_name_SpringBridge
	.private_extern _myBundle
.comm _myBundle,4,2
	.private_extern _isSpringBoard
.comm _isSpringBoard,1,0
	.private_extern _sbridge
.comm _sbridge,4,2
	.private_extern _relay
.comm _relay,4,2
	.section __DWARF,__debug_frame,regular,debug
Lframe0:
	.set L$set$0,LECIE0-LSCIE0
	.long L$set$0
LSCIE0:
	.long	-1

	.byte	0x1
	.ascii "\0"
	.byte	0x1
	.byte	0x7c
	.byte	0xe
	.byte	0xc
	.byte	0xd
	.byte	0x0
	.align 2
LECIE0:
LSFDE0:
	.set L$set$1,LEFDE0-LASFDE0
	.long L$set$1
LASFDE0:
	.set L$set$2,Lframe0-Lsection__debug_frame
	.long L$set$2
	.long	LFB140

	.set L$set$3,LFE140-LFB140
	.long L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB140
	.long L$set$4
	.byte	0xe
	.byte	0xc
	.byte	0x84
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE0:
LSFDE2:
	.set L$set$6,LEFDE2-LASFDE2
	.long L$set$6
LASFDE2:
	.set L$set$7,Lframe0-Lsection__debug_frame
	.long L$set$7
	.long	LFB141

	.set L$set$8,LFE141-LFB141
	.long L$set$8
	.byte	0x4
	.set L$set$9,LCFI3-LFB141
	.long L$set$9
	.byte	0xe
	.byte	0x10
	.byte	0x84
	.byte	0x4
	.byte	0x85
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$10,LCFI4-LCFI3
	.long L$set$10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE2:
LSFDE4:
	.set L$set$11,LEFDE4-LASFDE4
	.long L$set$11
LASFDE4:
	.set L$set$12,Lframe0-Lsection__debug_frame
	.long L$set$12
	.long	LFB142

	.set L$set$13,LFE142-LFB142
	.long L$set$13
	.byte	0x4
	.set L$set$14,LCFI6-LFB142
	.long L$set$14
	.byte	0xe
	.byte	0x8
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$15,LCFI7-LCFI6
	.long L$set$15
	.byte	0xd
	.byte	0x7
	.align 2
LEFDE4:
LSFDE6:
	.set L$set$16,LEFDE6-LASFDE6
	.long L$set$16
LASFDE6:
	.set L$set$17,Lframe0-Lsection__debug_frame
	.long L$set$17
	.long	LFB143

	.set L$set$18,LFE143-LFB143
	.long L$set$18
	.byte	0x4
	.set L$set$19,LCFI9-LFB143
	.long L$set$19
	.byte	0xe
	.byte	0x10
	.byte	0x84
	.byte	0x4
	.byte	0x85
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$20,LCFI10-LCFI9
	.long L$set$20
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE6:
LSFDE8:
	.set L$set$21,LEFDE8-LASFDE8
	.long L$set$21
LASFDE8:
	.set L$set$22,Lframe0-Lsection__debug_frame
	.long L$set$22
	.long	LFB144

	.set L$set$23,LFE144-LFB144
	.long L$set$23
	.byte	0x4
	.set L$set$24,LCFI12-LFB144
	.long L$set$24
	.byte	0xe
	.byte	0x10
	.byte	0x84
	.byte	0x4
	.byte	0x85
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$25,LCFI13-LCFI12
	.long L$set$25
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE8:
LSFDE10:
	.set L$set$26,LEFDE10-LASFDE10
	.long L$set$26
LASFDE10:
	.set L$set$27,Lframe0-Lsection__debug_frame
	.long L$set$27
	.long	LFB145

	.set L$set$28,LFE145-LFB145
	.long L$set$28
	.byte	0x4
	.set L$set$29,LCFI15-LFB145
	.long L$set$29
	.byte	0xe
	.byte	0x8
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$30,LCFI16-LCFI15
	.long L$set$30
	.byte	0xd
	.byte	0x7
	.align 2
LEFDE10:
LSFDE12:
	.set L$set$31,LEFDE12-LASFDE12
	.long L$set$31
LASFDE12:
	.set L$set$32,Lframe0-Lsection__debug_frame
	.long L$set$32
	.long	LFB146

	.set L$set$33,LFE146-LFB146
	.long L$set$33
	.byte	0x4
	.set L$set$34,LCFI18-LFB146
	.long L$set$34
	.byte	0xe
	.byte	0x14
	.byte	0x84
	.byte	0x5
	.byte	0x85
	.byte	0x4
	.byte	0x86
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$35,LCFI19-LCFI18
	.long L$set$35
	.byte	0xe
	.byte	0x1c
	.byte	0x88
	.byte	0x7
	.byte	0x8a
	.byte	0x6
	.byte	0x4
	.set L$set$36,LCFI20-LCFI19
	.long L$set$36
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE12:
LSFDE14:
	.set L$set$37,LEFDE14-LASFDE14
	.long L$set$37
LASFDE14:
	.set L$set$38,Lframe0-Lsection__debug_frame
	.long L$set$38
	.long	LFB147

	.set L$set$39,LFE147-LFB147
	.long L$set$39
	.byte	0x4
	.set L$set$40,LCFI22-LFB147
	.long L$set$40
	.byte	0xe
	.byte	0x14
	.byte	0x84
	.byte	0x5
	.byte	0x85
	.byte	0x4
	.byte	0x86
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$41,LCFI23-LCFI22
	.long L$set$41
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE14:
LSFDE16:
	.set L$set$42,LEFDE16-LASFDE16
	.long L$set$42
LASFDE16:
	.set L$set$43,Lframe0-Lsection__debug_frame
	.long L$set$43
	.long	LFB148

	.set L$set$44,LFE148-LFB148
	.long L$set$44
	.byte	0x4
	.set L$set$45,LCFI25-LFB148
	.long L$set$45
	.byte	0xe
	.byte	0xc
	.byte	0x84
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$46,LCFI26-LCFI25
	.long L$set$46
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE16:
LSFDE18:
	.set L$set$47,LEFDE18-LASFDE18
	.long L$set$47
LASFDE18:
	.set L$set$48,Lframe0-Lsection__debug_frame
	.long L$set$48
	.long	LFB149

	.set L$set$49,LFE149-LFB149
	.long L$set$49
	.byte	0x4
	.set L$set$50,LCFI28-LFB149
	.long L$set$50
	.byte	0xe
	.byte	0x10
	.byte	0x84
	.byte	0x4
	.byte	0x85
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$51,LCFI29-LCFI28
	.long L$set$51
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE18:
LSFDE20:
	.set L$set$52,LEFDE20-LASFDE20
	.long L$set$52
LASFDE20:
	.set L$set$53,Lframe0-Lsection__debug_frame
	.long L$set$53
	.long	LFB150

	.set L$set$54,LFE150-LFB150
	.long L$set$54
	.byte	0x4
	.set L$set$55,LCFI31-LFB150
	.long L$set$55
	.byte	0xe
	.byte	0xc
	.byte	0x84
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$56,LCFI32-LCFI31
	.long L$set$56
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE20:
LSFDE22:
	.set L$set$57,LEFDE22-LASFDE22
	.long L$set$57
LASFDE22:
	.set L$set$58,Lframe0-Lsection__debug_frame
	.long L$set$58
	.long	LFB151

	.set L$set$59,LFE151-LFB151
	.long L$set$59
	.byte	0x4
	.set L$set$60,LCFI34-LFB151
	.long L$set$60
	.byte	0xe
	.byte	0xc
	.byte	0x84
	.byte	0x3
	.byte	0x87
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x4
	.set L$set$61,LCFI35-LCFI34
	.long L$set$61
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 2
LEFDE22:
	.text
Letext0:
	.section __DWARF,__debug_loc,regular,debug
Ldebug_loc0:
LLST0:
	.set L$set$62,LFB140-Ltext0
	.long L$set$62
	.set L$set$63,LCFI0-Ltext0
	.long L$set$63
	.short	1

	.byte	0x5d
	.set L$set$64,LCFI0-Ltext0
	.long L$set$64
	.set L$set$65,LCFI1-Ltext0
	.long L$set$65
	.short	2

	.byte	0x7d
	.byte	0xc
	.set L$set$66,LCFI1-Ltext0
	.long L$set$66
	.set L$set$67,LFE140-Ltext0
	.long L$set$67
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST1:
	.set L$set$68,LFB141-Ltext0
	.long L$set$68
	.set L$set$69,LCFI3-Ltext0
	.long L$set$69
	.short	1

	.byte	0x5d
	.set L$set$70,LCFI3-Ltext0
	.long L$set$70
	.set L$set$71,LCFI4-Ltext0
	.long L$set$71
	.short	2

	.byte	0x7d
	.byte	0x10
	.set L$set$72,LCFI4-Ltext0
	.long L$set$72
	.set L$set$73,LFE141-Ltext0
	.long L$set$73
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST2:
	.set L$set$74,LFB142-Ltext0
	.long L$set$74
	.set L$set$75,LCFI6-Ltext0
	.long L$set$75
	.short	1

	.byte	0x5d
	.set L$set$76,LCFI6-Ltext0
	.long L$set$76
	.set L$set$77,LCFI7-Ltext0
	.long L$set$77
	.short	2

	.byte	0x7d
	.byte	0x8
	.set L$set$78,LCFI7-Ltext0
	.long L$set$78
	.set L$set$79,LFE142-Ltext0
	.long L$set$79
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST3:
	.set L$set$80,LFB143-Ltext0
	.long L$set$80
	.set L$set$81,LCFI9-Ltext0
	.long L$set$81
	.short	1

	.byte	0x5d
	.set L$set$82,LCFI9-Ltext0
	.long L$set$82
	.set L$set$83,LCFI10-Ltext0
	.long L$set$83
	.short	2

	.byte	0x7d
	.byte	0x10
	.set L$set$84,LCFI10-Ltext0
	.long L$set$84
	.set L$set$85,LFE143-Ltext0
	.long L$set$85
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST4:
	.set L$set$86,LFB144-Ltext0
	.long L$set$86
	.set L$set$87,LCFI12-Ltext0
	.long L$set$87
	.short	1

	.byte	0x5d
	.set L$set$88,LCFI12-Ltext0
	.long L$set$88
	.set L$set$89,LCFI13-Ltext0
	.long L$set$89
	.short	2

	.byte	0x7d
	.byte	0x10
	.set L$set$90,LCFI13-Ltext0
	.long L$set$90
	.set L$set$91,LFE144-Ltext0
	.long L$set$91
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST5:
	.set L$set$92,LFB145-Ltext0
	.long L$set$92
	.set L$set$93,LCFI15-Ltext0
	.long L$set$93
	.short	1

	.byte	0x5d
	.set L$set$94,LCFI15-Ltext0
	.long L$set$94
	.set L$set$95,LCFI16-Ltext0
	.long L$set$95
	.short	2

	.byte	0x7d
	.byte	0x8
	.set L$set$96,LCFI16-Ltext0
	.long L$set$96
	.set L$set$97,LFE145-Ltext0
	.long L$set$97
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST6:
	.set L$set$98,LFB146-Ltext0
	.long L$set$98
	.set L$set$99,LCFI18-Ltext0
	.long L$set$99
	.short	1

	.byte	0x5d
	.set L$set$100,LCFI18-Ltext0
	.long L$set$100
	.set L$set$101,LCFI19-Ltext0
	.long L$set$101
	.short	2

	.byte	0x7d
	.byte	0x14
	.set L$set$102,LCFI19-Ltext0
	.long L$set$102
	.set L$set$103,LCFI20-Ltext0
	.long L$set$103
	.short	2

	.byte	0x7d
	.byte	0x1c
	.set L$set$104,LCFI20-Ltext0
	.long L$set$104
	.set L$set$105,LFE146-Ltext0
	.long L$set$105
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST7:
	.set L$set$106,LFB147-Ltext0
	.long L$set$106
	.set L$set$107,LCFI22-Ltext0
	.long L$set$107
	.short	1

	.byte	0x5d
	.set L$set$108,LCFI22-Ltext0
	.long L$set$108
	.set L$set$109,LCFI23-Ltext0
	.long L$set$109
	.short	2

	.byte	0x7d
	.byte	0x14
	.set L$set$110,LCFI23-Ltext0
	.long L$set$110
	.set L$set$111,LFE147-Ltext0
	.long L$set$111
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST8:
	.set L$set$112,LFB148-Ltext0
	.long L$set$112
	.set L$set$113,LCFI25-Ltext0
	.long L$set$113
	.short	1

	.byte	0x5d
	.set L$set$114,LCFI25-Ltext0
	.long L$set$114
	.set L$set$115,LCFI26-Ltext0
	.long L$set$115
	.short	2

	.byte	0x7d
	.byte	0xc
	.set L$set$116,LCFI26-Ltext0
	.long L$set$116
	.set L$set$117,LFE148-Ltext0
	.long L$set$117
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST9:
	.set L$set$118,LFB149-Ltext0
	.long L$set$118
	.set L$set$119,LCFI28-Ltext0
	.long L$set$119
	.short	1

	.byte	0x5d
	.set L$set$120,LCFI28-Ltext0
	.long L$set$120
	.set L$set$121,LCFI29-Ltext0
	.long L$set$121
	.short	2

	.byte	0x7d
	.byte	0x10
	.set L$set$122,LCFI29-Ltext0
	.long L$set$122
	.set L$set$123,LFE149-Ltext0
	.long L$set$123
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST10:
	.set L$set$124,LFB150-Ltext0
	.long L$set$124
	.set L$set$125,LCFI31-Ltext0
	.long L$set$125
	.short	1

	.byte	0x5d
	.set L$set$126,LCFI31-Ltext0
	.long L$set$126
	.set L$set$127,LCFI32-Ltext0
	.long L$set$127
	.short	2

	.byte	0x7d
	.byte	0xc
	.set L$set$128,LCFI32-Ltext0
	.long L$set$128
	.set L$set$129,LFE150-Ltext0
	.long L$set$129
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

LLST11:
	.set L$set$130,LFB151-Ltext0
	.long L$set$130
	.set L$set$131,LCFI34-Ltext0
	.long L$set$131
	.short	1

	.byte	0x5d
	.set L$set$132,LCFI34-Ltext0
	.long L$set$132
	.set L$set$133,LCFI35-Ltext0
	.long L$set$133
	.short	2

	.byte	0x7d
	.byte	0xc
	.set L$set$134,LCFI35-Ltext0
	.long L$set$134
	.set L$set$135,LFE151-Ltext0
	.long L$set$135
	.short	2

	.byte	0x77
	.byte	0x8
	.long	0

	.long	0

	.section __DWARF,__debug_info,regular,debug
	.long	7053

	.short	2

	.set L$set$136,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$136
	.byte	0x4
	.byte	0x1
	.ascii "GNU Objective-C 4.2.1 (Apple Inc.  build 5575) (dot 11)\0"
	.byte	0x10
	.ascii "/Users/jeongwookoh/Documents/Tmp/1/zataangstuff-read-only/SpringBridge/Classes/SpringBridge.m\0"
	.long	Ltext0

	.long	Letext0

	.set L$set$137,Ldebug_line0-Lsection__debug_line
	.long L$set$137
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.byte	0x3
	.ascii "__uint8_t\0"
	.byte	0x2
	.byte	0x11
	.long	207

	.byte	0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.byte	0x3
	.ascii "__uint16_t\0"
	.byte	0x2
	.byte	0x13
	.long	255

	.byte	0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x3
	.ascii "__uint32_t\0"
	.byte	0x2
	.byte	0x15
	.long	302

	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x3
	.ascii "__darwin_size_t\0"
	.byte	0x2
	.byte	0x42
	.long	407

	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.byte	0x3
	.ascii "__darwin_wchar_t\0"
	.byte	0x2
	.byte	0x4e
	.long	277

	.byte	0x3
	.ascii "__darwin_rune_t\0"
	.byte	0x2
	.byte	0x53
	.long	428

	.byte	0x5
	.byte	0x4
	.byte	0x6
	.long	376

	.long	493

	.byte	0x7
	.long	373

	.byte	0x7
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	376

	.byte	0x3
	.ascii "in_addr_t\0"
	.byte	0x3
	.byte	0x7e
	.long	284

	.byte	0x3
	.ascii "in_port_t\0"
	.byte	0x3
	.byte	0x83
	.long	237

	.byte	0x3
	.ascii "size_t\0"
	.byte	0x3
	.byte	0xe6
	.long	384

	.byte	0x9
	.byte	0x10
	.byte	0x4
	.byte	0x51
	.long	622

	.byte	0xa
	.ascii "__min\0"
	.byte	0x4
	.byte	0x52
	.long	452

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__max\0"
	.byte	0x4
	.byte	0x53
	.long	452

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "__map\0"
	.byte	0x4
	.byte	0x54
	.long	452

	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "__types\0"
	.byte	0x4
	.byte	0x55
	.long	622

	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	284

	.byte	0x3
	.ascii "_RuneEntry\0"
	.byte	0x4
	.byte	0x56
	.long	547

	.byte	0x9
	.byte	0x8
	.byte	0x4
	.byte	0x58
	.long	694

	.byte	0xa
	.ascii "__nranges\0"
	.byte	0x4
	.byte	0x59
	.long	277

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__ranges\0"
	.byte	0x4
	.byte	0x5a
	.long	694

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	628

	.byte	0x3
	.ascii "_RuneRange\0"
	.byte	0x4
	.byte	0x5b
	.long	646

	.byte	0x9
	.byte	0x14
	.byte	0x4
	.byte	0x5d
	.long	761

	.byte	0xa
	.ascii "__name\0"
	.byte	0x4
	.byte	0x5e
	.long	761

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__mask\0"
	.byte	0x4
	.byte	0x5f
	.long	284

	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0x6
	.long	376

	.long	777

	.byte	0x7
	.long	373

	.byte	0xd
	.byte	0x0
	.byte	0x3
	.ascii "_RuneCharClass\0"
	.byte	0x4
	.byte	0x60
	.long	718

	.byte	0xb
	.short	3164

	.byte	0x4
	.byte	0x62
	.long	1157

	.byte	0xa
	.ascii "__magic\0"
	.byte	0x4
	.byte	0x63
	.long	477

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__encoding\0"
	.byte	0x4
	.byte	0x64
	.long	1157

	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "__sgetrune\0"
	.byte	0x4
	.byte	0x66
	.long	1216

	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0xa
	.ascii "__sputrune\0"
	.byte	0x4
	.byte	0x67
	.long	1259

	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.byte	0xa
	.ascii "__invalid_rune\0"
	.byte	0x4
	.byte	0x68
	.long	452

	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0xa
	.ascii "__runetype\0"
	.byte	0x4
	.byte	0x6a
	.long	1265

	.byte	0x2
	.byte	0x23
	.byte	0x34
	.byte	0xa
	.ascii "__maplower\0"
	.byte	0x4
	.byte	0x6b
	.long	1281

	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x8
	.byte	0xa
	.ascii "__mapupper\0"
	.byte	0x4
	.byte	0x6c
	.long	1281

	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x10
	.byte	0xa
	.ascii "__runetype_ext\0"
	.byte	0x4
	.byte	0x73
	.long	700

	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x18
	.byte	0xa
	.ascii "__maplower_ext\0"
	.byte	0x4
	.byte	0x74
	.long	700

	.byte	0x3
	.byte	0x23
	.byte	0xbc,0x18
	.byte	0xa
	.ascii "__mapupper_ext\0"
	.byte	0x4
	.byte	0x75
	.long	700

	.byte	0x3
	.byte	0x23
	.byte	0xc4,0x18
	.byte	0xa
	.ascii "__variable\0"
	.byte	0x4
	.byte	0x77
	.long	475

	.byte	0x3
	.byte	0x23
	.byte	0xcc,0x18
	.byte	0xa
	.ascii "__variable_len\0"
	.byte	0x4
	.byte	0x78
	.long	277

	.byte	0x3
	.byte	0x23
	.byte	0xd0,0x18
	.byte	0xa
	.ascii "__ncharclasses\0"
	.byte	0x4
	.byte	0x7d
	.long	277

	.byte	0x3
	.byte	0x23
	.byte	0xd4,0x18
	.byte	0xa
	.ascii "__charclasses\0"
	.byte	0x4
	.byte	0x7e
	.long	1297

	.byte	0x3
	.byte	0x23
	.byte	0xd8,0x18
	.byte	0x0
	.byte	0x6
	.long	376

	.long	1173

	.byte	0x7
	.long	373

	.byte	0x1f
	.byte	0x0
	.byte	0xc
	.byte	0x1
	.long	452

	.long	1199

	.byte	0xd
	.long	1199

	.byte	0xd
	.long	384

	.byte	0xd
	.long	1210

	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	1205

	.byte	0xe
	.long	376

	.byte	0x8
	.byte	0x4
	.long	1199

	.byte	0x8
	.byte	0x4
	.long	1173

	.byte	0xc
	.byte	0x1
	.long	277

	.long	1253

	.byte	0xd
	.long	452

	.byte	0xd
	.long	493

	.byte	0xd
	.long	384

	.byte	0xd
	.long	1253

	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	493

	.byte	0x8
	.byte	0x4
	.long	1222

	.byte	0x6
	.long	284

	.long	1281

	.byte	0x7
	.long	373

	.byte	0xff
	.byte	0x0
	.byte	0x6
	.long	452

	.long	1297

	.byte	0x7
	.long	373

	.byte	0xff
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	777

	.byte	0x3
	.ascii "_RuneLocale\0"
	.byte	0x4
	.byte	0x7f
	.long	799

	.byte	0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.byte	0x8
	.byte	0x4
	.long	1347

	.byte	0xf
	.byte	0x3
	.ascii "CFOptionFlags\0"
	.byte	0x5
	.byte	0xd7
	.long	407

	.byte	0x3
	.ascii "CFIndex\0"
	.byte	0x5
	.byte	0xd9
	.long	361

	.byte	0x3
	.ascii "CFStringRef\0"
	.byte	0x5
	.byte	0xde
	.long	1403

	.byte	0x8
	.byte	0x4
	.long	1409

	.byte	0x10
	.set L$set$138,LASF0-Lsection__debug_str
	.long L$set$138
	.long	1418

	.byte	0x11
	.set L$set$139,LASF0-Lsection__debug_str
	.long L$set$139
	.byte	0x1
	.byte	0x12
	.ascii "CFAllocatorRef\0"
	.byte	0x5
	.short	295

	.long	1447

	.byte	0x8
	.byte	0x4
	.long	1453

	.byte	0x10
	.set L$set$140,LASF1-Lsection__debug_str
	.long L$set$140
	.long	1462

	.byte	0x11
	.set L$set$141,LASF1-Lsection__debug_str
	.long L$set$141
	.byte	0x1
	.byte	0x8
	.byte	0x4
	.long	1474

	.byte	0xc
	.byte	0x1
	.long	1341

	.long	1490

	.byte	0xd
	.long	1341

	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	1496

	.byte	0x13
	.byte	0x1
	.long	1508

	.byte	0xd
	.long	1341

	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	1514

	.byte	0xc
	.byte	0x1
	.long	1384

	.long	1530

	.byte	0xd
	.long	1341

	.byte	0x0
	.byte	0x3
	.ascii "CFDataRef\0"
	.byte	0x6
	.byte	0xc
	.long	1547

	.byte	0x8
	.byte	0x4
	.long	1553

	.byte	0x10
	.set L$set$142,LASF2-Lsection__debug_str
	.long L$set$142
	.long	1562

	.byte	0x11
	.set L$set$143,LASF2-Lsection__debug_str
	.long L$set$143
	.byte	0x1
	.byte	0x3
	.ascii "CFRunLoopRef\0"
	.byte	0x7
	.byte	0x12
	.long	1588

	.byte	0x8
	.byte	0x4
	.long	1594

	.byte	0x14
	.ascii "__CFRunLoop\0"
	.byte	0x1
	.byte	0x3
	.ascii "CFRunLoopSourceRef\0"
	.byte	0x7
	.byte	0x14
	.long	1634

	.byte	0x8
	.byte	0x4
	.long	1640

	.byte	0x14
	.ascii "__CFRunLoopSource\0"
	.byte	0x1
	.byte	0x3
	.ascii "CFSocketRef\0"
	.byte	0x8
	.byte	0x16
	.long	1679

	.byte	0x8
	.byte	0x4
	.long	1685

	.byte	0x14
	.ascii "__CFSocket\0"
	.byte	0x1
	.byte	0x15
	.byte	0x4
	.byte	0x8
	.byte	0x66
	.long	1762

	.byte	0x16
	.ascii "kCFSocketSuccess\0"
	.byte	0x0
	.byte	0x16
	.ascii "kCFSocketError\0"
	.byte	0x7f
	.byte	0x16
	.ascii "kCFSocketTimeout\0"
	.byte	0x7e
	.byte	0x0
	.byte	0x3
	.ascii "CFSocketError\0"
	.byte	0x8
	.byte	0x6b
	.long	1369

	.byte	0x15
	.byte	0x4
	.byte	0x8
	.byte	0x75
	.long	1940

	.byte	0x16
	.ascii "kCFSocketNoCallBack\0"
	.byte	0x0
	.byte	0x16
	.ascii "kCFSocketReadCallBack\0"
	.byte	0x1
	.byte	0x16
	.ascii "kCFSocketAcceptCallBack\0"
	.byte	0x2
	.byte	0x16
	.ascii "kCFSocketDataCallBack\0"
	.byte	0x3
	.byte	0x16
	.ascii "kCFSocketConnectCallBack\0"
	.byte	0x4
	.byte	0x16
	.ascii "kCFSocketWriteCallBack\0"
	.byte	0x8
	.byte	0x0
	.byte	0x3
	.ascii "CFSocketCallBackType\0"
	.byte	0x8
	.byte	0x80
	.long	1348

	.byte	0x13
	.byte	0x1
	.long	2000

	.byte	0xd
	.long	1660

	.byte	0xd
	.long	1940

	.byte	0xd
	.long	1530

	.byte	0xd
	.long	1341

	.byte	0xd
	.long	475

	.byte	0x0
	.byte	0x9
	.byte	0x14
	.byte	0x8
	.byte	0x90
	.long	2103

	.byte	0xa
	.ascii "version\0"
	.byte	0x8
	.byte	0x91
	.long	1369

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "info\0"
	.byte	0x8
	.byte	0x92
	.long	475

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "retain\0"
	.byte	0x8
	.byte	0x93
	.long	1468

	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "release\0"
	.byte	0x8
	.byte	0x94
	.long	1490

	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xa
	.ascii "copyDescription\0"
	.byte	0x8
	.byte	0x95
	.long	1508

	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0x3
	.ascii "CFSocketContext\0"
	.byte	0x8
	.byte	0x96
	.long	2000

	.byte	0x17
	.byte	0x4
	.ascii "Class\0"
	.long	2138

	.byte	0x18
	.ascii "objc_class\0"
	.byte	0x4
	.byte	0xa
	.byte	0x0
	.long	2172

	.byte	0xa
	.ascii "isa\0"
	.byte	0x9
	.byte	0x2c
	.long	2126

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x0
	.byte	0x17
	.byte	0x4
	.ascii "id\0"
	.long	2181

	.byte	0x18
	.ascii "objc_object\0"
	.byte	0x4
	.byte	0xa
	.byte	0x0
	.long	2216

	.byte	0xa
	.ascii "isa\0"
	.byte	0xb
	.byte	0x25
	.long	2126

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x0
	.byte	0x3
	.ascii "SEL\0"
	.byte	0xb
	.byte	0x29
	.long	2227

	.byte	0x8
	.byte	0x4
	.long	2233

	.byte	0x14
	.ascii "objc_selector\0"
	.byte	0x1
	.byte	0x3
	.ascii "IMP\0"
	.byte	0xb
	.byte	0x2a
	.long	2260

	.byte	0x8
	.byte	0x4
	.long	2266

	.byte	0xc
	.byte	0x1
	.long	2172

	.long	2288

	.byte	0xd
	.long	2172

	.byte	0xd
	.long	2216

	.byte	0x19
	.byte	0x0
	.byte	0x3
	.ascii "BOOL\0"
	.byte	0xb
	.byte	0x2b
	.long	175

	.byte	0x3
	.ascii "NSUInteger\0"
	.byte	0xc
	.byte	0x89
	.long	302

	.byte	0x18
	.ascii "NSObject\0"
	.byte	0x4
	.byte	0xd
	.byte	0x43
	.long	2351

	.byte	0x1a
	.ascii "isa\0"
	.byte	0xd
	.byte	0x42
	.long	2126

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x2
	.byte	0x0
	.byte	0x18
	.ascii "NSArray\0"
	.byte	0x4
	.byte	0xe
	.byte	0x7
	.long	2377

	.byte	0x1b
	.long	2318

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x18
	.ascii "NSAutoreleasePool\0"
	.byte	0x14
	.byte	0xf
	.byte	0xd
	.long	2496

	.byte	0x1b
	.long	2318

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x1a
	.ascii "_token\0"
	.byte	0xf
	.byte	0x9
	.long	475

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.ascii "_reserved3\0"
	.byte	0xf
	.byte	0xa
	.long	475

	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x3
	.byte	0x1a
	.ascii "_reserved2\0"
	.byte	0xf
	.byte	0xb
	.long	475

	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x3
	.byte	0x1a
	.ascii "_reserved\0"
	.byte	0xf
	.byte	0xc
	.long	475

	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x3
	.byte	0x0
	.byte	0x18
	.ascii "NSBundle\0"
	.byte	0x24
	.byte	0x10
	.byte	0x15
	.long	2688

	.byte	0x1b
	.long	2318

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x1a
	.ascii "_flags\0"
	.byte	0x10
	.byte	0xd
	.long	2300

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.ascii "_cfBundle\0"
	.byte	0x10
	.byte	0xe
	.long	2172

	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x3
	.byte	0x1a
	.ascii "_refCount\0"
	.byte	0x10
	.byte	0xf
	.long	2300

	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x3
	.byte	0x1a
	.ascii "_principalClass\0"
	.byte	0x10
	.byte	0x10
	.long	2126

	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x3
	.byte	0x1a
	.ascii "_tmp1\0"
	.byte	0x10
	.byte	0x11
	.long	2172

	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0x3
	.byte	0x1a
	.ascii "_tmp2\0"
	.byte	0x10
	.byte	0x12
	.long	2172

	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x3
	.byte	0x1a
	.ascii "_reserved1\0"
	.byte	0x10
	.byte	0x13
	.long	475

	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0x3
	.byte	0x1a
	.ascii "_reserved0\0"
	.byte	0x10
	.byte	0x14
	.long	475

	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0x3
	.byte	0x0
	.byte	0x18
	.ascii "NSString\0"
	.byte	0x4
	.byte	0xc
	.byte	0x92
	.long	2715

	.byte	0x1b
	.long	2318

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x18
	.ascii "NSData\0"
	.byte	0x4
	.byte	0x11
	.byte	0x9
	.long	2740

	.byte	0x1b
	.long	2318

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	2688

	.byte	0x8
	.byte	0x4
	.long	2351

	.byte	0x8
	.byte	0x4
	.long	2496

	.byte	0x3
	.ascii "Method\0"
	.byte	0x9
	.byte	0x26
	.long	2772

	.byte	0x8
	.byte	0x4
	.long	2778

	.byte	0x14
	.ascii "objc_method\0"
	.byte	0x1
	.byte	0x3
	.ascii "sa_family_t\0"
	.byte	0x12
	.byte	0x67
	.long	190

	.byte	0x1c
	.ascii "sockaddr\0"
	.byte	0x10
	.byte	0x12
	.short	296

	.long	2888

	.byte	0x1d
	.ascii "sa_len\0"
	.byte	0x12
	.short	297

	.long	190

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1d
	.ascii "sa_family\0"
	.byte	0x12
	.short	298

	.long	2792

	.byte	0x2
	.byte	0x23
	.byte	0x1
	.byte	0x1d
	.ascii "sa_data\0"
	.byte	0x12
	.short	299

	.long	761

	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x0
	.byte	0x1c
	.ascii "in_addr\0"
	.byte	0x4
	.byte	0x13
	.short	304

	.long	2924

	.byte	0x1d
	.ascii "s_addr\0"
	.byte	0x13
	.short	305

	.long	499

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x0
	.byte	0x1c
	.ascii "sockaddr_in\0"
	.byte	0x10
	.byte	0x13
	.short	362

	.long	3047

	.byte	0x1d
	.ascii "sin_len\0"
	.byte	0x13
	.short	363

	.long	190

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1d
	.ascii "sin_family\0"
	.byte	0x13
	.short	364

	.long	2792

	.byte	0x2
	.byte	0x23
	.byte	0x1
	.byte	0x1d
	.ascii "sin_port\0"
	.byte	0x13
	.short	365

	.long	516

	.byte	0x2
	.byte	0x23
	.byte	0x2
	.byte	0x1d
	.ascii "sin_addr\0"
	.byte	0x13
	.short	366

	.long	2888

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x1d
	.ascii "sin_zero\0"
	.byte	0x13
	.short	367

	.long	477

	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x0
	.byte	0x18
	.ascii "SpringBridge\0"
	.byte	0x8
	.byte	0x14
	.byte	0xd
	.long	3102

	.byte	0x1b
	.long	2318

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x1a
	.ascii "isDisplaying\0"
	.byte	0x14
	.byte	0xc
	.long	3102

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x2
	.byte	0x0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.byte	0x18
	.ascii "SpringBridgeRelay\0"
	.byte	0x18
	.byte	0x14
	.byte	0x18
	.long	3185

	.byte	0x1b
	.long	2318

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x1a
	.ascii "sock\0"
	.byte	0x14
	.byte	0x16
	.long	277

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.ascii "serverAddr\0"
	.byte	0x14
	.byte	0x17
	.long	2924

	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x2
	.byte	0x0
	.byte	0x1e
	.byte	0x1
	.ascii "SpringBridgeInject\0"
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	LFB140

	.long	LFE140

	.set L$set$144,LLST0-Lsection__debug_loc
	.long L$set$144
	.byte	0x1
	.long	3308

	.byte	0x1f
	.set L$set$145,LASF3-Lsection__debug_str
	.long L$set$145
	.byte	0x1
	.byte	0x1b
	.long	1199

	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.ascii "oldname\0"
	.byte	0x1
	.byte	0x1b
	.long	1199

	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x20
	.ascii "newimp\0"
	.byte	0x1
	.byte	0x1b
	.long	2249

	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x20
	.ascii "type\0"
	.byte	0x1
	.byte	0x1b
	.long	1199

	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x21
	.ascii "_class\0"
	.byte	0x1
	.byte	0x1c
	.long	2126

	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x0
	.byte	0x1e
	.byte	0x1
	.ascii "SpringBridgeRename\0"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.long	LFB141

	.long	LFE141

	.set L$set$146,LLST1-Lsection__debug_loc
	.long L$set$146
	.byte	0x1
	.long	3579

	.byte	0x20
	.ascii "instance\0"
	.byte	0x1
	.byte	0x25
	.long	3102

	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x1f
	.set L$set$147,LASF3-Lsection__debug_str
	.long L$set$147
	.byte	0x1
	.byte	0x25
	.long	1199

	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x20
	.ascii "oldname\0"
	.byte	0x1
	.byte	0x25
	.long	1199

	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x20
	.ascii "newimp\0"
	.byte	0x1
	.byte	0x25
	.long	2249

	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x21
	.ascii "_class\0"
	.byte	0x1
	.byte	0x27
	.long	2126

	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x21
	.ascii "method\0"
	.byte	0x1
	.byte	0x2f
	.long	2758

	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x21
	.ascii "namelen\0"
	.byte	0x1
	.byte	0x35
	.long	533

	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x21
	.ascii "newname\0"
	.byte	0x1
	.byte	0x36
	.long	3579

	.byte	0x3
	.byte	0x91
	.byte	0x54
	.byte	0x6
	.byte	0x21
	.ascii "type\0"
	.byte	0x1
	.byte	0x39
	.long	1199

	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x21
	.ascii "count\0"
	.byte	0x1
	.byte	0x3c
	.long	302

	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x21
	.ascii "methods\0"
	.byte	0x1
	.byte	0x3d
	.long	3594

	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x21
	.ascii "index\0"
	.byte	0x1
	.byte	0x3e
	.long	302

	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x22
	.ascii "found\0"
	.byte	0x1
	.byte	0x46
	.long	L24

	.byte	0x22
	.ascii "done\0"
	.byte	0x1
	.byte	0x4a
	.long	L30

	.byte	0x0
	.byte	0x6
	.long	376

	.long	3594

	.byte	0x23
	.long	373

	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	2758

	.byte	0x24
	.ascii "SpringBridge_uiapplication_specialLaunchApp\0"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	LFB142

	.long	LFE142

	.set L$set$148,LLST2-Lsection__debug_loc
	.long L$set$148
	.byte	0x1
	.long	3715

	.byte	0x1f
	.set L$set$149,LASF4-Lsection__debug_str
	.long L$set$149
	.byte	0x1
	.byte	0x4e
	.long	2172

	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0x20
	.ascii "sel\0"
	.byte	0x1
	.byte	0x4e
	.long	2216

	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x20
	.ascii "identifier\0"
	.byte	0x1
	.byte	0x4e
	.long	2740

	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x0
	.byte	0x25
	.ascii "SpringBridgeInitializer\0"
	.byte	0x1
	.byte	0x5e
	.long	LFB143

	.long	LFE143

	.set L$set$150,LLST3-Lsection__debug_loc
	.long L$set$150
	.byte	0x1
	.long	3791

	.byte	0x21
	.ascii "pool\0"
	.byte	0x1
	.byte	0x5f
	.long	3791

	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x21
	.ascii "appId\0"
	.byte	0x1
	.byte	0x65
	.long	2740

	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	2377

	.byte	0x24
	.ascii "-[SpringBridge didInjectIntoProgram]\0"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	LFB144

	.long	LFE144

	.set L$set$151,LLST4-Lsection__debug_loc
	.long L$set$151
	.byte	0x1
	.long	3884

	.byte	0x1f
	.set L$set$152,LASF4-Lsection__debug_str
	.long L$set$152
	.byte	0x1
	.byte	0x78
	.long	3884

	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1f
	.set L$set$153,LASF5-Lsection__debug_str
	.long L$set$153
	.byte	0x1
	.byte	0x78
	.long	2227

	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	3047

	.byte	0x24
	.ascii "-[SpringBridge inject]\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	LFB145

	.long	LFE145

	.set L$set$154,LLST5-Lsection__debug_loc
	.long L$set$154
	.byte	0x1
	.long	3963

	.byte	0x1f
	.set L$set$155,LASF4-Lsection__debug_str
	.long L$set$155
	.byte	0x1
	.byte	0x7c
	.long	3884

	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0x1f
	.set L$set$156,LASF5-Lsection__debug_str
	.long L$set$156
	.byte	0x1
	.byte	0x7c
	.long	2227

	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x0
	.byte	0x24
	.ascii "relayDataCallBack\0"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	LFB146

	.long	LFE146

	.set L$set$157,LLST6-Lsection__debug_loc
	.long L$set$157
	.byte	0x1
	.long	4338

	.byte	0x20
	.ascii "socket\0"
	.byte	0x1
	.byte	0x81
	.long	1660

	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0x20
	.ascii "type\0"
	.byte	0x1
	.byte	0x81
	.long	1940

	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x20
	.ascii "address\0"
	.byte	0x1
	.byte	0x81
	.long	1530

	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7e
	.byte	0x20
	.ascii "data\0"
	.byte	0x1
	.byte	0x81
	.long	1341

	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7e
	.byte	0x20
	.ascii "info\0"
	.byte	0x1
	.byte	0x81
	.long	475

	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x21
	.ascii "d\0"
	.byte	0x1
	.byte	0x82
	.long	4338

	.byte	0x3
	.byte	0x91
	.byte	0xd8,0x7e
	.byte	0x26
	.long	LBB2

	.long	LBE2

	.byte	0x21
	.ascii "buf\0"
	.byte	0x1
	.byte	0x84
	.long	493

	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x21
	.ascii "str\0"
	.byte	0x1
	.byte	0x85
	.long	2740

	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x27
	.set L$set$158,LASF6-Lsection__debug_str
	.long L$set$158
	.byte	0x1
	.byte	0x87
	.long	2126

	.byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x27
	.set L$set$159,LASF7-Lsection__debug_str
	.long L$set$159
	.byte	0x1
	.byte	0x88
	.long	2172

	.byte	0x3
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x21
	.ascii "SBApplicationController\0"
	.byte	0x1
	.byte	0x8b
	.long	2126

	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x21
	.ascii "appController\0"
	.byte	0x1
	.byte	0x8c
	.long	2172

	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x28
	.long	LBB3

	.long	LBE3

	.long	4311

	.byte	0x21
	.ascii "theRole\0"
	.byte	0x1
	.byte	0x8e
	.long	2740

	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x26
	.long	LBB4

	.long	LBE4

	.byte	0x21
	.ascii "app\0"
	.byte	0x1
	.byte	0x91
	.long	2172

	.byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.byte	0x26
	.long	LBB5

	.long	LBE5

	.byte	0x21
	.ascii "role\0"
	.byte	0x1
	.byte	0x92
	.long	2740

	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x26
	.long	LBB6

	.long	LBE6

	.byte	0x21
	.ascii "apps\0"
	.byte	0x1
	.byte	0x9a
	.long	2746

	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	2715

	.byte	0x24
	.ascii "-[SpringBridge launchTheApp:]\0"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.long	LFB147

	.long	LFE147

	.set L$set$160,LLST7-Lsection__debug_loc
	.long L$set$160
	.byte	0x1
	.long	4466

	.byte	0x1f
	.set L$set$161,LASF4-Lsection__debug_str
	.long L$set$161
	.byte	0x1
	.byte	0xa2
	.long	3884

	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x1f
	.set L$set$162,LASF5-Lsection__debug_str
	.long L$set$162
	.byte	0x1
	.byte	0xa2
	.long	2227

	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x20
	.ascii "app\0"
	.byte	0x1
	.byte	0xa2
	.long	2172

	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x27
	.set L$set$163,LASF6-Lsection__debug_str
	.long L$set$163
	.byte	0x1
	.byte	0xa4
	.long	2126

	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x27
	.set L$set$164,LASF7-Lsection__debug_str
	.long L$set$164
	.byte	0x1
	.byte	0xa5
	.long	2172

	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x0
	.byte	0x24
	.ascii "-[SpringBridge listenForRelayConnections]\0"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	LFB148

	.long	LFE148

	.set L$set$165,LLST8-Lsection__debug_loc
	.long L$set$165
	.byte	0x1
	.long	4672

	.byte	0x1f
	.set L$set$166,LASF4-Lsection__debug_str
	.long L$set$166
	.byte	0x1
	.byte	0xa9
	.long	3884

	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x1f
	.set L$set$167,LASF5-Lsection__debug_str
	.long L$set$167
	.byte	0x1
	.byte	0xa9
	.long	2227

	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x21
	.ascii "ctx\0"
	.byte	0x1
	.byte	0xaa
	.long	2103

	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x21
	.ascii "sock\0"
	.byte	0x1
	.byte	0xab
	.long	1660

	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x21
	.ascii "addr4\0"
	.byte	0x1
	.byte	0xae
	.long	2924

	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x21
	.ascii "address4\0"
	.byte	0x1
	.byte	0xb4
	.long	4338

	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x21
	.ascii "err\0"
	.byte	0x1
	.byte	0xb6
	.long	1762

	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x21
	.ascii "cfrl\0"
	.byte	0x1
	.byte	0xbd
	.long	1568

	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x21
	.ascii "source4\0"
	.byte	0x1
	.byte	0xbe
	.long	1608

	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x0
	.byte	0x24
	.ascii "-[SpringBridgeRelay didInjectIntoProgram]\0"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	LFB149

	.long	LFE149

	.set L$set$168,LLST9-Lsection__debug_loc
	.long L$set$168
	.byte	0x1
	.long	4764

	.byte	0x1f
	.set L$set$169,LASF4-Lsection__debug_str
	.long L$set$169
	.byte	0x1
	.byte	0xc8
	.long	4764

	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1f
	.set L$set$170,LASF5-Lsection__debug_str
	.long L$set$170
	.byte	0x1
	.byte	0xc8
	.long	2227

	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	3111

	.byte	0x24
	.ascii "-[SpringBridgeRelay inject]\0"
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.long	LFB150

	.long	LFE150

	.set L$set$171,LLST10-Lsection__debug_loc
	.long L$set$171
	.byte	0x1
	.long	4848

	.byte	0x1f
	.set L$set$172,LASF4-Lsection__debug_str
	.long L$set$172
	.byte	0x1
	.byte	0xcc
	.long	4764

	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x1f
	.set L$set$173,LASF5-Lsection__debug_str
	.long L$set$173
	.byte	0x1
	.byte	0xcc
	.long	2227

	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x0
	.byte	0x24
	.ascii "-[SpringBridgeRelay sendAppForLaunch:]\0"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.long	LFB151

	.long	LFE151

	.set L$set$174,LLST11-Lsection__debug_loc
	.long L$set$174
	.byte	0x1
	.long	4971

	.byte	0x1f
	.set L$set$175,LASF4-Lsection__debug_str
	.long L$set$175
	.byte	0x1
	.byte	0xd4
	.long	4764

	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x1f
	.set L$set$176,LASF5-Lsection__debug_str
	.long L$set$176
	.byte	0x1
	.byte	0xd4
	.long	2227

	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7d
	.byte	0x20
	.ascii "appId\0"
	.byte	0x1
	.byte	0xd4
	.long	2740

	.byte	0x3
	.byte	0x91
	.byte	0xe8,0x7d
	.byte	0x21
	.ascii "buf\0"
	.byte	0x1
	.byte	0xd5
	.long	4971

	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7d
	.byte	0x0
	.byte	0x6
	.long	376

	.long	4987

	.byte	0x7
	.long	373

	.byte	0xff
	.byte	0x0
	.byte	0x6
	.long	376

	.long	4998

	.byte	0x29
	.byte	0x0
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_0\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_TYPE_0\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_1\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_TYPE_1\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_2\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_TYPE_2\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_3\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_TYPE_3\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_4\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_CLASS_NAME_0\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_5\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_TYPE_4\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_6\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_7\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_CLASS_NAME_1\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_8\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_9\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_10\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_11\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_12\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_13\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_14\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_15\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_16\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_17\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_18\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_19\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_20\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_21\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_22\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_23\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_24\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_25\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_26\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_27\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_28\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_29\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x2a
	.ascii "_OBJC_METH_VAR_NAME_30\0"
	.long	4987

	.byte	0x1
	.byte	0x1
	.byte	0x6
	.long	277

	.long	6126

	.byte	0x29
	.byte	0x0
	.byte	0x2b
	.ascii "__CFConstantStringClassReference\0"
	.long	6115

	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.ascii "_DefaultRuneLocale\0"
	.byte	0x4
	.byte	0x84
	.long	1303

	.byte	0x1
	.byte	0x1
	.byte	0x2d
	.ascii "kCFAllocatorDefault\0"
	.byte	0x5
	.short	299

	.long	6225

	.byte	0x1
	.byte	0x1
	.byte	0xe
	.long	1424

	.byte	0x2c
	.ascii "kCFRunLoopCommonModes\0"
	.byte	0x7
	.byte	0x2f
	.long	6261

	.byte	0x1
	.byte	0x1
	.byte	0xe
	.long	1384

	.byte	0x2e
	.ascii "myBundle\0"
	.byte	0x14
	.byte	0x9
	.long	2752

	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_myBundle

	.byte	0x2e
	.ascii "Debug_\0"
	.byte	0x1
	.byte	0x13
	.long	3102

	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Debug_

	.byte	0x2e
	.ascii "Engineer_\0"
	.byte	0x1
	.byte	0x14
	.long	3102

	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Engineer_

	.byte	0x2e
	.ascii "isSpringBoard\0"
	.byte	0x1
	.byte	0x16
	.long	2288

	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_isSpringBoard

	.byte	0x2e
	.ascii "sbridge\0"
	.byte	0x1
	.byte	0x17
	.long	3884

	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_sbridge

	.byte	0x2e
	.ascii "relay\0"
	.byte	0x1
	.byte	0x18
	.long	4764

	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_relay

	.byte	0x2c
	.ascii "_objc_empty_cache\0"
	.byte	0x1
	.byte	0xdb
	.long	475

	.byte	0x1
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.long	2172

	.long	6453

	.byte	0xd
	.long	2172

	.byte	0xd
	.long	2227

	.byte	0x19
	.byte	0x0
	.byte	0x2c
	.ascii "_objc_empty_vtable\0"
	.byte	0x1
	.byte	0xdb
	.long	6481

	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x4
	.long	6431

	.byte	0x18
	.ascii "_class_t\0"
	.byte	0x14
	.byte	0xa
	.byte	0x0
	.long	6883

	.byte	0xa
	.ascii "isa\0"
	.byte	0xa
	.byte	0x0
	.long	6883

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "superclass\0"
	.byte	0xa
	.byte	0x0
	.long	6883

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "cache\0"
	.byte	0xa
	.byte	0x0
	.long	475

	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "vtable\0"
	.byte	0xa
	.byte	0x0
	.long	6889

	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x18
	.ascii "_class_ro_t\0"
	.byte	0x28
	.byte	0xa
	.byte	0x0
	.long	6869

	.byte	0xa
	.ascii "flags\0"
	.byte	0xa
	.byte	0x0
	.long	277

	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "instanceStart\0"
	.byte	0xa
	.byte	0x0
	.long	277

	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "instanceSize\0"
	.byte	0xa
	.byte	0x0
	.long	277

	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "ivarLayout\0"
	.byte	0xa
	.byte	0x0
	.long	493

	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xa
	.ascii "name\0"
	.byte	0xa
	.byte	0x0
	.long	493

	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x14
	.ascii "_objc_method_list\0"
	.byte	0x1
	.byte	0xa
	.ascii "baseMethods\0"
	.byte	0xa
	.byte	0x0
	.long	6895

	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0x14
	.ascii "_protocol_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "baseProtocols\0"
	.byte	0xa
	.byte	0x0
	.long	6901

	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x14
	.ascii "_ivar_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "ivars\0"
	.byte	0xa
	.byte	0x0
	.long	6907

	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0xa
	.ascii "weakIvarLayout\0"
	.byte	0xa
	.byte	0x0
	.long	493

	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0x14
	.ascii "_prop_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "properties\0"
	.byte	0xa
	.byte	0x0
	.long	6913

	.byte	0x2
	.byte	0x23
	.byte	0x24
	.byte	0x0
	.byte	0xa
	.ascii "ro\0"
	.byte	0xa
	.byte	0x0
	.long	6919

	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	6487

	.byte	0x8
	.byte	0x4
	.long	6481

	.byte	0x8
	.byte	0x4
	.long	6691

	.byte	0x8
	.byte	0x4
	.long	6733

	.byte	0x8
	.byte	0x4
	.long	6776

	.byte	0x8
	.byte	0x4
	.long	6832

	.byte	0x8
	.byte	0x4
	.long	6572

	.byte	0x2c
	.ascii "OBJC_CLASS_$_NSAutoreleasePool\0"
	.byte	0x1
	.byte	0xdb
	.long	6487

	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.ascii "OBJC_CLASS_$_NSBundle\0"
	.byte	0x1
	.byte	0xdb
	.long	6487

	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.ascii "OBJC_CLASS_$_NSString\0"
	.byte	0x1
	.byte	0xdb
	.long	6487

	.byte	0x1
	.byte	0x1
	.byte	0x2c
	.ascii "OBJC_CLASS_$_NSData\0"
	.byte	0x1
	.byte	0xdb
	.long	6487

	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section __DWARF,__debug_abbrev,regular,debug
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0x0
	.byte	0x0
	.byte	0x2
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x0
	.byte	0x0
	.byte	0x3
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x4
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x7
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x9
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xa
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0xb
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xd
	.byte	0x5
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xe
	.byte	0x26
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xf
	.byte	0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x10
	.byte	0x26
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x11
	.byte	0x13
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x12
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x13
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x14
	.byte	0x13
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x15
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x16
	.byte	0x28
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xd
	.byte	0x0
	.byte	0x0
	.byte	0x17
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x18
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x19
	.byte	0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1a
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x1b
	.byte	0x1c
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x1c
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x1d
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x1e
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0xe3,0x7f
	.byte	0xd
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x1f
	.byte	0x5
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x20
	.byte	0x5
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x21
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x22
	.byte	0xa
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x23
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x24
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0xe3,0x7f
	.byte	0xd
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x25
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0xe3,0x7f
	.byte	0xd
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x26
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x27
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x28
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x29
	.byte	0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x2a
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x2b
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x34
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x2c
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x2d
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x2e
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section __DWARF,__debug_pubnames,regular,debug
	.long	138

	.short	2

	.set L$set$177,Ldebug_info0-Lsection__debug_info
	.long L$set$177
	.long	7057

	.long	3185

	.ascii "SpringBridgeInject\0"
	.long	3308

	.ascii "SpringBridgeRename\0"
	.long	6266

	.ascii "myBundle\0"
	.long	6289

	.ascii "Debug_\0"
	.long	6310

	.ascii "Engineer_\0"
	.long	6334

	.ascii "isSpringBoard\0"
	.long	6362

	.ascii "sbridge\0"
	.long	6384

	.ascii "relay\0"
	.long	0

	.section __DWARF,__debug_pubtypes,regular,debug
	.long	713

	.short	2

	.set L$set$178,Ldebug_info0-Lsection__debug_info
	.long L$set$178
	.long	7057

	.long	190

	.ascii "__uint8_t\0"
	.long	237

	.ascii "__uint16_t\0"
	.long	284

	.ascii "__uint32_t\0"
	.long	384

	.ascii "__darwin_size_t\0"
	.long	428

	.ascii "__darwin_wchar_t\0"
	.long	452

	.ascii "__darwin_rune_t\0"
	.long	499

	.ascii "in_addr_t\0"
	.long	516

	.ascii "in_port_t\0"
	.long	533

	.ascii "size_t\0"
	.long	628

	.ascii "_RuneEntry\0"
	.long	700

	.ascii "_RuneRange\0"
	.long	777

	.ascii "_RuneCharClass\0"
	.long	1303

	.ascii "_RuneLocale\0"
	.long	1348

	.ascii "CFOptionFlags\0"
	.long	1369

	.ascii "CFIndex\0"
	.long	1384

	.ascii "CFStringRef\0"
	.long	1424

	.ascii "CFAllocatorRef\0"
	.long	1530

	.ascii "CFDataRef\0"
	.long	1568

	.ascii "CFRunLoopRef\0"
	.long	1608

	.ascii "CFRunLoopSourceRef\0"
	.long	1660

	.ascii "CFSocketRef\0"
	.long	1762

	.ascii "CFSocketError\0"
	.long	1940

	.ascii "CFSocketCallBackType\0"
	.long	2103

	.ascii "CFSocketContext\0"
	.long	2126

	.ascii "Class\0"
	.long	2181

	.ascii "objc_object\0"
	.long	2172

	.ascii "id\0"
	.long	2216

	.ascii "SEL\0"
	.long	2249

	.ascii "IMP\0"
	.long	2288

	.ascii "BOOL\0"
	.long	2300

	.ascii "NSUInteger\0"
	.long	2318

	.ascii "NSObject\0"
	.long	2351

	.ascii "NSArray\0"
	.long	2377

	.ascii "NSAutoreleasePool\0"
	.long	2496

	.ascii "NSBundle\0"
	.long	2688

	.ascii "NSString\0"
	.long	2715

	.ascii "NSData\0"
	.long	2758

	.ascii "Method\0"
	.long	2792

	.ascii "sa_family_t\0"
	.long	2811

	.ascii "sockaddr\0"
	.long	2888

	.ascii "in_addr\0"
	.long	2924

	.ascii "sockaddr_in\0"
	.long	3047

	.ascii "SpringBridge\0"
	.long	3111

	.ascii "SpringBridgeRelay\0"
	.long	6487

	.ascii "_class_t\0"
	.long	2138

	.ascii "objc_class\0"
	.long	0

	.section __DWARF,__debug_aranges,regular,debug
	.long	28

	.short	2

	.set L$set$179,Ldebug_info0-Lsection__debug_info
	.long L$set$179
	.byte	0x4
	.byte	0x0
	.short	0

	.short	0

	.long	Ltext0

	.set L$set$180,Letext0-Ltext0
	.long L$set$180
	.long	0

	.long	0

	.section __DWARF,__debug_line,regular,debug
	.set L$set$181,LELT0-LSLT0
	.long L$set$181
LSLT0:
	.short	2

	.set L$set$182,LELTP0-LASLTP0
	.long L$set$182
LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii "/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.0.sdk/System/Library/Frameworks/CoreFoundation.framework/Headers"
	.byte	0
	.ascii "/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.0.sdk/System/Library/Frameworks/Foundation.framework/Headers"
	.byte	0
	.ascii "/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.0.sdk/usr/include"
	.byte	0
	.ascii "/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.0.sdk/usr/include/arm"
	.byte	0
	.ascii "/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.0.sdk/usr/include/netinet"
	.byte	0
	.ascii "/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.0.sdk/usr/include/objc"
	.byte	0
	.ascii "/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.0.sdk/usr/include/sys"
	.byte	0
	.ascii "/Users/jeongwookoh/Documents/Tmp/1/zataangstuff-read-only/SpringBridge/Classes"
	.byte	0
	.byte	0x0
	.ascii "SpringBridge.m\0"
	.byte	0x8
	.byte	0x0
	.byte	0x0
	.ascii "arm/_types.h\0"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii "sys/types.h\0"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii "runetype.h\0"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii "CFBase.h\0"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.ascii "CFData.h\0"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.ascii "CFRunLoop.h\0"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.ascii "CFSocket.h\0"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.ascii "objc/runtime.h\0"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii "<built-in>\0"
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.ascii "objc/objc.h\0"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii "NSObjCRuntime.h\0"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii "NSObject.h\0"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii "NSEnumerator.h\0"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii "NSAutoreleasePool.h\0"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii "NSBundle.h\0"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii "NSArray.h\0"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii "sys/socket.h\0"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii "netinet/in.h\0"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii "SpringBridge.h\0"
	.byte	0x8
	.byte	0x0
	.byte	0x0
	.byte	0x0
LELTP0:
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM1

	.byte	0x2e
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM2

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM3

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM4

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM5

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM6

	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM7

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM8

	.byte	0x1
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM9

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM10

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM11

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM12

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM13

	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM14

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM15

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM16

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM17

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM18

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM19

	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM20

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM21

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM22

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM23

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM24

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM25

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM26

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM27

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM28

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM29

	.byte	0x13
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM30

	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM31

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM32

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM33

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM34

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM35

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM36

	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM37

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM38

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM39

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM40

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM41

	.byte	0x22
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM42

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM43

	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM44

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM45

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM46

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM47

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM48

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM49

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM50

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM51

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM52

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM53

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM54

	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM55

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM56

	.byte	0x18
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM57

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM58

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM59

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM60

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM61

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM62

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM63

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM64

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM65

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM66

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM67

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM68

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM69

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM70

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM71

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM72

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM73

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM74

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM75

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM76

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM77

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM78

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM79

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM80

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM81

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM82

	.byte	0x10
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM83

	.byte	0x10
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM84

	.byte	0x21
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM85

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM86

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM87

	.byte	0x18
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM88

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM89

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM90

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM91

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM92

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM93

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM94

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM95

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM96

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM97

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM98

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM99

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM100

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM101

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM102

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM103

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM104

	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM105

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM106

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM107

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM108

	.byte	0x17
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM109

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM110

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM111

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM112

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM113

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM114

	.byte	0x1a
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM115

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM116

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM117

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM118

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM119

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM120

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM121

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM122

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM123

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM124

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM125

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM126

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM127

	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	LM128

	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.long	Letext0

	.byte	0x0
	.byte	0x1
	.byte	0x1
LELT0:
	.section __DWARF,__debug_str,regular,debug
LASF0:
	.ascii "__CFString\0"
LASF6:
	.ascii "SBUIController\0"
LASF4:
	.ascii "self\0"
LASF5:
	.ascii "_cmd\0"
LASF1:
	.ascii "__CFAllocator\0"
LASF7:
	.ascii "uiController\0"
LASF3:
	.ascii "classname\0"
LASF2:
	.ascii "__CFData\0"
	.data
	.align 2
L_relay$non_lazy_ptr:
	.long	_relay
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_objc_msgSend$stub:
	.indirect_symbol _objc_msgSend
	ldr	ip, L_objc_msgSend$slp
	ldr	pc, [ip, #0]
L_objc_msgSend$slp:
	.long	L_objc_msgSend$lazy_ptr
	.lazy_symbol_pointer
L_objc_msgSend$lazy_ptr:
	.indirect_symbol	_objc_msgSend
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_socket$stub:
	.indirect_symbol _socket
	ldr	ip, L_socket$slp
	ldr	pc, [ip, #0]
L_socket$slp:
	.long	L_socket$lazy_ptr
	.lazy_symbol_pointer
L_socket$lazy_ptr:
	.indirect_symbol	_socket
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_CFRunLoopGetCurrent$stub:
	.indirect_symbol _CFRunLoopGetCurrent
	ldr	ip, L_CFRunLoopGetCurrent$slp
	ldr	pc, [ip, #0]
L_CFRunLoopGetCurrent$slp:
	.long	L_CFRunLoopGetCurrent$lazy_ptr
	.lazy_symbol_pointer
L_CFRunLoopGetCurrent$lazy_ptr:
	.indirect_symbol	_CFRunLoopGetCurrent
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_object_getClass$stub:
	.indirect_symbol _object_getClass
	ldr	ip, L_object_getClass$slp
	ldr	pc, [ip, #0]
L_object_getClass$slp:
	.long	L_object_getClass$lazy_ptr
	.lazy_symbol_pointer
L_object_getClass$lazy_ptr:
	.indirect_symbol	_object_getClass
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L___error$stub:
	.indirect_symbol ___error
	ldr	ip, L___error$slp
	ldr	pc, [ip, #0]
L___error$slp:
	.long	L___error$lazy_ptr
	.lazy_symbol_pointer
L___error$lazy_ptr:
	.indirect_symbol	___error
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_inet_addr$stub:
	.indirect_symbol _inet_addr
	ldr	ip, L_inet_addr$slp
	ldr	pc, [ip, #0]
L_inet_addr$slp:
	.long	L_inet_addr$lazy_ptr
	.lazy_symbol_pointer
L_inet_addr$lazy_ptr:
	.indirect_symbol	_inet_addr
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_memcpy$stub:
	.indirect_symbol _memcpy
	ldr	ip, L_memcpy$slp
	ldr	pc, [ip, #0]
L_memcpy$slp:
	.long	L_memcpy$lazy_ptr
	.lazy_symbol_pointer
L_memcpy$lazy_ptr:
	.indirect_symbol	_memcpy
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_method_getImplementation$stub:
	.indirect_symbol _method_getImplementation
	ldr	ip, L_method_getImplementation$slp
	ldr	pc, [ip, #0]
L_method_getImplementation$slp:
	.long	L_method_getImplementation$lazy_ptr
	.lazy_symbol_pointer
L_method_getImplementation$lazy_ptr:
	.indirect_symbol	_method_getImplementation
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_sendto$stub:
	.indirect_symbol _sendto
	ldr	ip, L_sendto$slp
	ldr	pc, [ip, #0]
L_sendto$slp:
	.long	L_sendto$lazy_ptr
	.lazy_symbol_pointer
L_sendto$lazy_ptr:
	.indirect_symbol	_sendto
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_class_getInstanceMethod$stub:
	.indirect_symbol _class_getInstanceMethod
	ldr	ip, L_class_getInstanceMethod$slp
	ldr	pc, [ip, #0]
L_class_getInstanceMethod$slp:
	.long	L_class_getInstanceMethod$lazy_ptr
	.lazy_symbol_pointer
L_class_getInstanceMethod$lazy_ptr:
	.indirect_symbol	_class_getInstanceMethod
	.long	dyld_stub_binding_helper
	.non_lazy_symbol_pointer
L_kCFRunLoopCommonModes$non_lazy_ptr:
	.indirect_symbol _kCFRunLoopCommonModes
	.long	0
	.data
	.align 2
L_sbridge$non_lazy_ptr:
	.long	_sbridge
	.align 2
L_OBJC_IVAR_$_SpringBridgeRelay.serverAddr$non_lazy_ptr:
	.long	_OBJC_IVAR_$_SpringBridgeRelay.serverAddr
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_class_copyMethodList$stub:
	.indirect_symbol _class_copyMethodList
	ldr	ip, L_class_copyMethodList$slp
	ldr	pc, [ip, #0]
L_class_copyMethodList$slp:
	.long	L_class_copyMethodList$lazy_ptr
	.lazy_symbol_pointer
L_class_copyMethodList$lazy_ptr:
	.indirect_symbol	_class_copyMethodList
	.long	dyld_stub_binding_helper
	.non_lazy_symbol_pointer
L_kCFAllocatorDefault$non_lazy_ptr:
	.indirect_symbol _kCFAllocatorDefault
	.long	0
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_method_setImplementation$stub:
	.indirect_symbol _method_setImplementation
	ldr	ip, L_method_setImplementation$slp
	ldr	pc, [ip, #0]
L_method_setImplementation$slp:
	.long	L_method_setImplementation$lazy_ptr
	.lazy_symbol_pointer
L_method_setImplementation$lazy_ptr:
	.indirect_symbol	_method_setImplementation
	.long	dyld_stub_binding_helper
	.data
	.align 2
L_isSpringBoard$non_lazy_ptr:
	.long	_isSpringBoard
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_CFSocketSetAddress$stub:
	.indirect_symbol _CFSocketSetAddress
	ldr	ip, L_CFSocketSetAddress$slp
	ldr	pc, [ip, #0]
L_CFSocketSetAddress$slp:
	.long	L_CFSocketSetAddress$lazy_ptr
	.lazy_symbol_pointer
L_CFSocketSetAddress$lazy_ptr:
	.indirect_symbol	_CFSocketSetAddress
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_CFSocketCreateRunLoopSource$stub:
	.indirect_symbol _CFSocketCreateRunLoopSource
	ldr	ip, L_CFSocketCreateRunLoopSource$slp
	ldr	pc, [ip, #0]
L_CFSocketCreateRunLoopSource$slp:
	.long	L_CFSocketCreateRunLoopSource$lazy_ptr
	.lazy_symbol_pointer
L_CFSocketCreateRunLoopSource$lazy_ptr:
	.indirect_symbol	_CFSocketCreateRunLoopSource
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_NSLog$stub:
	.indirect_symbol _NSLog
	ldr	ip, L_NSLog$slp
	ldr	pc, [ip, #0]
L_NSLog$slp:
	.long	L_NSLog$lazy_ptr
	.lazy_symbol_pointer
L_NSLog$lazy_ptr:
	.indirect_symbol	_NSLog
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_sel_registerName$stub:
	.indirect_symbol _sel_registerName
	ldr	ip, L_sel_registerName$slp
	ldr	pc, [ip, #0]
L_sel_registerName$slp:
	.long	L_sel_registerName$lazy_ptr
	.lazy_symbol_pointer
L_sel_registerName$lazy_ptr:
	.indirect_symbol	_sel_registerName
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_memset$stub:
	.indirect_symbol _memset
	ldr	ip, L_memset$slp
	ldr	pc, [ip, #0]
L_memset$slp:
	.long	L_memset$lazy_ptr
	.lazy_symbol_pointer
L_memset$lazy_ptr:
	.indirect_symbol	_memset
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_objc_enumerationMutation$stub:
	.indirect_symbol _objc_enumerationMutation
	ldr	ip, L_objc_enumerationMutation$slp
	ldr	pc, [ip, #0]
L_objc_enumerationMutation$slp:
	.long	L_objc_enumerationMutation$lazy_ptr
	.lazy_symbol_pointer
L_objc_enumerationMutation$lazy_ptr:
	.indirect_symbol	_objc_enumerationMutation
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_free$stub:
	.indirect_symbol _free
	ldr	ip, L_free$slp
	ldr	pc, [ip, #0]
L_free$slp:
	.long	L_free$lazy_ptr
	.lazy_symbol_pointer
L_free$lazy_ptr:
	.indirect_symbol	_free
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_sel_getUid$stub:
	.indirect_symbol _sel_getUid
	ldr	ip, L_sel_getUid$slp
	ldr	pc, [ip, #0]
L_sel_getUid$slp:
	.long	L_sel_getUid$lazy_ptr
	.lazy_symbol_pointer
L_sel_getUid$lazy_ptr:
	.indirect_symbol	_sel_getUid
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_CFRunLoopAddSource$stub:
	.indirect_symbol _CFRunLoopAddSource
	ldr	ip, L_CFRunLoopAddSource$slp
	ldr	pc, [ip, #0]
L_CFRunLoopAddSource$slp:
	.long	L_CFRunLoopAddSource$lazy_ptr
	.lazy_symbol_pointer
L_CFRunLoopAddSource$lazy_ptr:
	.indirect_symbol	_CFRunLoopAddSource
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_CFSocketCreate$stub:
	.indirect_symbol _CFSocketCreate
	ldr	ip, L_CFSocketCreate$slp
	ldr	pc, [ip, #0]
L_CFSocketCreate$slp:
	.long	L_CFSocketCreate$lazy_ptr
	.lazy_symbol_pointer
L_CFSocketCreate$lazy_ptr:
	.indirect_symbol	_CFSocketCreate
	.long	dyld_stub_binding_helper
	.data
	.align 2
L_OBJC_IVAR_$_SpringBridgeRelay.sock$non_lazy_ptr:
	.long	_OBJC_IVAR_$_SpringBridgeRelay.sock
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_class_addMethod$stub:
	.indirect_symbol _class_addMethod
	ldr	ip, L_class_addMethod$slp
	ldr	pc, [ip, #0]
L_class_addMethod$slp:
	.long	L_class_addMethod$lazy_ptr
	.lazy_symbol_pointer
L_class_addMethod$lazy_ptr:
	.indirect_symbol	_class_addMethod
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_method_getTypeEncoding$stub:
	.indirect_symbol _method_getTypeEncoding
	ldr	ip, L_method_getTypeEncoding$slp
	ldr	pc, [ip, #0]
L_method_getTypeEncoding$slp:
	.long	L_method_getTypeEncoding$lazy_ptr
	.lazy_symbol_pointer
L_method_getTypeEncoding$lazy_ptr:
	.indirect_symbol	_method_getTypeEncoding
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_objc_getClass$stub:
	.indirect_symbol _objc_getClass
	ldr	ip, L_objc_getClass$slp
	ldr	pc, [ip, #0]
L_objc_getClass$slp:
	.long	L_objc_getClass$lazy_ptr
	.lazy_symbol_pointer
L_objc_getClass$lazy_ptr:
	.indirect_symbol	_objc_getClass
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_strncpy$stub:
	.indirect_symbol _strncpy
	ldr	ip, L_strncpy$slp
	ldr	pc, [ip, #0]
L_strncpy$slp:
	.long	L_strncpy$lazy_ptr
	.lazy_symbol_pointer
L_strncpy$lazy_ptr:
	.indirect_symbol	_strncpy
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_strerror$stub:
	.indirect_symbol _strerror
	ldr	ip, L_strerror$slp
	ldr	pc, [ip, #0]
L_strerror$slp:
	.long	L_strerror$lazy_ptr
	.lazy_symbol_pointer
L_strerror$lazy_ptr:
	.indirect_symbol	_strerror
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_strlen$stub:
	.indirect_symbol _strlen
	ldr	ip, L_strlen$slp
	ldr	pc, [ip, #0]
L_strlen$slp:
	.long	L_strlen$lazy_ptr
	.lazy_symbol_pointer
L_strlen$lazy_ptr:
	.indirect_symbol	_strlen
	.long	dyld_stub_binding_helper
	.section __TEXT,__symbol_stub4,symbol_stubs,none,12
	.align 2
	.code 32
L_CFRelease$stub:
	.indirect_symbol _CFRelease
	ldr	ip, L_CFRelease$slp
	ldr	pc, [ip, #0]
L_CFRelease$slp:
	.long	L_CFRelease$lazy_ptr
	.lazy_symbol_pointer
L_CFRelease$lazy_ptr:
	.indirect_symbol	_CFRelease
	.long	dyld_stub_binding_helper
	.subsections_via_symbols
