.class public Lcom/shabakaty/downloader/un0$c;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/un0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/un0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/un0;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/un0$c;->a:Lcom/shabakaty/downloader/un0;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/un0$c;->a:Lcom/shabakaty/downloader/un0;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/un0;->m:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/tn0;

    .line 5
    iget-object v3, v2, Lcom/shabakaty/downloader/tn0;->t:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget p1, v2, Lcom/shabakaty/downloader/tn0;->e:I

    if-nez p1, :cond_3

    iget p1, v2, Lcom/shabakaty/downloader/tn0;->n:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 8
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/tn0;->h(Z)V

    :cond_3
    :goto_0
    return-void
.end method
