.class public final Lcom/shabakaty/downloader/pz;
.super Lcom/shabakaty/downloader/g92;
.source "JobSupport.kt"


# instance fields
.field public final v:Lcom/shabakaty/downloader/gv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gv<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gv<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/g92;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/pz;->v:Lcom/shabakaty/downloader/gv;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/pz;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/pz;->v:Lcom/shabakaty/downloader/gv;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k92;->x()Lcom/shabakaty/downloader/l92;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/gv;->w(Lcom/shabakaty/downloader/e92;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2
    iget v1, p1, Lcom/shabakaty/downloader/du0;->t:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, p1, Lcom/shabakaty/downloader/gv;->v:Lcom/shabakaty/downloader/ud0;

    instance-of v2, v1, Lcom/shabakaty/downloader/au0;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    check-cast v1, Lcom/shabakaty/downloader/au0;

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/au0;->s(Ljava/lang/Throwable;)Z

    move-result v3

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/gv;->r(Ljava/lang/Throwable;)Z

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gv;->t()V

    :goto_2
    return-void
.end method
