.class public Lcom/shabakaty/downloader/v24$s;
.super Ljava/lang/Object;
.source "SettingsDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/v24;->c(ILjava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Lcom/shabakaty/downloader/v24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v24;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/v24$s;->t:Lcom/shabakaty/downloader/v24;

    iput p2, p0, Lcom/shabakaty/downloader/v24$s;->r:I

    iput-object p3, p0, Lcom/shabakaty/downloader/v24$s;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24$s;->t:Lcom/shabakaty/downloader/v24;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/v24;->r:Lcom/shabakaty/downloader/f54;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/v24$s;->r:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/v24$s;->s:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/v24$s;->t:Lcom/shabakaty/downloader/v24;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/v24$s;->t:Lcom/shabakaty/downloader/v24;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 15
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->n()V

    .line 16
    sget-object v2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v3, p0, Lcom/shabakaty/downloader/v24$s;->t:Lcom/shabakaty/downloader/v24;

    .line 18
    iget-object v3, v3, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 19
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 20
    iget-object v3, p0, Lcom/shabakaty/downloader/v24$s;->t:Lcom/shabakaty/downloader/v24;

    .line 21
    iget-object v3, v3, Lcom/shabakaty/downloader/v24;->r:Lcom/shabakaty/downloader/f54;

    .line 22
    iget-object v4, v3, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v4, :cond_1

    .line 23
    iget-object v0, v3, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v2

    .line 24
    iget-object v3, p0, Lcom/shabakaty/downloader/v24$s;->t:Lcom/shabakaty/downloader/v24;

    .line 25
    iget-object v3, v3, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 26
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 27
    iget-object v3, p0, Lcom/shabakaty/downloader/v24$s;->t:Lcom/shabakaty/downloader/v24;

    .line 28
    iget-object v3, v3, Lcom/shabakaty/downloader/v24;->r:Lcom/shabakaty/downloader/f54;

    .line 29
    iget-object v4, v3, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v4, :cond_2

    .line 30
    iget-object v0, v3, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    :cond_2
    throw v2
.end method
