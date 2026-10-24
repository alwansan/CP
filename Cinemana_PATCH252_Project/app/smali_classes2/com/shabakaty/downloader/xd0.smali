.class public abstract Lcom/shabakaty/downloader/xd0;
.super Lcom/shabakaty/downloader/bj;
.source "ContinuationImpl.kt"


# instance fields
.field public final s:Lcom/shabakaty/downloader/me0;

.field public transient t:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ud0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v0

    .line 4
    :goto_0
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/bj;-><init>(Lcom/shabakaty/downloader/ud0;)V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/me0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/bj;-><init>(Lcom/shabakaty/downloader/ud0;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xd0;->t:Lcom/shabakaty/downloader/ud0;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xd0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    sget v2, Lcom/shabakaty/downloader/yd0;->e:I

    sget-object v2, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v1, Lcom/shabakaty/downloader/yd0;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/yd0;->w(Lcom/shabakaty/downloader/ud0;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/h80;->r:Lcom/shabakaty/downloader/h80;

    iput-object v0, p0, Lcom/shabakaty/downloader/xd0;->t:Lcom/shabakaty/downloader/ud0;

    return-void
.end method
