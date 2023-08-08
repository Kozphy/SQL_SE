# lock

## different type of lock

1. `Shared Lock (Read Lock)`:

   - Multiple transactions can hold shared locks on the same data simultaneously.
   - Transactions with shared locks `can read the data but cannot modify it`.
   - Shared locks are used when `a transaction wants to read data without the risk of being affected by other transactions reading the same data simultaneously`.
   - Shared locks are compatible with other shared locks but `not compatible with exclusive locks`.
   - Once a transaction holds a shared lock, other transactions can also acquire shared locks on the same data, but no transaction can acquire an exclusive lock until all shared locks are released.

2. `Exclusive Lock (Write Lock)`:

   - Only one transaction can hold an exclusive lock on data at a time.
   - Transactions with exclusive locks have both read and write access to the data. They can read and modify the data.
   - Exclusive locks are used when a transaction wants to modify data and ensure that no other transaction can read or modify the data at the same time to maintain data consistency.
   - Exclusive locks are not compatible with any other locks (neither shared nor exclusive). If a transaction holds an exclusive lock on data, no other transaction can acquire any lock on the same data until the exclusive lock is released.

3. `Update Lock`: A combination of shared and exclusive lock. It allows multiple transactions to read the data simultaneously but prevents other transactions from acquiring exclusive or update locks until the current transaction is completed.

4. `intent lock` : This lock signals the intention of a transaction to acquire either shared or exclusive locks on a specific resource. It helps prevent deadlock situations by indicating what type of lock a transaction is going to request.
