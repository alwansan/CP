.class public final Lcom/shabakaty/downloader/yz0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadsRepository.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.data.repo.DownloadsRepository$renewPaths$2"
    f = "DownloadsRepository.kt"
    l = {
        0xf9,
        0xff
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/pw0;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A:Lcom/shabakaty/downloader/uz0;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public y:Ljava/lang/Object;

.field public z:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uz0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/yz0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/yz0;->A:Lcom/shabakaty/downloader/uz0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/yz0;

    iget-object v0, p0, Lcom/shabakaty/downloader/yz0;->A:Lcom/shabakaty/downloader/uz0;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/yz0;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/yz0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/yz0;

    iget-object v0, p0, Lcom/shabakaty/downloader/yz0;->A:Lcom/shabakaty/downloader/uz0;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/yz0;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/yz0;->z:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/yz0;->y:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/yz0;->x:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/shabakaty/downloader/yz0;->w:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/shabakaty/downloader/yz0;->v:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/uz0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/yz0;->A:Lcom/shabakaty/downloader/uz0;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    .line 6
    iput v3, p0, Lcom/shabakaty/downloader/yz0;->z:I

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/kz0;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4

    const/4 p1, 0x0

    goto/16 :goto_2

    :cond_4
    iget-object v4, p0, Lcom/shabakaty/downloader/yz0;->A:Lcom/shabakaty/downloader/uz0;

    .line 7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/pw0;

    .line 8
    sget-object v5, Lcom/shabakaty/downloader/z24;->b:Lcom/shabakaty/downloader/wa3;

    if-nez v5, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    iget-object v7, p1, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    if-eqz v7, :cond_7

    const-string v8, ".mkv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v8

    const-string v6, "preserving existing sorted MKV path: "

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6, v4}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/lw0$a;->b()V

    goto :goto_1

    .line 10
    :cond_7
    iget-object v6, p1, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    .line 11
    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/wa3;->create(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_1

    .line 11
    :cond_8
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v6

    const-string v7, "renewing path for: "

    invoke-static {v7, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 12
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v6

    .line 13
    iget-object v7, p1, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    const-string v8, "old path: "

    .line 14
    invoke-static {v8, v7}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 15
    invoke-virtual {p1, v5}, Lcom/shabakaty/downloader/pw0;->j(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v6

    .line 17
    iget-object v7, p1, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    const-string v8, "new path: "

    .line 18
    invoke-static {v8, v7}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 19
    iget-object v6, v4, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    .line 20
    iput-object v4, p0, Lcom/shabakaty/downloader/yz0;->v:Ljava/lang/Object;

    iput-object v3, p0, Lcom/shabakaty/downloader/yz0;->w:Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/yz0;->x:Ljava/lang/Object;

    iput-object v5, p0, Lcom/shabakaty/downloader/yz0;->y:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/yz0;->z:I

    invoke-interface {v6, p1, p0}, Lcom/shabakaty/downloader/kz0;->i(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 21
    :cond_9
    move-object p1, v3

    check-cast p1, Ljava/util/List;

    :goto_2
    return-object p1
.end method
