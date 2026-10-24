.class public final Lcom/shabakaty/downloader/de7;
.super Lcom/shabakaty/downloader/bh5;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# instance fields
.field public final t:Z

.field public final u:Z

.field public final synthetic v:Lcom/shabakaty/downloader/zu6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zu6;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/de7;->v:Lcom/shabakaty/downloader/zu6;

    const-string p1, "log"

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/bh5;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/shabakaty/downloader/de7;->t:Z

    iput-boolean p3, p0, Lcom/shabakaty/downloader/de7;->u:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation

    const-string v0, "log"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, p2}, Lcom/shabakaty/downloader/kl3;->u(Ljava/lang/String;ILjava/util/List;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/de7;->v:Lcom/shabakaty/downloader/zu6;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/mc6;

    const/4 v4, 0x3

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    iget-boolean v7, p0, Lcom/shabakaty/downloader/de7;->t:Z

    iget-boolean v8, p0, Lcom/shabakaty/downloader/de7;->u:Z

    .line 6
    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/mc6;->b(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1

    .line 7
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    const/4 v6, 0x5

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    const/4 v6, 0x4

    .line 8
    :goto_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object p1, p0, Lcom/shabakaty/downloader/de7;->v:Lcom/shabakaty/downloader/zu6;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lcom/shabakaty/downloader/mc6;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    iget-boolean v9, p0, Lcom/shabakaty/downloader/de7;->t:Z

    iget-boolean v10, p0, Lcom/shabakaty/downloader/de7;->u:Z

    invoke-virtual/range {v5 .. v10}, Lcom/shabakaty/downloader/mc6;->b(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 14
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/de7;->v:Lcom/shabakaty/downloader/zu6;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/zu6;->u:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lcom/shabakaty/downloader/mc6;

    .line 16
    iget-boolean v9, p0, Lcom/shabakaty/downloader/de7;->t:Z

    iget-boolean v10, p0, Lcom/shabakaty/downloader/de7;->u:Z

    .line 17
    invoke-virtual/range {v5 .. v10}, Lcom/shabakaty/downloader/mc6;->b(ILjava/lang/String;Ljava/util/List;ZZ)V

    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1
.end method
