.class public final Lcom/shabakaty/downloader/wt0;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wt0$e;,
        Lcom/shabakaty/downloader/wt0$a;,
        Lcom/shabakaty/downloader/wt0$d;
    }
.end annotation


# static fields
.field public static final M:Lcom/shabakaty/downloader/mq3;

.field public static final N:Ljava/lang/String;

.field public static final O:Ljava/lang/String;

.field public static final P:Ljava/lang/String;

.field public static final Q:Ljava/lang/String;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:J

.field public final G:Lcom/shabakaty/downloader/gl4;

.field public final H:Lcom/shabakaty/downloader/wt0$b;

.field public final I:Lcom/shabakaty/downloader/za1;

.field public final J:Ljava/io/File;

.field public final K:I

.field public final L:I

.field public r:J

.field public final s:Ljava/io/File;

.field public final t:Ljava/io/File;

.field public final u:Ljava/io/File;

.field public v:J

.field public w:Lcom/shabakaty/downloader/do;

.field public final x:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/wt0$d;",
            ">;"
        }
    .end annotation
.end field

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mq3;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mq3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/wt0;->M:Lcom/shabakaty/downloader/mq3;

    const-string v0, "CLEAN"

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/wt0;->N:Ljava/lang/String;

    const-string v0, "DIRTY"

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/wt0;->O:Ljava/lang/String;

    const-string v0, "REMOVE"

    .line 4
    sput-object v0, Lcom/shabakaty/downloader/wt0;->P:Ljava/lang/String;

    const-string v0, "READ"

    .line 5
    sput-object v0, Lcom/shabakaty/downloader/wt0;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/za1;Ljava/io/File;IIJLcom/shabakaty/downloader/il4;)V
    .locals 3

    const-string v0, "taskRunner"

    invoke-static {p7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iput-object p2, p0, Lcom/shabakaty/downloader/wt0;->J:Ljava/io/File;

    iput p3, p0, Lcom/shabakaty/downloader/wt0;->K:I

    iput p4, p0, Lcom/shabakaty/downloader/wt0;->L:I

    .line 2
    iput-wide p5, p0, Lcom/shabakaty/downloader/wt0;->r:J

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    const/high16 p3, 0x3f400000    # 0.75f

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p3, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {p7}, Lcom/shabakaty/downloader/il4;->f()Lcom/shabakaty/downloader/gl4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/wt0;->G:Lcom/shabakaty/downloader/gl4;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/wt0$b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p7, Lcom/shabakaty/downloader/ry4;->g:Ljava/lang/String;

    const-string v1, " Cache"

    invoke-static {p3, p7, v1}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/shabakaty/downloader/wt0$b;-><init>(Lcom/shabakaty/downloader/wt0;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wt0;->H:Lcom/shabakaty/downloader/wt0$b;

    const-wide/16 v1, 0x0

    cmp-long p1, p5, v1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-lez p4, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wt0;->s:Ljava/io/File;

    .line 7
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wt0;->t:Ljava/io/File;

    .line 8
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wt0;->u:Ljava/io/File;

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valueCount <= 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wt0;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "cache is closed"

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/shabakaty/downloader/wt0$a;Z)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/shabakaty/downloader/wt0$a;->c:Lcom/shabakaty/downloader/wt0$d;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    .line 3
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 4
    iget-boolean v2, v0, Lcom/shabakaty/downloader/wt0$d;->d:Z

    if-nez v2, :cond_2

    .line 5
    iget v2, p0, Lcom/shabakaty/downloader/wt0;->L:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 6
    iget-object v4, p1, Lcom/shabakaty/downloader/wt0$a;->a:[Z

    .line 7
    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    .line 9
    iget-object v5, v0, Lcom/shabakaty/downloader/wt0$d;->c:Ljava/util/List;

    .line 10
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-interface {v4, v5}, Lcom/shabakaty/downloader/za1;->d(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt0$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt0$a;->a()V

    .line 14
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    iget p1, p0, Lcom/shabakaty/downloader/wt0;->L:I

    :goto_1
    if-ge v1, p1, :cond_5

    .line 16
    iget-object v2, v0, Lcom/shabakaty/downloader/wt0$d;->c:Ljava/util/List;

    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz p2, :cond_3

    .line 18
    iget-boolean v3, v0, Lcom/shabakaty/downloader/wt0$d;->e:Z

    if-nez v3, :cond_3

    .line 19
    iget-object v3, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/za1;->d(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    iget-object v3, v0, Lcom/shabakaty/downloader/wt0$d;->b:Ljava/util/List;

    .line 21
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 22
    iget-object v4, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    invoke-interface {v4, v2, v3}, Lcom/shabakaty/downloader/za1;->e(Ljava/io/File;Ljava/io/File;)V

    .line 23
    iget-object v2, v0, Lcom/shabakaty/downloader/wt0$d;->a:[J

    .line 24
    aget-wide v4, v2, v1

    .line 25
    iget-object v2, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/za1;->h(Ljava/io/File;)J

    move-result-wide v2

    .line 26
    iget-object v6, v0, Lcom/shabakaty/downloader/wt0$d;->a:[J

    .line 27
    aput-wide v2, v6, v1

    .line 28
    iget-wide v6, p0, Lcom/shabakaty/downloader/wt0;->v:J

    sub-long/2addr v6, v4

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/shabakaty/downloader/wt0;->v:J

    goto :goto_2

    .line 29
    :cond_3
    iget-object v3, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/za1;->f(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 30
    iput-object p1, v0, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    .line 31
    iget-boolean p1, v0, Lcom/shabakaty/downloader/wt0$d;->e:Z

    if-eqz p1, :cond_6

    .line 32
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/wt0;->r(Lcom/shabakaty/downloader/wt0$d;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 34
    :cond_6
    :try_start_2
    iget p1, p0, Lcom/shabakaty/downloader/wt0;->y:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/shabakaty/downloader/wt0;->y:I

    .line 35
    iget-object p1, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 36
    iget-boolean v2, v0, Lcom/shabakaty/downloader/wt0$d;->d:Z

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-nez v2, :cond_8

    if-eqz p2, :cond_7

    goto :goto_3

    .line 37
    :cond_7
    iget-object p2, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    .line 38
    iget-object v1, v0, Lcom/shabakaty/downloader/wt0$d;->i:Ljava/lang/String;

    .line 39
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object p2, Lcom/shabakaty/downloader/wt0;->P:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object p2

    invoke-interface {p2, v4}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 41
    iget-object p2, v0, Lcom/shabakaty/downloader/wt0$d;->i:Ljava/lang/String;

    .line 42
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 43
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    goto :goto_4

    .line 44
    :cond_8
    :goto_3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/wt0$d;->d:Z

    .line 45
    sget-object v1, Lcom/shabakaty/downloader/wt0;->N:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 46
    iget-object v1, v0, Lcom/shabakaty/downloader/wt0$d;->i:Ljava/lang/String;

    .line 47
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 48
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wt0$d;->b(Lcom/shabakaty/downloader/do;)V

    .line 49
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    if-eqz p2, :cond_9

    .line 50
    iget-wide v1, p0, Lcom/shabakaty/downloader/wt0;->F:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/shabakaty/downloader/wt0;->F:J

    .line 51
    iput-wide v1, v0, Lcom/shabakaty/downloader/wt0$d;->h:J

    .line 52
    :cond_9
    :goto_4
    invoke-interface {p1}, Lcom/shabakaty/downloader/do;->flush()V

    .line 53
    iget-wide p1, p0, Lcom/shabakaty/downloader/wt0;->v:J

    iget-wide v0, p0, Lcom/shabakaty/downloader/wt0;->r:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_a

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->f()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 54
    :cond_a
    iget-object p1, p0, Lcom/shabakaty/downloader/wt0;->G:Lcom/shabakaty/downloader/gl4;

    iget-object p2, p0, Lcom/shabakaty/downloader/wt0;->H:Lcom/shabakaty/downloader/wt0$b;

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/shabakaty/downloader/gl4;->d(Lcom/shabakaty/downloader/gl4;Lcom/shabakaty/downloader/wk4;JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :cond_b
    monitor-exit p0

    return-void

    :cond_c
    :try_start_3
    const-string p1, "Check failed."

    .line 56
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;J)Lcom/shabakaty/downloader/wt0$a;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->a()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wt0;->v(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wt0$d;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 5
    iget-wide v1, v0, Lcom/shabakaty/downloader/wt0$d;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 6
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    :try_start_1
    iget-object p2, v0, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object p2, v3

    :goto_0
    if-eqz p2, :cond_3

    .line 8
    monitor-exit p0

    return-object v3

    :cond_3
    if-eqz v0, :cond_4

    .line 9
    :try_start_2
    iget p2, v0, Lcom/shabakaty/downloader/wt0$d;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 10
    monitor-exit p0

    return-object v3

    .line 11
    :cond_4
    :try_start_3
    iget-boolean p2, p0, Lcom/shabakaty/downloader/wt0;->D:Z

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/shabakaty/downloader/wt0;->E:Z

    if-eqz p2, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    iget-object p2, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 13
    sget-object p3, Lcom/shabakaty/downloader/wt0;->O:Ljava/lang/String;

    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object p3

    const/16 v1, 0x20

    .line 14
    invoke-interface {p3, v1}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    move-result-object p3

    .line 15
    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object p3

    const/16 v1, 0xa

    .line 16
    invoke-interface {p3, v1}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 17
    invoke-interface {p2}, Lcom/shabakaty/downloader/do;->flush()V

    .line 18
    iget-boolean p2, p0, Lcom/shabakaty/downloader/wt0;->z:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_6

    .line 19
    monitor-exit p0

    return-object v3

    :cond_6
    if-nez v0, :cond_7

    .line 20
    :try_start_4
    new-instance v0, Lcom/shabakaty/downloader/wt0$d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/wt0$d;-><init>(Lcom/shabakaty/downloader/wt0;Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_7
    new-instance p1, Lcom/shabakaty/downloader/wt0$a;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/wt0$a;-><init>(Lcom/shabakaty/downloader/wt0;Lcom/shabakaty/downloader/wt0$d;)V

    .line 23
    iput-object p1, v0, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    monitor-exit p0

    return-object p1

    .line 25
    :cond_8
    :goto_1
    :try_start_5
    iget-object p1, p0, Lcom/shabakaty/downloader/wt0;->G:Lcom/shabakaty/downloader/gl4;

    iget-object p2, p0, Lcom/shabakaty/downloader/wt0;->H:Lcom/shabakaty/downloader/wt0$b;

    const-wide/16 v0, 0x0

    const/4 p3, 0x2

    invoke-static {p1, p2, v0, v1, p3}, Lcom/shabakaty/downloader/gl4;->d(Lcom/shabakaty/downloader/gl4;Lcom/shabakaty/downloader/wk4;JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 26
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wt0;->B:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/shabakaty/downloader/wt0;->C:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "lruEntries.values"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/shabakaty/downloader/wt0$d;

    .line 3
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, [Lcom/shabakaty/downloader/wt0$d;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 4
    aget-object v4, v0, v2

    .line 5
    iget-object v4, v4, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    if-eqz v4, :cond_1

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Lcom/shabakaty/downloader/wt0$a;->c()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->t()V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/shabakaty/downloader/l84;->close()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    .line 10
    iput-boolean v1, p0, Lcom/shabakaty/downloader/wt0;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/shabakaty/downloader/wt0;->C:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)Lcom/shabakaty/downloader/wt0$e;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->a()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wt0;->v(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wt0$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0$d;->a()Lcom/shabakaty/downloader/wt0$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/wt0;->y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/wt0;->y:I

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    sget-object v2, Lcom/shabakaty/downloader/wt0;->Q:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v1

    const/16 v2, 0x20

    .line 8
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    move-result-object v1

    .line 9
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object p1

    const/16 v1, 0xa

    .line 10
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/wt0;->G:Lcom/shabakaty/downloader/gl4;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->H:Lcom/shabakaty/downloader/wt0$b;

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v1, v2, v3, v4}, Lcom/shabakaty/downloader/gl4;->d(Lcom/shabakaty/downloader/gl4;Lcom/shabakaty/downloader/wk4;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit p0

    return-object v0

    .line 14
    :cond_1
    monitor-exit p0

    return-object v1

    .line 15
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/ry4;->a:[B

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wt0;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->u:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->s:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->u:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->f(Ljava/io/File;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->u:Ljava/io/File;

    iget-object v2, p0, Lcom/shabakaty/downloader/wt0;->s:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/za1;->e(Ljava/io/File;Ljava/io/File;)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->u:Ljava/io/File;

    const-string v2, "$this$isCivilized"

    .line 9
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "file"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->b(Ljava/io/File;)Lcom/shabakaty/downloader/l84;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 11
    :try_start_2
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->f(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 14
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->f(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 15
    :goto_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/wt0;->A:Z

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->s:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->d(Ljava/io/File;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_3

    .line 17
    :try_start_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->k()V

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->j()V

    .line 19
    iput-boolean v5, p0, Lcom/shabakaty/downloader/wt0;->B:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 20
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    .line 21
    :try_start_7
    sget-object v1, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 22
    sget-object v1, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shabakaty/downloader/wt0;->J:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 24
    invoke-virtual {v1, v2, v3, v0}, Lcom/shabakaty/downloader/lc3;->i(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 25
    :try_start_8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->close()V

    .line 26
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->J:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->c(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 27
    :try_start_9
    iput-boolean v4, p0, Lcom/shabakaty/downloader/wt0;->C:Z

    goto :goto_2

    :catchall_2
    move-exception v0

    iput-boolean v4, p0, Lcom/shabakaty/downloader/wt0;->C:Z

    throw v0

    .line 28
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->p()V

    .line 29
    iput-boolean v5, p0, Lcom/shabakaty/downloader/wt0;->B:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 30
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/wt0;->y:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wt0;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->t()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/shabakaty/downloader/do;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Lcom/shabakaty/downloader/do;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->s:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->g(Ljava/io/File;)Lcom/shabakaty/downloader/l84;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/aa1;

    new-instance v2, Lcom/shabakaty/downloader/wt0$c;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/wt0$c;-><init>(Lcom/shabakaty/downloader/wt0;)V

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/aa1;-><init>(Lcom/shabakaty/downloader/l84;Lcom/shabakaty/downloader/tm1;)V

    .line 3
    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->t:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->f(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "i.next()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shabakaty/downloader/wt0$d;

    .line 5
    iget-object v2, v1, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 6
    iget v2, p0, Lcom/shabakaty/downloader/wt0;->L:I

    :goto_1
    if-ge v3, v2, :cond_0

    .line 7
    iget-wide v4, p0, Lcom/shabakaty/downloader/wt0;->v:J

    .line 8
    iget-object v6, v1, Lcom/shabakaty/downloader/wt0$d;->a:[J

    .line 9
    aget-wide v7, v6, v3

    add-long/2addr v4, v7

    iput-wide v4, p0, Lcom/shabakaty/downloader/wt0;->v:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 10
    iput-object v2, v1, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    .line 11
    iget v2, p0, Lcom/shabakaty/downloader/wt0;->L:I

    :goto_2
    if-ge v3, v2, :cond_2

    .line 12
    iget-object v4, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    .line 13
    iget-object v5, v1, Lcom/shabakaty/downloader/wt0$d;->b:Ljava/util/List;

    .line 14
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-interface {v4, v5}, Lcom/shabakaty/downloader/za1;->f(Ljava/io/File;)V

    .line 15
    iget-object v4, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    .line 16
    iget-object v5, v1, Lcom/shabakaty/downloader/wt0$d;->c:Ljava/util/List;

    .line 17
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-interface {v4, v5}, Lcom/shabakaty/downloader/za1;->f(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 18
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final k()V
    .locals 9

    const-string v0, ", "

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v2, p0, Lcom/shabakaty/downloader/wt0;->s:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/za1;->a(Ljava/io/File;)Lcom/shabakaty/downloader/r94;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->d(Lcom/shabakaty/downloader/r94;)Lcom/shabakaty/downloader/eo;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcom/shabakaty/downloader/eo;->V0()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v1}, Lcom/shabakaty/downloader/eo;->V0()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/eo;->V0()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v1}, Lcom/shabakaty/downloader/eo;->V0()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/eo;->V0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 7
    invoke-static {v7, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    if-nez v7, :cond_2

    const-string v7, "1"

    invoke-static {v7, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v8

    if-nez v7, :cond_2

    .line 8
    iget v7, p0, Lcom/shabakaty/downloader/wt0;->K:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-nez v4, :cond_2

    .line 9
    iget v4, p0, Lcom/shabakaty/downloader/wt0;->L:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-nez v4, :cond_2

    .line 10
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_2

    .line 11
    :goto_1
    :try_start_1
    invoke-interface {v1}, Lcom/shabakaty/downloader/eo;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/wt0;->o(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 12
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/shabakaty/downloader/wt0;->y:I

    .line 13
    invoke-interface {v1}, Lcom/shabakaty/downloader/eo;->W()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->p()V

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->g()Lcom/shabakaty/downloader/do;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v0, 0x0

    .line 16
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 17
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 20
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final o(Ljava/lang/String;)V
    .locals 12

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    invoke-static {p1, v0, v1, v1, v2}, Lcom/shabakaty/downloader/re4;->S(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const-string v4, "unexpected journal line: "

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x4

    .line 2
    invoke-static {p1, v0, v6, v1, v7}, Lcom/shabakaty/downloader/re4;->S(Ljava/lang/CharSequence;CIZI)I

    move-result v7

    const-string v8, "(this as java.lang.String).substring(startIndex)"

    const/4 v9, 0x2

    if-ne v7, v5, :cond_0

    .line 3
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v10, Lcom/shabakaty/downloader/wt0;->P:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v3, v11, :cond_1

    invoke-static {p1, v10, v1, v9}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v10, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v10, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/wt0$d;

    if-nez v10, :cond_2

    .line 8
    new-instance v10, Lcom/shabakaty/downloader/wt0$d;

    invoke-direct {v10, p0, v6}, Lcom/shabakaty/downloader/wt0$d;-><init>(Lcom/shabakaty/downloader/wt0;Ljava/lang/String;)V

    .line 9
    iget-object v11, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-interface {v11, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v7, v5, :cond_4

    .line 10
    sget-object v6, Lcom/shabakaty/downloader/wt0;->N:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v3, v11, :cond_4

    invoke-static {p1, v6, v1, v9}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    add-int/2addr v7, v3

    .line 11
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v3, [C

    aput-char v0, v5, v1

    .line 12
    invoke-static {p1, v5, v1, v1, v2}, Lcom/shabakaty/downloader/re4;->d0(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p1

    .line 13
    iput-boolean v3, v10, Lcom/shabakaty/downloader/wt0$d;->d:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, v10, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, v10, Lcom/shabakaty/downloader/wt0$d;->j:Lcom/shabakaty/downloader/wt0;

    .line 16
    iget v2, v2, Lcom/shabakaty/downloader/wt0;->L:I

    if-ne v0, v2, :cond_3

    .line 17
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 18
    iget-object v2, v10, Lcom/shabakaty/downloader/wt0$d;->a:[J

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ne v7, v5, :cond_5

    .line 21
    sget-object v0, Lcom/shabakaty/downloader/wt0;->O:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v3, v2, :cond_5

    invoke-static {p1, v0, v1, v9}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    new-instance p1, Lcom/shabakaty/downloader/wt0$a;

    invoke-direct {p1, p0, v10}, Lcom/shabakaty/downloader/wt0$a;-><init>(Lcom/shabakaty/downloader/wt0;Lcom/shabakaty/downloader/wt0$d;)V

    .line 23
    iput-object p1, v10, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    goto :goto_1

    :cond_5
    if-ne v7, v5, :cond_7

    .line 24
    sget-object v0, Lcom/shabakaty/downloader/wt0;->Q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v3, v2, :cond_7

    invoke-static {p1, v0, v1, v9}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_1
    return-void

    .line 25
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized p()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shabakaty/downloader/l84;->close()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->t:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->b(Ljava/io/File;)Lcom/shabakaty/downloader/l84;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    .line 3
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    const-string v2, "1"

    .line 4
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 5
    iget v2, p0, Lcom/shabakaty/downloader/wt0;->K:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lcom/shabakaty/downloader/do;->t1(J)Lcom/shabakaty/downloader/do;

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 6
    iget v2, p0, Lcom/shabakaty/downloader/wt0;->L:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lcom/shabakaty/downloader/do;->t1(J)Lcom/shabakaty/downloader/do;

    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 7
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 8
    iget-object v2, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/wt0$d;

    .line 9
    iget-object v5, v4, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    const/16 v6, 0x20

    if-eqz v5, :cond_1

    .line 10
    sget-object v5, Lcom/shabakaty/downloader/wt0;->O:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 11
    iget-object v4, v4, Lcom/shabakaty/downloader/wt0$d;->i:Ljava/lang/String;

    .line 12
    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 13
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    goto :goto_0

    .line 14
    :cond_1
    sget-object v5, Lcom/shabakaty/downloader/wt0;->N:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 15
    iget-object v5, v4, Lcom/shabakaty/downloader/wt0$d;->i:Ljava/lang/String;

    .line 16
    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 17
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/wt0$d;->b(Lcom/shabakaty/downloader/do;)V

    .line 18
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :cond_2
    :try_start_2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->s:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->s:Ljava/io/File;

    iget-object v2, p0, Lcom/shabakaty/downloader/wt0;->u:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/za1;->e(Ljava/io/File;Ljava/io/File;)V

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->t:Ljava/io/File;

    iget-object v2, p0, Lcom/shabakaty/downloader/wt0;->s:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/za1;->e(Ljava/io/File;Ljava/io/File;)V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    iget-object v1, p0, Lcom/shabakaty/downloader/wt0;->u:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/za1;->f(Ljava/io/File;)V

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->g()Lcom/shabakaty/downloader/do;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/shabakaty/downloader/wt0;->z:Z

    .line 26
    iput-boolean v0, p0, Lcom/shabakaty/downloader/wt0;->E:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 28
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/he0;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r(Lcom/shabakaty/downloader/wt0$d;)Z
    .locals 12

    const-string v0, "entry"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wt0;->A:Z

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-nez v0, :cond_2

    .line 2
    iget v0, p1, Lcom/shabakaty/downloader/wt0$d;->g:I

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    if-eqz v0, :cond_0

    .line 4
    sget-object v4, Lcom/shabakaty/downloader/wt0;->O:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 5
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 6
    iget-object v4, p1, Lcom/shabakaty/downloader/wt0$d;->i:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 8
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 9
    invoke-interface {v0}, Lcom/shabakaty/downloader/do;->flush()V

    .line 10
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/wt0$d;->g:I

    if-gtz v0, :cond_1

    .line 11
    iget-object v0, p1, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    if-eqz v0, :cond_2

    .line 12
    :cond_1
    iput-boolean v1, p1, Lcom/shabakaty/downloader/wt0$d;->e:Z

    return v1

    .line 13
    :cond_2
    iget-object v0, p1, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt0$a;->c()V

    :cond_3
    const/4 v0, 0x0

    .line 15
    iget v4, p0, Lcom/shabakaty/downloader/wt0;->L:I

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v0, v4, :cond_4

    .line 16
    iget-object v7, p0, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    .line 17
    iget-object v8, p1, Lcom/shabakaty/downloader/wt0$d;->b:Ljava/util/List;

    .line 18
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-interface {v7, v8}, Lcom/shabakaty/downloader/za1;->f(Ljava/io/File;)V

    .line 19
    iget-wide v7, p0, Lcom/shabakaty/downloader/wt0;->v:J

    .line 20
    iget-object v9, p1, Lcom/shabakaty/downloader/wt0$d;->a:[J

    .line 21
    aget-wide v10, v9, v0

    sub-long/2addr v7, v10

    iput-wide v7, p0, Lcom/shabakaty/downloader/wt0;->v:J

    .line 22
    aput-wide v5, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_4
    iget v0, p0, Lcom/shabakaty/downloader/wt0;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/wt0;->y:I

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;

    if-eqz v0, :cond_5

    .line 25
    sget-object v4, Lcom/shabakaty/downloader/wt0;->P:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 26
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 27
    iget-object v3, p1, Lcom/shabakaty/downloader/wt0$d;->i:Ljava/lang/String;

    .line 28
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    .line 29
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/do;->X(I)Lcom/shabakaty/downloader/do;

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    .line 31
    iget-object p1, p1, Lcom/shabakaty/downloader/wt0$d;->i:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt0;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    iget-object p1, p0, Lcom/shabakaty/downloader/wt0;->G:Lcom/shabakaty/downloader/gl4;

    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->H:Lcom/shabakaty/downloader/wt0$b;

    const/4 v2, 0x2

    invoke-static {p1, v0, v5, v6, v2}, Lcom/shabakaty/downloader/gl4;->d(Lcom/shabakaty/downloader/gl4;Lcom/shabakaty/downloader/wk4;JI)V

    :cond_6
    return v1
.end method

.method public final t()V
    .locals 6

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/wt0;->v:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/wt0;->r:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/wt0$d;

    .line 3
    iget-boolean v2, v1, Lcom/shabakaty/downloader/wt0$d;->e:Z

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/wt0;->r(Lcom/shabakaty/downloader/wt0$d;)Z

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_0

    return-void

    .line 5
    :cond_3
    iput-boolean v4, p0, Lcom/shabakaty/downloader/wt0;->D:Z

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/wt0;->M:Lcom/shabakaty/downloader/mq3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/mq3;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
