.class public final Lcom/shabakaty/downloader/op;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/op$b;,
        Lcom/shabakaty/downloader/op$c;,
        Lcom/shabakaty/downloader/op$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/wt0;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 9

    const-string v0, "directory"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/za1;->a:Lcom/shabakaty/downloader/za1;

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/wt0;

    .line 5
    sget-object v8, Lcom/shabakaty/downloader/il4;->h:Lcom/shabakaty/downloader/il4;

    const v4, 0x31191

    const/4 v5, 0x2

    move-object v1, v0

    move-object v3, p1

    move-wide v6, p2

    .line 6
    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/wt0;-><init>(Lcom/shabakaty/downloader/za1;Ljava/io/File;IIJLcom/shabakaty/downloader/il4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/op;->r:Lcom/shabakaty/downloader/wt0;

    return-void
.end method

.method public static final b(Lcom/shabakaty/downloader/qw1;)Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/qw1;->j:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object p0

    const-string v0, "MD5"

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fp;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lcom/shabakaty/downloader/ts1;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ts1;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 2
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vary"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Ljava/util/TreeSet;

    .line 5
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v7, "CASE_INSENSITIVE_ORDER"

    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :cond_1
    new-array v5, v6, [C

    const/16 v6, 0x2c

    aput-char v6, v5, v1

    const/4 v6, 0x6

    .line 7
    invoke-static {v4, v5, v1, v1, v6}, Lcom/shabakaty/downloader/re4;->d0(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 8
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/shabakaty/downloader/re4;->m0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    sget-object v2, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    :goto_3
    return-object v2
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op;->r:Lcom/shabakaty/downloader/wt0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0;->e()V

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "lruEntries.values"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/shabakaty/downloader/wt0$d;

    .line 5
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, [Lcom/shabakaty/downloader/wt0$d;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 6
    aget-object v5, v1, v4

    const-string v6, "entry"

    .line 7
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/wt0;->r(Lcom/shabakaty/downloader/wt0$d;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v2, v0, Lcom/shabakaty/downloader/wt0;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c(Lcom/shabakaty/downloader/vr3;)V
    .locals 6

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op;->r:Lcom/shabakaty/downloader/wt0;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/op;->b(Lcom/shabakaty/downloader/qw1;)Ljava/lang/String;

    move-result-object p1

    .line 4
    monitor-enter v0

    :try_start_0
    const-string v1, "key"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0;->e()V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0;->a()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wt0;->v(Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/wt0$d;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wt0;->r(Lcom/shabakaty/downloader/wt0$d;)Z

    .line 10
    iget-wide v2, v0, Lcom/shabakaty/downloader/wt0;->v:J

    iget-wide v4, v0, Lcom/shabakaty/downloader/wt0;->r:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    iput-boolean v1, v0, Lcom/shabakaty/downloader/wt0;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    .line 12
    :cond_1
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op;->r:Lcom/shabakaty/downloader/wt0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/op;->r:Lcom/shabakaty/downloader/wt0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0;->flush()V

    return-void
.end method
