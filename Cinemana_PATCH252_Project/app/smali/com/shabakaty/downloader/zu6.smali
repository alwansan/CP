.class public final Lcom/shabakaty/downloader/zu6;
.super Lcom/shabakaty/downloader/bh5;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# instance fields
.field public final synthetic t:I

.field public final u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ag6;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/zu6;->t:I

    const-string v0, "internal.registerCallback"

    .line 13
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/bh5;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/mc6;)V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/zu6;->t:I

    const-string v1, "internal.logger"

    .line 2
    invoke-direct {p0, v1}, Lcom/shabakaty/downloader/bh5;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    iget-object p1, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    new-instance v1, Lcom/shabakaty/downloader/de7;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, p0, v2, v0}, Lcom/shabakaty/downloader/de7;-><init>(Lcom/shabakaty/downloader/zu6;ZZ)V

    const-string v3, "log"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    new-instance v1, Lcom/shabakaty/downloader/ja7;

    .line 4
    invoke-direct {v1}, Lcom/shabakaty/downloader/ja7;-><init>()V

    const-string v4, "silent"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/bh5;

    new-instance v1, Lcom/shabakaty/downloader/de7;

    invoke-direct {v1, p0, v0, v0}, Lcom/shabakaty/downloader/de7;-><init>(Lcom/shabakaty/downloader/zu6;ZZ)V

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 7
    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    new-instance v0, Lcom/shabakaty/downloader/ec7;

    .line 9
    invoke-direct {v0}, Lcom/shabakaty/downloader/ec7;-><init>()V

    const-string v1, "unmonitored"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/bh5;

    new-instance v0, Lcom/shabakaty/downloader/de7;

    invoke-direct {v0, p0, v2, v2}, Lcom/shabakaty/downloader/de7;-><init>(Lcom/shabakaty/downloader/zu6;ZZ)V

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/bh5;->s:Ljava/util/Map;

    .line 12
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tk1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/zu6;->t:I

    const-string v0, "internal.eventLogger"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/bh5;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/zu6;->t:I

    const-string v0, "internal.appMetadata"

    .line 14
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/bh5;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/zu6;->t:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Callable;

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/ol3;->l(Ljava/lang/Object;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    :goto_0
    return-object p1

    .line 3
    :pswitch_1
    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->r:Ljava/lang/String;

    .line 5
    invoke-static {v0, v4, p2}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 6
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/kl3;->h(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 9
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 10
    instance-of p2, p1, Lcom/shabakaty/downloader/hi5;

    if-eqz p2, :cond_0

    .line 11
    check-cast p1, Lcom/shabakaty/downloader/hi5;

    invoke-static {p1}, Lcom/shabakaty/downloader/kl3;->s(Lcom/shabakaty/downloader/hi5;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    :goto_1
    iget-object p2, p0, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/tk1;

    .line 15
    iget-object p2, p2, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    new-instance v1, Lcom/shabakaty/downloader/ke5;

    .line 16
    invoke-direct {v1, v0, v2, v3, p1}, Lcom/shabakaty/downloader/ke5;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/bh5;->r:Ljava/lang/String;

    .line 19
    invoke-static {v0, v4, p2}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 20
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    .line 21
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 22
    instance-of v3, v0, Lcom/shabakaty/downloader/yi5;

    if-eqz v3, :cond_8

    .line 23
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 24
    instance-of p2, p1, Lcom/shabakaty/downloader/hi5;

    if-eqz p2, :cond_7

    .line 25
    check-cast p1, Lcom/shabakaty/downloader/hi5;

    .line 26
    iget-object p2, p1, Lcom/shabakaty/downloader/hi5;->r:Ljava/util/Map;

    const-string v1, "type"

    .line 27
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 28
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/hi5;->m(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p2

    .line 29
    iget-object v1, p1, Lcom/shabakaty/downloader/hi5;->r:Ljava/util/Map;

    const-string v3, "priority"

    .line 30
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/hi5;->m(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p1

    goto :goto_3

    :cond_1
    const/16 p1, 0x3e8

    :goto_3
    iget-object v1, p0, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ag6;

    .line 32
    check-cast v0, Lcom/shabakaty/downloader/yi5;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "create"

    .line 33
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, v1, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast p2, Ljava/util/TreeMap;

    goto :goto_4

    :cond_2
    const-string v3, "edit"

    .line 34
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p2, v1, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast p2, Ljava/util/TreeMap;

    .line 35
    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {p2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    .line 37
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1

    .line 39
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unknown callback type: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Undefined rule type"

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid callback params"

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid callback type"

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
