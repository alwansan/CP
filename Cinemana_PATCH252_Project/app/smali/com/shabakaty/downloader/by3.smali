.class public Lcom/shabakaty/downloader/by3;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Schedulers"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ok2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/by3;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/y90;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y90;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xx3;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 6
    iget p0, p0, Lcom/shabakaty/downloader/y90;->h:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 7
    :cond_1
    iget p0, p0, Lcom/shabakaty/downloader/y90;->h:I

    .line 8
    :goto_0
    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/f85;->d(I)Ljava/util/List;

    move-result-object p0

    const/16 v1, 0xc8

    .line 9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f85;->b(I)Ljava/util/List;

    move-result-object v1

    .line 10
    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 12
    move-object v4, p0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/d85;

    .line 13
    iget-object v5, v5, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v2, v3}, Lcom/shabakaty/downloader/f85;->l(Ljava/lang/String;J)I

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 16
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/shabakaty/downloader/d85;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/shabakaty/downloader/d85;

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xx3;

    .line 20
    invoke-interface {v0}, Lcom/shabakaty/downloader/xx3;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/xx3;->e([Lcom/shabakaty/downloader/d85;)V

    goto :goto_2

    .line 22
    :cond_4
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/shabakaty/downloader/d85;

    .line 24
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/shabakaty/downloader/d85;

    .line 25
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/xx3;

    .line 26
    invoke-interface {p2}, Lcom/shabakaty/downloader/xx3;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 27
    invoke-interface {p2, p0}, Lcom/shabakaty/downloader/xx3;->e([Lcom/shabakaty/downloader/d85;)V

    goto :goto_3

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 29
    throw p0

    :cond_7
    :goto_4
    return-void
.end method
