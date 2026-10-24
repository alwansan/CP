.class public final Lcom/shabakaty/downloader/e80;
.super Lcom/shabakaty/downloader/qf1;
.source "CompletableToFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/qf1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic s:I

.field public final t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c80;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/e80;->s:I

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/e80;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/e80;->s:I

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/e80;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/e80;->s:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v0, Lcom/shabakaty/downloader/gf4;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/gf4;-><init>(Lcom/shabakaty/downloader/ef4;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/e80;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/c80;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/c80;->a(Lcom/shabakaty/downloader/a80;)V

    return-void

    .line 3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/e80;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The publisher supplied is null"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/wj3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/wj3;->a(Lcom/shabakaty/downloader/ef4;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/e31;->r:Lcom/shabakaty/downloader/e31;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 9
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
