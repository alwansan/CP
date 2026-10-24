.class public final Lcom/shabakaty/downloader/ey0$i;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.DownloadManager$pauseInDatabase$1"
    f = "DownloadManager.kt"
    l = {
        0x13c,
        0x13e,
        0x140,
        0x141
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ey0;->p(I)V
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
.field public final synthetic A:Lcom/shabakaty/downloader/ey0;

.field public final synthetic B:I

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public y:I

.field public synthetic z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ey0;",
            "I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ey0$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$i;->A:Lcom/shabakaty/downloader/ey0;

    iput p2, p0, Lcom/shabakaty/downloader/ey0$i;->B:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ey0$i;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$i;->A:Lcom/shabakaty/downloader/ey0;

    iget v2, p0, Lcom/shabakaty/downloader/ey0$i;->B:I

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/ey0$i;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ey0$i;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 3
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

    new-instance v0, Lcom/shabakaty/downloader/ey0$i;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$i;->A:Lcom/shabakaty/downloader/ey0;

    iget v2, p0, Lcom/shabakaty/downloader/ey0$i;->B:I

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/ey0$i;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ey0$i;->y:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$i;->v:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/pw0;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object v6, v0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$i;->v:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/pw0;

    iget-object v3, p0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$i;->x:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/pw0;

    iget-object v4, p0, Lcom/shabakaty/downloader/ey0$i;->w:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/ey0;

    iget-object v5, p0, Lcom/shabakaty/downloader/ey0$i;->v:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/pw0;

    iget-object v7, p0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    check-cast v7, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object p1, v5

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ey0$i;->A:Lcom/shabakaty/downloader/ey0;

    iget v7, p0, Lcom/shabakaty/downloader/ey0$i;->B:I

    iput-object v1, p0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    iput v5, p0, Lcom/shabakaty/downloader/ey0$i;->y:I

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {p1, v7, p0}, Lcom/shabakaty/downloader/kz0;->a(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/shabakaty/downloader/ey0$i;->A:Lcom/shabakaty/downloader/ey0;

    .line 8
    sget-object v7, Lcom/shabakaty/downloader/xc4;->x:Lcom/shabakaty/downloader/xc4;

    iput-object v7, p1, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    const-wide/16 v7, 0x3e8

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$i;->v:Ljava/lang/Object;

    iput-object v5, p0, Lcom/shabakaty/downloader/ey0$i;->w:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$i;->x:Ljava/lang/Object;

    iput v4, p0, Lcom/shabakaty/downloader/ey0$i;->y:I

    invoke-static {v7, v8, p0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_7

    return-object v0

    :cond_7
    move-object v7, v1

    move-object v4, v5

    move-object v1, p1

    .line 10
    :goto_1
    iget v5, v1, Lcom/shabakaty/downloader/pw0;->r:I

    if-eqz v5, :cond_9

    .line 11
    iget-object v4, v4, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 12
    iput-object v7, p0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$i;->v:Ljava/lang/Object;

    iput-object v6, p0, Lcom/shabakaty/downloader/ey0$i;->w:Ljava/lang/Object;

    iput-object v6, p0, Lcom/shabakaty/downloader/ey0$i;->x:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/ey0$i;->y:I

    invoke-virtual {v4, v1, p0}, Lcom/shabakaty/downloader/uz0;->i(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return-object v0

    :cond_8
    move-object v1, p1

    move-object v3, v7

    :goto_2
    move-object p1, v1

    move-object v7, v3

    :cond_9
    const-wide/16 v3, 0xbb8

    .line 13
    iput-object v7, p0, Lcom/shabakaty/downloader/ey0$i;->z:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$i;->v:Ljava/lang/Object;

    iput-object v6, p0, Lcom/shabakaty/downloader/ey0$i;->w:Ljava/lang/Object;

    iput-object v6, p0, Lcom/shabakaty/downloader/ey0$i;->x:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/ey0$i;->y:I

    invoke-static {v3, v4, p0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v6, p1

    :goto_3
    if-nez v6, :cond_b

    .line 14
    iget p1, p0, Lcom/shabakaty/downloader/ey0$i;->B:I

    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$i;->A:Lcom/shabakaty/downloader/ey0;

    .line 15
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tried pausing download with id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but didn\'t find item in db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/lw0;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 19
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ey0;->l(Lcom/shabakaty/downloader/ey0;I)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ey0;->d(I)V

    .line 21
    :cond_b
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
