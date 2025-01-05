# Stack Overflow in Nested Hack Functions

This repository demonstrates a stack overflow error that can occur in Hack programs when functions are nested too deeply. The `baz` function calls `bar`, which calls `foo`, creating a chain of function calls.  If this nesting is taken to extremes, it exceeds the stack's capacity, leading to a crash.

The solution demonstrates a way to mitigate this by restructuring the code to avoid deeply nested calls.