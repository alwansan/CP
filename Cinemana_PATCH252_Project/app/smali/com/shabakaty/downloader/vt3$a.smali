.class public Lcom/shabakaty/downloader/vt3$a;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vt3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/shabakaty/downloader/vt3;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/vt3$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/concurrent/Executor;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Lcom/shabakaty/downloader/zh4$c;

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:Lcom/shabakaty/downloader/vt3$c;

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vt3$a;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/vt3$a;->a:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/vt3$a;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/vt3$a;->i:Z

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/vt3$c;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vt3$c;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vt3$a;->k:Lcom/shabakaty/downloader/vt3$c;

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/room/migration/Migration;",
            ")",
            "Lcom/shabakaty/downloader/vt3$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3$a;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vt3$a;->l:Ljava/util/Set;

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/vt3$a;->l:Ljava/util/Set;

    iget v4, v2, Lcom/shabakaty/downloader/ht2;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/vt3$a;->l:Ljava/util/Set;

    iget v2, v2, Lcom/shabakaty/downloader/ht2;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt3$a;->k:Lcom/shabakaty/downloader/vt3$c;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vt3$c;->a([Lcom/shabakaty/downloader/ht2;)V

    return-object p0
.end method

.method public b()Lcom/shabakaty/downloader/vt3;
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/vt3$a;->c:Landroid/content/Context;

    if-eqz v2, :cond_1a

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/vt3$a;->a:Ljava/lang/Class;

    if-eqz v1, :cond_19

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/vt3$a;->e:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v3, v0, Lcom/shabakaty/downloader/vt3$a;->f:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/sc;->u:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lcom/shabakaty/downloader/vt3$a;->f:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lcom/shabakaty/downloader/vt3$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/vt3$a;->f:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_1

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/vt3$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/vt3$a;->f:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    .line 8
    iput-object v1, v0, Lcom/shabakaty/downloader/vt3$a;->e:Ljava/util/concurrent/Executor;

    .line 9
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/vt3$a;->g:Lcom/shabakaty/downloader/zh4$c;

    if-nez v1, :cond_3

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/zl1;

    invoke-direct {v1}, Lcom/shabakaty/downloader/zl1;-><init>()V

    :cond_3
    move-object v4, v1

    .line 11
    new-instance v8, Lcom/shabakaty/downloader/bm0;

    iget-object v3, v0, Lcom/shabakaty/downloader/vt3$a;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/shabakaty/downloader/vt3$a;->k:Lcom/shabakaty/downloader/vt3$c;

    iget-object v6, v0, Lcom/shabakaty/downloader/vt3$a;->d:Ljava/util/ArrayList;

    iget-boolean v7, v0, Lcom/shabakaty/downloader/vt3$a;->h:Z

    const-string v1, "activity"

    .line 12
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x3

    const/16 v20, 0x3

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    const/16 v20, 0x2

    .line 14
    :goto_1
    iget-object v9, v0, Lcom/shabakaty/downloader/vt3$a;->e:Ljava/util/concurrent/Executor;

    iget-object v10, v0, Lcom/shabakaty/downloader/vt3$a;->f:Ljava/util/concurrent/Executor;

    const/4 v11, 0x0

    iget-boolean v12, v0, Lcom/shabakaty/downloader/vt3$a;->i:Z

    iget-boolean v13, v0, Lcom/shabakaty/downloader/vt3$a;->j:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v8

    move-object/from16 v21, v8

    move/from16 v8, v20

    invoke-direct/range {v1 .. v19}, Lcom/shabakaty/downloader/bm0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/zh4$c;Lcom/shabakaty/downloader/vt3$c;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;)V

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/vt3$a;->a:Ljava/lang/Class;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    const/16 v7, 0x5f

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_Impl"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v3

    goto :goto_3

    .line 22
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 24
    invoke-static {v2, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    check-cast v1, Lcom/shabakaty/downloader/vt3;

    move-object/from16 v2, v21

    .line 27
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/vt3;->d(Lcom/shabakaty/downloader/bm0;)Lcom/shabakaty/downloader/zh4;

    move-result-object v3

    iput-object v3, v1, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    .line 28
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->f()Ljava/util/Set;

    move-result-object v3

    .line 29
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 30
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 31
    iget-object v8, v2, Lcom/shabakaty/downloader/bm0;->g:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    :goto_5
    if-ltz v8, :cond_8

    .line 32
    iget-object v9, v2, Lcom/shabakaty/downloader/bm0;->g:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 33
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 34
    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    move v7, v8

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-ltz v7, :cond_9

    .line 35
    iget-object v8, v1, Lcom/shabakaty/downloader/vt3;->h:Ljava/util/Map;

    iget-object v9, v2, Lcom/shabakaty/downloader/bm0;->g:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/wf;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 36
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A required auto migration spec ("

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 37
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is missing in the database configuration."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_a
    iget-object v3, v2, Lcom/shabakaty/downloader/bm0;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_7
    if-ltz v3, :cond_c

    .line 39
    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_b

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 40
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_c
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->e()Ljava/util/List;

    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ht2;

    .line 43
    iget-object v7, v2, Lcom/shabakaty/downloader/bm0;->d:Lcom/shabakaty/downloader/vt3$c;

    .line 44
    iget-object v7, v7, Lcom/shabakaty/downloader/vt3$c;->a:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 45
    iget v8, v4, Lcom/shabakaty/downloader/ht2;->a:I

    .line 46
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 47
    iget-object v7, v2, Lcom/shabakaty/downloader/bm0;->d:Lcom/shabakaty/downloader/vt3$c;

    new-array v8, v5, [Lcom/shabakaty/downloader/ht2;

    aput-object v4, v8, v6

    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/vt3$c;->a([Lcom/shabakaty/downloader/ht2;)V

    goto :goto_8

    .line 48
    :cond_e
    const-class v3, Lcom/shabakaty/downloader/dw3;

    iget-object v4, v1, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/downloader/vt3;->o(Ljava/lang/Class;Lcom/shabakaty/downloader/zh4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/dw3;

    if-eqz v3, :cond_f

    .line 49
    iput-object v2, v3, Lcom/shabakaty/downloader/dw3;->x:Lcom/shabakaty/downloader/bm0;

    .line 50
    :cond_f
    const-class v3, Lcom/shabakaty/downloader/tf;

    iget-object v4, v1, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    .line 51
    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/downloader/vt3;->o(Ljava/lang/Class;Lcom/shabakaty/downloader/zh4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/tf;

    if-nez v3, :cond_18

    .line 52
    iget v3, v2, Lcom/shabakaty/downloader/bm0;->i:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    const/4 v6, 0x1

    .line 53
    :cond_10
    iget-object v3, v1, Lcom/shabakaty/downloader/vt3;->d:Lcom/shabakaty/downloader/zh4;

    invoke-interface {v3, v6}, Lcom/shabakaty/downloader/zh4;->setWriteAheadLoggingEnabled(Z)V

    .line 54
    iget-object v3, v2, Lcom/shabakaty/downloader/bm0;->e:Ljava/util/List;

    iput-object v3, v1, Lcom/shabakaty/downloader/vt3;->g:Ljava/util/List;

    .line 55
    iget-object v3, v2, Lcom/shabakaty/downloader/bm0;->j:Ljava/util/concurrent/Executor;

    iput-object v3, v1, Lcom/shabakaty/downloader/vt3;->b:Ljava/util/concurrent/Executor;

    .line 56
    new-instance v3, Lcom/shabakaty/downloader/rp4;

    iget-object v4, v2, Lcom/shabakaty/downloader/bm0;->k:Ljava/util/concurrent/Executor;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/rp4;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v3, v1, Lcom/shabakaty/downloader/vt3;->c:Ljava/util/concurrent/Executor;

    .line 57
    iget-boolean v3, v2, Lcom/shabakaty/downloader/bm0;->h:Z

    iput-boolean v3, v1, Lcom/shabakaty/downloader/vt3;->f:Z

    .line 58
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->g()Ljava/util/Map;

    move-result-object v3

    .line 59
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 60
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 62
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 63
    iget-object v9, v2, Lcom/shabakaty/downloader/bm0;->f:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    :goto_a
    if-ltz v9, :cond_13

    .line 64
    iget-object v10, v2, Lcom/shabakaty/downloader/bm0;->f:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 65
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 66
    invoke-virtual {v4, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_b

    :cond_12
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    :cond_13
    const/4 v9, -0x1

    :goto_b
    if-ltz v9, :cond_14

    .line 67
    iget-object v10, v1, Lcom/shabakaty/downloader/vt3;->m:Ljava/util/Map;

    iget-object v11, v2, Lcom/shabakaty/downloader/bm0;->f:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 68
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A required type converter ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is missing in the database configuration."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_15
    iget-object v3, v2, Lcom/shabakaty/downloader/bm0;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_c
    if-ltz v3, :cond_17

    .line 71
    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_16

    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 72
    :cond_16
    iget-object v1, v2, Lcom/shabakaty/downloader/bm0;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 73
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type converter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    return-object v1

    .line 74
    :cond_18
    iget-object v1, v1, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    .line 75
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 76
    throw v1

    .line 77
    :catch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to create an instance of "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :catch_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot access the constructor"

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :catch_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "cannot find implementation for "

    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot provide null context for the database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
