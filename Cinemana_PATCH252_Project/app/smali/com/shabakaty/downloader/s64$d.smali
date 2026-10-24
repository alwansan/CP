.class public final Lcom/shabakaty/downloader/s64$d;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/shabakaty/downloader/p05;
.implements Lcom/shabakaty/downloader/au;
.implements Lcom/shabakaty/downloader/vd3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/s64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public r:Lcom/shabakaty/downloader/p05;

.field public s:Lcom/shabakaty/downloader/au;

.field public t:Lcom/shabakaty/downloader/p05;

.field public u:Lcom/shabakaty/downloader/au;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s64$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJLcom/shabakaty/downloader/wh1;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64$d;->t:Lcom/shabakaty/downloader/p05;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-interface/range {v0 .. v6}, Lcom/shabakaty/downloader/p05;->a(JJLcom/shabakaty/downloader/wh1;Landroid/media/MediaFormat;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/s64$d;->r:Lcom/shabakaty/downloader/p05;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-interface/range {v1 .. v7}, Lcom/shabakaty/downloader/p05;->a(JJLcom/shabakaty/downloader/wh1;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public c(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64$d;->u:Lcom/shabakaty/downloader/au;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/au;->c(J[F)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s64$d;->s:Lcom/shabakaty/downloader/au;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/au;->c(J[F)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/s64$d;->u:Lcom/shabakaty/downloader/au;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/au;->e()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s64$d;->s:Lcom/shabakaty/downloader/au;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/au;->e()V

    :cond_1
    return-void
.end method

.method public p(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    check-cast p2, Lcom/shabakaty/downloader/ea4;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s64$d;->t:Lcom/shabakaty/downloader/p05;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/s64$d;->u:Lcom/shabakaty/downloader/au;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ea4;->getVideoFrameMetadataListener()Lcom/shabakaty/downloader/p05;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s64$d;->t:Lcom/shabakaty/downloader/p05;

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ea4;->getCameraMotionListener()Lcom/shabakaty/downloader/au;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/s64$d;->u:Lcom/shabakaty/downloader/au;

    goto :goto_0

    .line 6
    :cond_2
    check-cast p2, Lcom/shabakaty/downloader/au;

    iput-object p2, p0, Lcom/shabakaty/downloader/s64$d;->s:Lcom/shabakaty/downloader/au;

    goto :goto_0

    .line 7
    :cond_3
    check-cast p2, Lcom/shabakaty/downloader/p05;

    iput-object p2, p0, Lcom/shabakaty/downloader/s64$d;->r:Lcom/shabakaty/downloader/p05;

    :goto_0
    return-void
.end method
