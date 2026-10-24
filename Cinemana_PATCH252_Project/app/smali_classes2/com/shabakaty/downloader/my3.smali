.class public Lcom/shabakaty/downloader/my3;
.super Lcom/shabakaty/downloader/u;
.source "Scopes.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/u<",
        "TT;>;",
        "Lcom/shabakaty/downloader/ue0;"
    }
.end annotation


# instance fields
.field public final u:Lcom/shabakaty/downloader/ud0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ud0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/ud0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/u;-><init>(Lcom/shabakaty/downloader/me0;Z)V

    iput-object p2, p0, Lcom/shabakaty/downloader/my3;->u:Lcom/shabakaty/downloader/ud0;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/my3;->u:Lcom/shabakaty/downloader/ud0;

    invoke-static {v0}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/my3;->u:Lcom/shabakaty/downloader/ud0;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/z02;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/shabakaty/downloader/bu0;->b(Lcom/shabakaty/downloader/ud0;Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;I)V

    return-void
.end method

.method public final X()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lcom/shabakaty/downloader/ue0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/my3;->u:Lcom/shabakaty/downloader/ud0;

    instance-of v1, v0, Lcom/shabakaty/downloader/ue0;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/ue0;

    return-object v0
.end method

.method public m0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/my3;->u:Lcom/shabakaty/downloader/ud0;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z02;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    return-void
.end method
