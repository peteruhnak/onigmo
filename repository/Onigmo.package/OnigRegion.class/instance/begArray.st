accessing structure variables
begArray
	"convert what #beg returns to array, editing the generated method is dangerous, as #rebuildFieldAccessors overwrites it"
	^ FFIExternalArray 
		fromHandle: (self beg getHandle)
		type: OnigPosition size: self num_regs