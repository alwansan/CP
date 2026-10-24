.class public final Lcom/shabakaty/downloader/nv4;
.super Lcom/shabakaty/downloader/my3;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/my3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public v:Lcom/shabakaty/downloader/me0;

.field public w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ov4;->r:Lcom/shabakaty/downloader/ov4;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/my3;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public m0(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nv4;->v:Lcom/shabakaty/downloader/me0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/nv4;->w:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/nv4;->v:Lcom/shabakaty/downloader/me0;

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/nv4;->w:Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/my3;->u:Lcom/shabakaty/downloader/ud0;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z02;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/my3;->u:Lcom/shabakaty/downloader/ud0;

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v2

    .line 8
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/zm4;->c(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/zm4;->a:Lcom/shabakaty/downloader/j61;

    if-eq v3, v4, :cond_1

    .line 10
    invoke-static {v0, v2, v3}, Lcom/shabakaty/downloader/ne0;->b(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Lcom/shabakaty/downloader/nv4;

    move-result-object v1

    .line 11
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/my3;->u:Lcom/shabakaty/downloader/ud0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nv4;->s0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    :cond_2
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nv4;->s0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    :cond_4
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method public final s0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nv4;->v:Lcom/shabakaty/downloader/me0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/nv4;->v:Lcom/shabakaty/downloader/me0;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/nv4;->w:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
