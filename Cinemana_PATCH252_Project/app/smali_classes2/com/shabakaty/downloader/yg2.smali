.class public final Lcom/shabakaty/downloader/yg2;
.super Lcom/shabakaty/downloader/x85;
.source "SpecialTypes.kt"


# instance fields
.field public final s:Lcom/shabakaty/downloader/md4;

.field public final t:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/md4;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x85;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yg2;->s:Lcom/shabakaty/downloader/md4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yg2;->t:Lcom/shabakaty/downloader/rm1;

    .line 4
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/yg2;->u:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/yg2;

    iget-object v1, p0, Lcom/shabakaty/downloader/yg2;->s:Lcom/shabakaty/downloader/md4;

    new-instance v2, Lcom/shabakaty/downloader/xg2;

    invoke-direct {v2, p1, p0}, Lcom/shabakaty/downloader/xg2;-><init>(Lcom/shabakaty/downloader/ve2;Lcom/shabakaty/downloader/yg2;)V

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/yg2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    return-object v0
.end method

.method public X0()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yg2;->u:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qe2;

    return-object v0
.end method

.method public Y0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yg2;->u:Lcom/shabakaty/downloader/d03;

    check-cast v0, Lcom/shabakaty/downloader/yj2$h;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/yj2$h;->t:Ljava/lang/Object;

    sget-object v2, Lcom/shabakaty/downloader/yj2$n;->r:Lcom/shabakaty/downloader/yj2$n;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/shabakaty/downloader/yj2$h;->t:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/yj2$n;->s:Lcom/shabakaty/downloader/yj2$n;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
