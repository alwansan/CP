.class public final Lcom/shabakaty/downloader/h13;
.super Lcom/shabakaty/downloader/ui4;
.source "NotificationUtils.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.notification.NotificationUtils$showFinishedNotification$1"
    f = "NotificationUtils.kt"
    l = {
        0x78
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
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/i13;

.field public final synthetic x:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i13;ILcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/i13;",
            "I",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/h13;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/h13;->w:Lcom/shabakaty/downloader/i13;

    iput p2, p0, Lcom/shabakaty/downloader/h13;->x:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/h13;

    iget-object v0, p0, Lcom/shabakaty/downloader/h13;->w:Lcom/shabakaty/downloader/i13;

    iget v1, p0, Lcom/shabakaty/downloader/h13;->x:I

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/h13;-><init>(Lcom/shabakaty/downloader/i13;ILcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/h13;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 2
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

    new-instance p1, Lcom/shabakaty/downloader/h13;

    iget-object v0, p0, Lcom/shabakaty/downloader/h13;->w:Lcom/shabakaty/downloader/i13;

    iget v1, p0, Lcom/shabakaty/downloader/h13;->x:I

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/h13;-><init>(Lcom/shabakaty/downloader/i13;ILcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/h13;->v:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/h13;->w:Lcom/shabakaty/downloader/i13;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/i13;->a:Lcom/shabakaty/downloader/uz0;

    .line 6
    iget v4, v0, Lcom/shabakaty/downloader/h13;->x:I

    iput v3, v0, Lcom/shabakaty/downloader/h13;->v:I

    invoke-virtual {v2, v4, v0}, Lcom/shabakaty/downloader/uz0;->e(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast v2, Lcom/shabakaty/downloader/pw0;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget v4, v0, Lcom/shabakaty/downloader/h13;->x:I

    iget-object v1, v0, Lcom/shabakaty/downloader/h13;->w:Lcom/shabakaty/downloader/i13;

    .line 7
    new-instance v12, Lcom/shabakaty/downloader/d13;

    .line 8
    iget-object v5, v2, Lcom/shabakaty/downloader/pw0;->w:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7c

    move-object v3, v12

    .line 9
    invoke-direct/range {v3 .. v11}, Lcom/shabakaty/downloader/d13;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;IILjava/lang/Integer;II)V

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/b13;

    .line 11
    iget-object v14, v2, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    .line 12
    iget-object v2, v1, Lcom/shabakaty/downloader/i13;->b:Landroid/content/Context;

    const v4, 0x7f1200bb

    .line 13
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "context.getString(R.string.completed)"

    invoke-static {v15, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1c

    move-object v13, v3

    .line 14
    invoke-direct/range {v13 .. v21}, Lcom/shabakaty/downloader/b13;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;I)V

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/bc1;

    .line 16
    iget-object v4, v1, Lcom/shabakaty/downloader/i13;->b:Landroid/content/Context;

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/i13;->c:Landroid/app/NotificationManager;

    .line 18
    invoke-direct {v2, v12, v3, v4, v1}, Lcom/shabakaty/downloader/bc1;-><init>(Lcom/shabakaty/downloader/d13;Lcom/shabakaty/downloader/b13;Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 19
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xj;->a()Landroid/app/Notification;

    .line 20
    :goto_1
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v1
.end method
