.class public final Lcom/shabakaty/downloader/wx4;
.super Lcom/shabakaty/downloader/af2;
.source "UserListDetailsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vx4;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vx4;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wx4;->r:Lcom/shabakaty/downloader/vx4;

    iput-object p2, p0, Lcom/shabakaty/downloader/wx4;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wx4;->r:Lcom/shabakaty/downloader/vx4;

    iget-object v1, p0, Lcom/shabakaty/downloader/wx4;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    sget v2, Lcom/shabakaty/downloader/vx4;->y:I

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/by4;

    const-string v0, "item"

    .line 3
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v2, Lcom/shabakaty/downloader/by4;->i:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v2, Lcom/shabakaty/downloader/by4;->f:Lcom/shabakaty/downloader/ox4;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ox4;->e(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const-string v3, "2"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v2, Lcom/shabakaty/downloader/by4;->f:Lcom/shabakaty/downloader/ox4;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ox4;->f(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const-string v3, "1"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, v2, Lcom/shabakaty/downloader/by4;->f:Lcom/shabakaty/downloader/ox4;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ox4;->g(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move-object v3, v0

    if-nez v3, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    new-instance v4, Lcom/shabakaty/downloader/ay4;

    invoke-direct {v4, v2, v1}, Lcom/shabakaty/downloader/ay4;-><init>(Lcom/shabakaty/downloader/by4;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/xk;->d(Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Lcom/shabakaty/downloader/mu0;

    .line 11
    :goto_2
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
