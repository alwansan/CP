.class public final Lcom/shabakaty/downloader/ey0$l;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.DownloadManager$subscribeToDownload$1"
    f = "DownloadManager.kt"
    l = {
        0xa6
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ey0;->b(ILcom/shabakaty/downloader/tm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/ey0;

.field public final synthetic y:I

.field public final synthetic z:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/dy0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ey0;",
            "I",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/dy0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ey0$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$l;->x:Lcom/shabakaty/downloader/ey0;

    iput p2, p0, Lcom/shabakaty/downloader/ey0$l;->y:I

    iput-object p3, p0, Lcom/shabakaty/downloader/ey0$l;->z:Lcom/shabakaty/downloader/tm1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ey0$l;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$l;->x:Lcom/shabakaty/downloader/ey0;

    iget v2, p0, Lcom/shabakaty/downloader/ey0$l;->y:I

    iget-object v3, p0, Lcom/shabakaty/downloader/ey0$l;->z:Lcom/shabakaty/downloader/tm1;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/shabakaty/downloader/ey0$l;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ey0$l;->w:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ey0$l;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 4
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

    new-instance v0, Lcom/shabakaty/downloader/ey0$l;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$l;->x:Lcom/shabakaty/downloader/ey0;

    iget v2, p0, Lcom/shabakaty/downloader/ey0$l;->y:I

    iget-object v3, p0, Lcom/shabakaty/downloader/ey0$l;->z:Lcom/shabakaty/downloader/tm1;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/shabakaty/downloader/ey0$l;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ey0$l;->w:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ey0$l;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$l;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/ey0$l;->w:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$l;->x:Lcom/shabakaty/downloader/ey0;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 6
    iget v3, p0, Lcom/shabakaty/downloader/ey0$l;->y:I

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$l;->w:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/ey0$l;->v:I

    invoke-virtual {v1, v3, p0}, Lcom/shabakaty/downloader/uz0;->e(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto/16 :goto_2

    :cond_3
    iget v0, p0, Lcom/shabakaty/downloader/ey0$l;->y:I

    iget-object v8, p0, Lcom/shabakaty/downloader/ey0$l;->x:Lcom/shabakaty/downloader/ey0;

    iget-object v9, p0, Lcom/shabakaty/downloader/ey0$l;->z:Lcom/shabakaty/downloader/tm1;

    if-eqz v0, :cond_8

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/pw0;->v:Ljava/lang/String;

    .line 8
    iget-object v3, p1, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    .line 9
    iget-object v4, p1, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    .line 10
    iget-object v5, p1, Lcom/shabakaty/downloader/pw0;->w:Ljava/lang/String;

    .line 11
    iget-object v6, p1, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 12
    iget v0, p1, Lcom/shabakaty/downloader/pw0;->r:I

    .line 13
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v8

    .line 14
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/ey0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/shabakaty/downloader/a90;

    move-result-object v0

    .line 15
    invoke-interface {v9, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, v8, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 18
    iget-object v2, p1, Lcom/shabakaty/downloader/pw0;->v:Ljava/lang/String;

    const-string v3, "composersMap"

    .line 19
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pw0;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/a90;->n:Lcom/shabakaty/downloader/tm1;

    .line 23
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pw0;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    iget-object v0, v0, Lcom/shabakaty/downloader/a90;->k:Lcom/shabakaty/downloader/hn1;

    .line 26
    iget-wide v1, p1, Lcom/shabakaty/downloader/pw0;->t:J

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 28
    iget-wide v2, p1, Lcom/shabakaty/downloader/pw0;->y:J

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/d91;->g(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pw0;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31
    iget-object v0, v0, Lcom/shabakaty/downloader/a90;->h:Lcom/shabakaty/downloader/tm1;

    .line 32
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pw0;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    iget-object p1, v0, Lcom/shabakaty/downloader/a90;->j:Lcom/shabakaty/downloader/tm1;

    const-string v1, "onPause"

    .line 35
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, v0, Lcom/shabakaty/downloader/a90;->j:Lcom/shabakaty/downloader/tm1;

    goto :goto_1

    .line 37
    :cond_7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pw0;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/a90;->l:Lcom/shabakaty/downloader/tm1;

    .line 39
    iget-object p1, p1, Lcom/shabakaty/downloader/pw0;->A:Ljava/lang/Throwable;

    .line 40
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_8
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_2
    if-nez p1, :cond_9

    .line 42
    iget p1, p0, Lcom/shabakaty/downloader/ey0$l;->y:I

    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$l;->x:Lcom/shabakaty/downloader/ey0;

    .line 43
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tried subscribing to download with taskId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but the item was not found in the database"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {v1, p1, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 47
    :cond_9
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
