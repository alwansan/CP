.class public final Lcom/shabakaty/downloader/yo2$b;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/shabakaty/downloader/oo2$c;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yo2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final r:Landroid/os/Handler;

.field public final synthetic s:Lcom/shabakaty/downloader/yo2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yo2;Lcom/shabakaty/downloader/oo2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yo2$b;->s:Lcom/shabakaty/downloader/yo2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/sy4;->m(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/yo2$b;->r:Landroid/os/Handler;

    .line 3
    invoke-interface {p2, p0, p1}, Lcom/shabakaty/downloader/oo2;->i(Lcom/shabakaty/downloader/oo2$c;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yo2$b;->s:Lcom/shabakaty/downloader/yo2;

    iget-object v1, v0, Lcom/shabakaty/downloader/yo2;->F1:Lcom/shabakaty/downloader/yo2$b;

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, v0, Lcom/shabakaty/downloader/so2;->O0:Z

    goto :goto_0

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/yo2;->O0(J)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/i71; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/yo2$b;->s:Lcom/shabakaty/downloader/yo2;

    .line 5
    iput-object p1, p2, Lcom/shabakaty/downloader/so2;->S0:Lcom/shabakaty/downloader/i71;

    :goto_0
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/oo2;JJ)V
    .locals 2

    .line 1
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/yo2$b;->r:Landroid/os/Handler;

    const/4 p4, 0x0

    const/16 p5, 0x20

    shr-long v0, p2, p5

    long-to-int p5, v0

    long-to-int p3, p2

    .line 3
    invoke-static {p1, p4, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/yo2$b;->r:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/yo2$b;->a(J)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->V(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1}, Lcom/shabakaty/downloader/sy4;->V(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/yo2$b;->a(J)V

    const/4 p1, 0x1

    return p1
.end method
