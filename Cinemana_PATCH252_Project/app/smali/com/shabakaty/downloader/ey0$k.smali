.class public final Lcom/shabakaty/downloader/ey0$k;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.main.DownloadManager$retryDownload$1"
    f = "DownloadManager.kt"
    l = {
        0x164,
        0x171
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ey0;->i(I)V
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
.field public v:Ljava/lang/Object;

.field public w:I

.field public synthetic x:Ljava/lang/Object;

.field public final synthetic y:Lcom/shabakaty/downloader/ey0;

.field public final synthetic z:I


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
            "Lcom/shabakaty/downloader/ey0$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$k;->y:Lcom/shabakaty/downloader/ey0;

    iput p2, p0, Lcom/shabakaty/downloader/ey0$k;->z:I

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
    new-instance v0, Lcom/shabakaty/downloader/ey0$k;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$k;->y:Lcom/shabakaty/downloader/ey0;

    iget v2, p0, Lcom/shabakaty/downloader/ey0$k;->z:I

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/ey0$k;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ey0$k;->x:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ey0$k;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lcom/shabakaty/downloader/ey0$k;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$k;->y:Lcom/shabakaty/downloader/ey0;

    iget v2, p0, Lcom/shabakaty/downloader/ey0$k;->z:I

    invoke-direct {v0, v1, v2, p2}, Lcom/shabakaty/downloader/ey0$k;-><init>(Lcom/shabakaty/downloader/ey0;ILcom/shabakaty/downloader/ud0;)V

    iput-object p1, v0, Lcom/shabakaty/downloader/ey0$k;->x:Ljava/lang/Object;

    return-object v0
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/ey0$k;->w:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$k;->v:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/pw0;

    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$k;->x:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/se0;

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
    iget-object v1, p0, Lcom/shabakaty/downloader/ey0$k;->x:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/se0;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/ey0$k;->x:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/se0;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ey0$k;->y:Lcom/shabakaty/downloader/ey0;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 6
    iget v4, p0, Lcom/shabakaty/downloader/ey0$k;->z:I

    iput-object v1, p0, Lcom/shabakaty/downloader/ey0$k;->x:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/downloader/ey0$k;->w:I

    invoke-virtual {p1, v4, p0}, Lcom/shabakaty/downloader/uz0;->e(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/pw0;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object v11, p0, Lcom/shabakaty/downloader/ey0$k;->y:Lcom/shabakaty/downloader/ey0;

    invoke-static {v11, p1}, Lcom/shabakaty/cinemana/ca1/Final100;->restore(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, p1}, Lcom/shabakaty/cinemana/ca1/Final100;->protect(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :cond_5
    iget v4, p0, Lcom/shabakaty/downloader/ey0$k;->z:I

    .line 7
    sget-object v5, Lcom/shabakaty/downloader/xc4;->u:Lcom/shabakaty/downloader/xc4;

    iput-object v5, p1, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    .line 8
    iget-object v5, p1, Lcom/shabakaty/downloader/pw0;->v:Ljava/lang/String;

    .line 9
    iget-object v6, p1, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    .line 10
    iget-object v7, p1, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    .line 11
    iget-object v8, p1, Lcom/shabakaty/downloader/pw0;->w:Ljava/lang/String;

    .line 12
    iget-object v9, p1, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    .line 13
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, v11

    .line 14
    invoke-virtual/range {v4 .. v10}, Lcom/shabakaty/downloader/ey0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/shabakaty/downloader/a90;

    move-result-object v4

    .line 15
    invoke-virtual {v11, v4, v3}, Lcom/shabakaty/downloader/ey0;->q(Lcom/shabakaty/downloader/a90;Z)V

    .line 16
    iget v3, p1, Lcom/shabakaty/downloader/pw0;->r:I

    if-eqz v3, :cond_7

    .line 17
    iget-object v3, v11, Lcom/shabakaty/downloader/ey0;->c:Lcom/shabakaty/downloader/uz0;

    .line 18
    iput-object v1, p0, Lcom/shabakaty/downloader/ey0$k;->x:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/ey0$k;->v:Ljava/lang/Object;

    iput v2, p0, Lcom/shabakaty/downloader/ey0$k;->w:I

    invoke-virtual {v3, p1, p0}, Lcom/shabakaty/downloader/uz0;->i(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    :goto_1
    move-object p1, v0

    :cond_7
    :goto_2
    if-nez p1, :cond_8

    .line 19
    iget p1, p0, Lcom/shabakaty/downloader/ey0$k;->z:I

    iget-object v0, p0, Lcom/shabakaty/downloader/ey0$k;->y:Lcom/shabakaty/downloader/ey0;

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tried retrying download with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but couldn\'t find item in db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 24
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ey0;->l(Lcom/shabakaty/downloader/ey0;I)V

    .line 25
    :cond_8
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
