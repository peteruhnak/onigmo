accessing structure variables
endArray
	"convert what #beg returns to array, editing the generated method is dangerous, as #rebuildFieldAccessors overwrites it"
	^ FFIExternalArray 
		fromHandle: (self end getHandle)
		type: OnigPosition size: self num_regs