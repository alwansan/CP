.class public final Lcom/shabakaty/downloader/w71;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvideCacheDataSourceFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/lk2;

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/o64;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/rn0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/rp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lk2;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V
    .locals 1

    iput p5, p0, Lcom/shabakaty/downloader/w71;->a:I

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/w71;->b:Lcom/shabakaty/downloader/lk2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/w71;->c:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/w71;->d:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/w71;->e:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/w71;->b:Lcom/shabakaty/downloader/lk2;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/w71;->c:Lcom/shabakaty/downloader/oj3;

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/w71;->d:Lcom/shabakaty/downloader/oj3;

    .line 10
    iput-object p4, p0, Lcom/shabakaty/downloader/w71;->e:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/w71;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/w71;->b:Lcom/shabakaty/downloader/lk2;

    iget-object v1, p0, Lcom/shabakaty/downloader/w71;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/shabakaty/downloader/o64;

    iget-object v1, p0, Lcom/shabakaty/downloader/w71;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/rn0;

    iget-object v2, p0, Lcom/shabakaty/downloader/w71;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/shabakaty/downloader/rp;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "simpleCache"

    .line 3
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDataSink"

    invoke-static {v6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/sp;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/qn0;

    iget-object v2, v1, Lcom/shabakaty/downloader/rn0;->a:Landroid/content/Context;

    iget-object v5, v1, Lcom/shabakaty/downloader/rn0;->c:Lcom/shabakaty/downloader/vl0$a;

    .line 6
    invoke-interface {v5}, Lcom/shabakaty/downloader/vl0$a;->a()Lcom/shabakaty/downloader/vl0;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/shabakaty/downloader/qn0;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/vl0;)V

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/rn0;->b:Lcom/shabakaty/downloader/sp4;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/qn0;->e(Lcom/shabakaty/downloader/sp4;)V

    .line 9
    :cond_0
    new-instance v5, Lcom/shabakaty/downloader/wa1;

    invoke-direct {v5}, Lcom/shabakaty/downloader/wa1;-><init>()V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v2, v0

    .line 10
    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/sp;-><init>(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/tl0;ILcom/shabakaty/downloader/sp$a;)V

    return-object v0

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/w71;->b:Lcom/shabakaty/downloader/lk2;

    iget-object v1, p0, Lcom/shabakaty/downloader/w71;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/downloader/w71;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ah2;

    iget-object v3, p0, Lcom/shabakaty/downloader/w71;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/em0;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "context"

    .line 13
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evictor"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseProvider"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/o64;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v5, "media_cache"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v4, v2, v3}, Lcom/shabakaty/downloader/o64;-><init>(Ljava/io/File;Lcom/shabakaty/downloader/tp;Lcom/shabakaty/downloader/em0;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
