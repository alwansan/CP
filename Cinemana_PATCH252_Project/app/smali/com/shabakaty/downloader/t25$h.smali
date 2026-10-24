.class public Lcom/shabakaty/downloader/t25$h;
.super Ljava/lang/Object;
.source "VideoStatusDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/t25;->q(Ljava/lang/String;JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:J

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Lcom/shabakaty/downloader/t25;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t25;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/t25$h;->t:Lcom/shabakaty/downloader/t25;

    iput-wide p2, p0, Lcom/shabakaty/downloader/t25$h;->r:J

    iput-object p4, p0, Lcom/shabakaty/downloader/t25$h;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t25$h;->t:Lcom/shabakaty/downloader/t25;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/t25;->m:Lcom/shabakaty/downloader/f54;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-wide v2, p0, Lcom/shabakaty/downloader/t25$h;->r:J

    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ai4;->h0(IJ)V

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/t25$h;->s:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/t25$h;->t:Lcom/shabakaty/downloader/t25;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/shabakaty/downloader/t25$h;->t:Lcom/shabakaty/downloader/t25;

    .line 14
    iget-object v3, v3, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 15
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v3, p0, Lcom/shabakaty/downloader/t25$h;->t:Lcom/shabakaty/downloader/t25;

    .line 17
    iget-object v3, v3, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 18
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 19
    iget-object v3, p0, Lcom/shabakaty/downloader/t25$h;->t:Lcom/shabakaty/downloader/t25;

    .line 20
    iget-object v3, v3, Lcom/shabakaty/downloader/t25;->m:Lcom/shabakaty/downloader/f54;

    .line 21
    iget-object v4, v3, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v4, :cond_1

    .line 22
    iget-object v0, v3, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v2

    .line 23
    iget-object v3, p0, Lcom/shabakaty/downloader/t25$h;->t:Lcom/shabakaty/downloader/t25;

    .line 24
    iget-object v3, v3, Lcom/shabakaty/downloader/t25;->a:Lcom/shabakaty/downloader/vt3;

    .line 25
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 26
    iget-object v3, p0, Lcom/shabakaty/downloader/t25$h;->t:Lcom/shabakaty/downloader/t25;

    .line 27
    iget-object v3, v3, Lcom/shabakaty/downloader/t25;->m:Lcom/shabakaty/downloader/f54;

    .line 28
    iget-object v4, v3, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v4, :cond_2

    .line 29
    iget-object v0, v3, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    :cond_2
    throw v2
.end method
