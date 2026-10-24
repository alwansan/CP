.class public final Lcom/shabakaty/downloader/tf1;
.super Lcom/shabakaty/downloader/qf1;
.source "FlowableCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tf1$c;,
        Lcom/shabakaty/downloader/tf1$b;,
        Lcom/shabakaty/downloader/tf1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qf1<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final s:[Lcom/shabakaty/downloader/wj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final u:I


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/wj3;Lcom/shabakaty/downloader/in1;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tf1;->s:[Lcom/shabakaty/downloader/wj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tf1;->t:Lcom/shabakaty/downloader/in1;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/tf1;->u:I

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e31;->r:Lcom/shabakaty/downloader/e31;

    iget-object v1, p0, Lcom/shabakaty/downloader/tf1;->s:[Lcom/shabakaty/downloader/wj3;

    if-eqz v1, :cond_4

    .line 2
    array-length v8, v1

    if-nez v8, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v8, v2, :cond_1

    .line 5
    aget-object v0, v1, v0

    new-instance v1, Lcom/shabakaty/downloader/lg1$b;

    new-instance v2, Lcom/shabakaty/downloader/tf1$c;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/tf1$c;-><init>(Lcom/shabakaty/downloader/tf1;)V

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/lg1$b;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    return-void

    .line 6
    :cond_1
    new-instance v9, Lcom/shabakaty/downloader/tf1$a;

    iget-object v4, p0, Lcom/shabakaty/downloader/tf1;->t:Lcom/shabakaty/downloader/in1;

    iget v6, p0, Lcom/shabakaty/downloader/tf1;->u:I

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, p1

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tf1$a;-><init>(Lcom/shabakaty/downloader/ef4;Lcom/shabakaty/downloader/in1;IIZ)V

    .line 7
    invoke-interface {p1, v9}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 8
    iget-object p1, v9, Lcom/shabakaty/downloader/tf1$a;->t:[Lcom/shabakaty/downloader/tf1$b;

    :goto_0
    if-ge v0, v8, :cond_3

    .line 9
    iget-boolean v2, v9, Lcom/shabakaty/downloader/tf1$a;->C:Z

    if-nez v2, :cond_3

    iget-boolean v2, v9, Lcom/shabakaty/downloader/tf1$a;->A:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    aget-object v2, v1, v0

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    .line 11
    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 12
    invoke-static {v1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 13
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 14
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method
