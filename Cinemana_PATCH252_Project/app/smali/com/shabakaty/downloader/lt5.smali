.class public final Lcom/shabakaty/downloader/lt5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.0"

# interfaces
.implements Lcom/shabakaty/downloader/jd7;
.implements Lcom/shabakaty/downloader/g63;
.implements Lcom/shabakaty/downloader/p63;
.implements Lcom/shabakaty/downloader/a73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/jd7<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/util/concurrent/Executor;

.field public final t:Lcom/shabakaty/downloader/td0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/td0<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/ye7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ye7<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;Lcom/shabakaty/downloader/ye7;I)V
    .locals 1

    iput p4, p0, Lcom/shabakaty/downloader/lt5;->r:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/lt5;->s:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/lt5;->t:Lcom/shabakaty/downloader/td0;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/lt5;->u:Lcom/shabakaty/downloader/ye7;

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/lt5;->s:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/lt5;->t:Lcom/shabakaty/downloader/td0;

    .line 8
    iput-object p3, p0, Lcom/shabakaty/downloader/lt5;->u:Lcom/shabakaty/downloader/ye7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lt5;->u:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ye7;->r()Z

    return-void
.end method

.method public final b(Lcom/shabakaty/downloader/uk4;)V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/lt5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lt5;->s:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/md7;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/lt5;Lcom/shabakaty/downloader/uk4;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lt5;->s:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/md7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/lt5;Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/downloader/io2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lt5;->u:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lt5;->u:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    return-void
.end method
