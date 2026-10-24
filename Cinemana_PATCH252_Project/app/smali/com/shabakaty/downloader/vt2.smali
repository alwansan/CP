.class public final Lcom/shabakaty/downloader/vt2;
.super Lcom/shabakaty/downloader/af2;
.source "MiscBindingAdapter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/lo3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/lo3<",
            "Lcom/shabakaty/downloader/e92;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/shabakaty/downloader/se0;

.field public final synthetic t:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic u:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/tm1;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lo3<",
            "Lcom/shabakaty/downloader/e92;",
            ">;",
            "Lcom/shabakaty/downloader/se0;",
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;J)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/vt2;->r:Lcom/shabakaty/downloader/lo3;

    iput-object p2, p0, Lcom/shabakaty/downloader/vt2;->s:Lcom/shabakaty/downloader/se0;

    iput-object p3, p0, Lcom/shabakaty/downloader/vt2;->t:Lcom/shabakaty/downloader/tm1;

    iput-wide p4, p0, Lcom/shabakaty/downloader/vt2;->u:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vt2;->r:Lcom/shabakaty/downloader/lo3;

    iget-object v0, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/e92;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/e92;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/shabakaty/downloader/e92;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/vt2;->r:Lcom/shabakaty/downloader/lo3;

    iget-object v8, p0, Lcom/shabakaty/downloader/vt2;->s:Lcom/shabakaty/downloader/se0;

    const/4 v9, 0x0

    new-instance v10, Lcom/shabakaty/downloader/ut2;

    iget-object v2, p0, Lcom/shabakaty/downloader/vt2;->t:Lcom/shabakaty/downloader/tm1;

    iget-wide v4, p0, Lcom/shabakaty/downloader/vt2;->u:J

    const/4 v7, 0x0

    move-object v1, v10

    move-object v3, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/ut2;-><init>(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;JLcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, v9

    move-object v4, v10

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 4
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
