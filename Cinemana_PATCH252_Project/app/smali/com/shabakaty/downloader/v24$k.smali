.class public Lcom/shabakaty/downloader/v24$k;
.super Ljava/lang/Object;
.source "SettingsDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/v24;->b(Lcom/shabakaty/downloader/ia3;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
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
.field public final synthetic r:Lcom/shabakaty/downloader/ia3;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Lcom/shabakaty/downloader/v24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v24;Lcom/shabakaty/downloader/ia3;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/v24$k;->t:Lcom/shabakaty/downloader/v24;

    iput-object p2, p0, Lcom/shabakaty/downloader/v24$k;->r:Lcom/shabakaty/downloader/ia3;

    iput-object p3, p0, Lcom/shabakaty/downloader/v24$k;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v24$k;->t:Lcom/shabakaty/downloader/v24;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/v24;->j:Lcom/shabakaty/downloader/f54;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/v24$k;->t:Lcom/shabakaty/downloader/v24;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/v24;->c:Lcom/shabakaty/downloader/zl2;

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/v24$k;->r:Lcom/shabakaty/downloader/ia3;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zl2;->e(Lcom/shabakaty/downloader/ia3;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/v24$k;->s:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 10
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/v24$k;->t:Lcom/shabakaty/downloader/v24;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 15
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 16
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/v24$k;->t:Lcom/shabakaty/downloader/v24;

    .line 18
    iget-object v1, v1, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 19
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V

    .line 20
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/v24$k;->t:Lcom/shabakaty/downloader/v24;

    .line 22
    iget-object v2, v2, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 23
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 24
    iget-object v2, p0, Lcom/shabakaty/downloader/v24$k;->t:Lcom/shabakaty/downloader/v24;

    .line 25
    iget-object v2, v2, Lcom/shabakaty/downloader/v24;->j:Lcom/shabakaty/downloader/f54;

    .line 26
    iget-object v3, v2, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v3, :cond_2

    .line 27
    iget-object v0, v2, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    .line 28
    iget-object v2, p0, Lcom/shabakaty/downloader/v24$k;->t:Lcom/shabakaty/downloader/v24;

    .line 29
    iget-object v2, v2, Lcom/shabakaty/downloader/v24;->a:Lcom/shabakaty/downloader/vt3;

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 31
    iget-object v2, p0, Lcom/shabakaty/downloader/v24$k;->t:Lcom/shabakaty/downloader/v24;

    .line 32
    iget-object v2, v2, Lcom/shabakaty/downloader/v24;->j:Lcom/shabakaty/downloader/f54;

    .line 33
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 34
    throw v1
.end method
