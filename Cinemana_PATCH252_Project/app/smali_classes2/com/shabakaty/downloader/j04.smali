.class public final Lcom/shabakaty/downloader/j04;
.super Lcom/shabakaty/downloader/i04;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/i04<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final w:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/downloader/fv;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/shabakaty/downloader/fv<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/i04;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/fv;)V

    iput-object p3, p0, Lcom/shabakaty/downloader/j04;->w:Lcom/shabakaty/downloader/tm1;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j04;->w:Lcom/shabakaty/downloader/tm1;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/i04;->u:Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/i04;->v:Lcom/shabakaty/downloader/fv;

    invoke-interface {v2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v1, v3}, Lcom/shabakaty/downloader/d73;->a(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/lv4;)Lcom/shabakaty/downloader/lv4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/md0;->y(Lcom/shabakaty/downloader/me0;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ck2;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/j04;->A()V

    const/4 v0, 0x1

    return v0
.end method
