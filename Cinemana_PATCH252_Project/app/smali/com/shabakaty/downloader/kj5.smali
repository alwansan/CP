.class public final synthetic Lcom/shabakaty/downloader/kj5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/tq3;


# instance fields
.field public final synthetic r:I

.field public final s:Lcom/shabakaty/downloader/vh5;

.field public final t:Lcom/shabakaty/downloader/nw$e;

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vh5;Lcom/shabakaty/downloader/nw$e;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/kj5;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/kj5;->s:Lcom/shabakaty/downloader/vh5;

    iput-object p2, p0, Lcom/shabakaty/downloader/kj5;->t:Lcom/shabakaty/downloader/nw$e;

    iput-object p3, p0, Lcom/shabakaty/downloader/kj5;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vh5;Ljava/lang/String;Lcom/shabakaty/downloader/nw$e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/kj5;->r:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/kj5;->s:Lcom/shabakaty/downloader/vh5;

    iput-object p2, p0, Lcom/shabakaty/downloader/kj5;->u:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/kj5;->t:Lcom/shabakaty/downloader/nw$e;

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/kj5;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Not active connection"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kj5;->s:Lcom/shabakaty/downloader/vh5;

    iget-object v5, p0, Lcom/shabakaty/downloader/kj5;->t:Lcom/shabakaty/downloader/nw$e;

    iget-object v6, p0, Lcom/shabakaty/downloader/kj5;->u:Ljava/lang/String;

    check-cast p1, Lcom/shabakaty/downloader/cf7;

    check-cast p2, Lcom/shabakaty/downloader/zk4;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/vh5;->l:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gf5;

    invoke-interface {p1, v6}, Lcom/shabakaty/downloader/gf5;->A0(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object p1, p2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    return-void

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/kj5;->s:Lcom/shabakaty/downloader/vh5;

    iget-object v5, p0, Lcom/shabakaty/downloader/kj5;->u:Ljava/lang/String;

    iget-object v6, p0, Lcom/shabakaty/downloader/kj5;->t:Lcom/shabakaty/downloader/nw$e;

    check-cast p1, Lcom/shabakaty/downloader/cf7;

    check-cast p2, Lcom/shabakaty/downloader/zk4;

    .line 6
    iget v0, v0, Lcom/shabakaty/downloader/vh5;->l:I

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gf5;

    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/gf5;->A0(Ljava/lang/String;)V

    if-eqz v6, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gf5;

    invoke-interface {p1, v5}, Lcom/shabakaty/downloader/gf5;->D1(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object p1, p2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
