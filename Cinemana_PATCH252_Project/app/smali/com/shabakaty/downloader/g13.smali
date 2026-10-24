.class public final Lcom/shabakaty/downloader/g13;
.super Lcom/shabakaty/downloader/ui4;
.source "NotificationUtils.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.notification.NotificationUtils$showErrorNotification$1"
    f = "NotificationUtils.kt"
    l = {
        0x8d,
        0x8f
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
.field public final synthetic A:Lcom/shabakaty/downloader/i13;

.field public final synthetic B:I

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public y:I

.field public z:I


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
            "Lcom/shabakaty/downloader/g13;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/g13;->A:Lcom/shabakaty/downloader/i13;

    iput p2, p0, Lcom/shabakaty/downloader/g13;->B:I

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
    new-instance p1, Lcom/shabakaty/downloader/g13;

    iget-object v0, p0, Lcom/shabakaty/downloader/g13;->A:Lcom/shabakaty/downloader/i13;

    iget v1, p0, Lcom/shabakaty/downloader/g13;->B:I

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/g13;-><init>(Lcom/shabakaty/downloader/i13;ILcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/g13;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lcom/shabakaty/downloader/g13;

    iget-object v0, p0, Lcom/shabakaty/downloader/g13;->A:Lcom/shabakaty/downloader/i13;

    iget v1, p0, Lcom/shabakaty/downloader/g13;->B:I

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/g13;-><init>(Lcom/shabakaty/downloader/i13;ILcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/g13;->z:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget v1, v0, Lcom/shabakaty/downloader/g13;->y:I

    iget-object v2, v0, Lcom/shabakaty/downloader/g13;->x:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/pw0;

    iget-object v3, v0, Lcom/shabakaty/downloader/g13;->w:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/i13;

    iget-object v4, v0, Lcom/shabakaty/downloader/g13;->v:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/pw0;

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move v7, v1

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/g13;->A:Lcom/shabakaty/downloader/i13;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/i13;->a:Lcom/shabakaty/downloader/uz0;

    .line 6
    iget v5, v0, Lcom/shabakaty/downloader/g13;->B:I

    iput v4, v0, Lcom/shabakaty/downloader/g13;->z:I

    invoke-virtual {v2, v5, v0}, Lcom/shabakaty/downloader/uz0;->e(ILcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast v2, Lcom/shabakaty/downloader/pw0;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lcom/shabakaty/downloader/g13;->A:Lcom/shabakaty/downloader/i13;

    iget v5, v0, Lcom/shabakaty/downloader/g13;->B:I

    .line 7
    sget-object v6, Lcom/shabakaty/downloader/xc4;->w:Lcom/shabakaty/downloader/xc4;

    iput-object v6, v2, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    .line 8
    iget-object v6, v4, Lcom/shabakaty/downloader/i13;->a:Lcom/shabakaty/downloader/uz0;

    .line 9
    iput-object v2, v0, Lcom/shabakaty/downloader/g13;->v:Ljava/lang/Object;

    iput-object v4, v0, Lcom/shabakaty/downloader/g13;->w:Ljava/lang/Object;

    iput-object v2, v0, Lcom/shabakaty/downloader/g13;->x:Ljava/lang/Object;

    iput v5, v0, Lcom/shabakaty/downloader/g13;->y:I

    iput v3, v0, Lcom/shabakaty/downloader/g13;->z:I

    invoke-virtual {v6, v2, v0}, Lcom/shabakaty/downloader/uz0;->i(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v3, v4

    move v7, v5

    .line 10
    :goto_1
    new-instance v1, Lcom/shabakaty/downloader/d13;

    .line 11
    iget-object v8, v2, Lcom/shabakaty/downloader/pw0;->w:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7c

    move-object v6, v1

    .line 12
    invoke-direct/range {v6 .. v14}, Lcom/shabakaty/downloader/d13;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;IILjava/lang/Integer;II)V

    .line 13
    new-instance v4, Lcom/shabakaty/downloader/b13;

    .line 14
    iget-object v2, v2, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    .line 15
    iget-object v5, v3, Lcom/shabakaty/downloader/i13;->b:Landroid/content/Context;

    const v6, 0x7f1200e9

    .line 16
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "context.getString(R.string.error)"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1c

    move-object v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    .line 17
    invoke-direct/range {v15 .. v23}, Lcom/shabakaty/downloader/b13;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;I)V

    .line 18
    new-instance v2, Lcom/shabakaty/downloader/x41;

    .line 19
    iget-object v5, v3, Lcom/shabakaty/downloader/i13;->c:Landroid/app/NotificationManager;

    .line 20
    iget-object v3, v3, Lcom/shabakaty/downloader/i13;->b:Landroid/content/Context;

    .line 21
    invoke-direct {v2, v1, v4, v5, v3}, Lcom/shabakaty/downloader/x41;-><init>(Lcom/shabakaty/downloader/d13;Lcom/shabakaty/downloader/b13;Landroid/app/NotificationManager;Landroid/content/Context;)V

    .line 22
    invoke-virtual {v2}, Lcom/shabakaty/downloader/xj;->a()Landroid/app/Notification;

    .line 23
    :goto_2
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v1
.end method
