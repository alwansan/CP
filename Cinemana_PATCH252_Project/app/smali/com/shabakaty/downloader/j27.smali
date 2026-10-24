.class public final Lcom/shabakaty/downloader/j27;
.super Lcom/shabakaty/downloader/bh5;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# instance fields
.field public final synthetic t:I

.field public final u:Lcom/shabakaty/downloader/qz2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qz2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/j27;->t:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/j27;->u:Lcom/shabakaty/downloader/qz2;

    const-string p1, "getValue"

    .line 2
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/bh5;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/qz2;)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lcom/shabakaty/downloader/j27;->t:I

    const-string p1, "internal.remoteConfig"

    .line 3
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/bh5;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/j27;->u:Lcom/shabakaty/downloader/qz2;

    iget-object p1, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    new-instance v0, Lcom/shabakaty/downloader/j27;

    .line 4
    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/j27;-><init>(Lcom/shabakaty/downloader/qz2;)V

    const-string p2, "getValue"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/j27;->t:I

    packed-switch v0, :pswitch_data_0

    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1

    :pswitch_0
    const/4 v0, 0x2

    const-string v1, "getValue"

    .line 1
    invoke-static {v1, v0, p2}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/shabakaty/downloader/j27;->u:Lcom/shabakaty/downloader/qz2;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/wc6;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/wc6;->d:Ljava/util/Map;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/ck5;

    .line 12
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ck5;-><init>(Ljava/lang/String;)V

    :cond_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
