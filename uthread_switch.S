	.text

/* Switch from current_thread to next_thread. Make next_thread
 * the current_thread, and set next_thread to 0.
 * Use eax as a temporary register; it is caller saved.
 */
	.globl thread_switch
thread_switch:
	/* YOUR CODE HERE */
	# Save old callee-saved registers
	pushal
	
	# Switch stacks
	movl current_thread, %eax
	movl %esp, (%eax)
	movl next_thread, %eax
	movl (%eax), %esp
	movl %eax, current_thread
	
	# Load new callee-saved registers
	popal
	ret				/* pop return address from stack */
