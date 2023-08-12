# transaction

transaction 可用來設定多個連續資料操作必須全部成功，否則回復到未執行任何操作的狀態。

## What is transaction

A database transaction is `a unit of work` or a `sequence of operations` that is executed as a single logical unit of work. In the context of databases, a transaction represents a series of database operations that need to be executed together to maintain data consistency and integrity.

## ACID

1. `Atomicity`: Atomicity ensures that either **all the operations in the transaction are successfully** completed, or **none of them are performed at all**. If any part of the transaction `fails`, all changes made by the transaction are `rolled back`, and the database remains unchanged.

2. `Consistency`: Consistency ensures that the database `starts and ends a transaction in a consistent state`. A transaction must bring the database from one valid state to another. This means that `all integrity constraints, business rules, and other validation criteria must be satisfied during the transaction`.

   - Data Integrity
     - Consistency ensures that the data stored in the database remains `accurate` and `valid throughout` the execution of a transaction.
   - Presevation of Invariants
     - Invariants are logical properties or conditions that should always hold true in the database.
   - Serializability
     - Consistency requires that the execution of multiple transactions should appear as if they were `executed sequentially one after the other`, even if they are executed concurrently.
   - No Partial Updates
     - Consistency ensures that a transaction either `completes all its operations successfully or makes no changes at all`.

3. `Isolation (lock)`: Isolation ensures that the intermediate state of a transaction is not visible to other transactions. It prevents multiple transactions from interfering with each other while they are being executed concurrently.

4. `Durability`: Durability ensures that `once a transaction is committed`, its changes are `permanent` and will `survive` any subsequent system failures. The changes made by a committed transaction are stored in the database and are considered permanent.
