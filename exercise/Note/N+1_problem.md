# N + 1

資料庫中的"N+1 問題"是指在進行資料查詢時，可能會發生過多的資料庫查詢操作，造成效能下降的情況。

這個問題通常在使用 ORM（物件關聯映射）工具或者類似的資料存取方式時出現，特別是在處理關聯式資料庫中的多對多（Many-to-Many）或一對多（One-to-Many）的關係時。當程式碼需要獲取一個物件的相關資料時，如果沒有適當地設計查詢，可能導致額外的 N 次單獨查詢，其中 N 是物件的數量。這樣的操作會增加伺服器對資料庫的負載，並且明顯地影響查詢效能。

舉個例子來說，假設有一個部落格的應用程式，每個使用者都有多篇文章。如果要取得所有使用者的最新文章，而程式碼中未適當地設計查詢，它可能會逐個查詢每個使用者的文章，導致額外的查詢次數。

為了避免 N+1 問題，可以使用"預先載入"（Eager Loading）的方法，一次性將所需資料預先載入，而不是等到需要時才進行額外的查詢。在大多數 ORM 工具中，可以使用類似 JOIN 或 SELECT IN 的方式，將關聯資料一併查詢，以減少資料庫查詢的次數。

處理好 N+1 問題對於維持資料庫查詢效能和應用程式的整體效率非常重要。

## resolve N + 1 in entity framework

1. Eager Loading

```csharp=
var authors = context.Authors.Include(a => a.Books).ToList();
```

2. Explicit Loading

```csharp=
var author = context.Authors.First();
context.Entry(author).Collection(a => a.Books).Load();
```

3. Projection

```csharp=
var authorData = context.Authors.Select(a => new
{
    AuthorName = a.Name,
    BookCount = a.Books.Count
}).ToList();
```

4. Batch Loading

```csharp=
var authors = context.Authors.ToList();
context.Entry(authors).Collection(a => a.Books).Load();
```
