# deadlock

## what is deadlock

`Deadlock` is a situation that occurs in a `multi-threaded` or `multi-process` environment where two or more processes or threads are unable to proceed further because each of them is waiting for a resource that is held by another process or thread in the same group.

## When will deadlock happen?

Deadlock typically happens when a system uses multiple resources, and `different processes compete for these resources`. To understand deadlock, consider the following scenario with two processes (`A` and `B`) and two resources (`R1` and `R2`):

1. Process `A` acquires Resource `R1` and requests Resource `R2`.
2. Process `B` acquires Resource `R2` and requests Resource `R1`.

## how to handle deadlock

1. `Deadlock Prevention`: This approach involves structuring the system in such a way that the conditions for deadlock cannot occur. It may include resource allocation rules, strict ordering of resource requests, or using only one resource at a time.

2. `Deadlock Avoidance`: This technique uses algorithms to analyze the current state of the system and predicts if a resource allocation will lead to deadlock. If potential deadlock is detected, the system will delay or deny the request to avoid the situation.

3. `Deadlock Detection and Recovery`: In this approach, the system allows deadlock to occur but periodically checks for deadlock conditions. If deadlock is detected, the system will take actions to break the circular dependency and recover from the deadlock state.

4. `Deadlock Ignorance`: Some systems, especially those with real-time requirements, may choose to ignore deadlock and assume it will not occur. This approach is appropriate when deadlock is extremely rare, and the complexity of deadlock prevention or detection outweighs the risk of deadlock happening.
