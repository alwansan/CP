.class public final Lcom/shabakaty/downloader/views/DownloadButton$b;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadButton.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.downloader.views.DownloadButton$disableUntilUpdated$1"
    f = "DownloadButton.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/views/DownloadButton;->c()V
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
.field public final synthetic v:Lcom/shabakaty/downloader/views/DownloadButton;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/views/DownloadButton;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/views/DownloadButton$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/views/DownloadButton$b;->v:Lcom/shabakaty/downloader/views/DownloadButton;

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
    new-instance p1, Lcom/shabakaty/downloader/views/DownloadButton$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton$b;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/views/DownloadButton$b;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/views/DownloadButton$b;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
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

    new-instance p1, Lcom/shabakaty/downloader/views/DownloadButton$b;

    iget-object v0, p0, Lcom/shabakaty/downloader/views/DownloadButton$b;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/views/DownloadButton$b;-><init>(Lcom/shabakaty/downloader/views/DownloadButton;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v15, Lcom/shabakaty/downloader/xc4;->A:Lcom/shabakaty/downloader/xc4;

    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object v14, v0, Lcom/shabakaty/downloader/views/DownloadButton$b;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 3
    iget-object v1, v14, Lcom/shabakaty/downloader/views/DownloadButton;->H:Lcom/shabakaty/downloader/pw0;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v14

    goto :goto_0

    .line 4
    :cond_0
    iget v2, v1, Lcom/shabakaty/downloader/pw0;->r:I

    iget-object v3, v1, Lcom/shabakaty/downloader/pw0;->s:Ljava/lang/String;

    iget-wide v4, v1, Lcom/shabakaty/downloader/pw0;->t:J

    iget-object v6, v1, Lcom/shabakaty/downloader/pw0;->u:Ljava/lang/String;

    iget-object v7, v1, Lcom/shabakaty/downloader/pw0;->v:Ljava/lang/String;

    iget-object v8, v1, Lcom/shabakaty/downloader/pw0;->w:Ljava/lang/String;

    iget-object v9, v1, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    iget-wide v10, v1, Lcom/shabakaty/downloader/pw0;->y:J

    iget-object v13, v1, Lcom/shabakaty/downloader/pw0;->A:Ljava/lang/Throwable;

    iget-object v12, v1, Lcom/shabakaty/downloader/pw0;->B:Ljava/lang/String;

    const-string v1, "externalId"

    .line 5
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-static {v6, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {v8, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "path"

    invoke-static {v9, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lastUpdated"

    invoke-static {v12, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v16, Lcom/shabakaty/downloader/pw0;

    move-object/from16 v1, v16

    move-object/from16 v17, v12

    move-object v12, v15

    move-object v0, v14

    move-object/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lcom/shabakaty/downloader/pw0;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_1

    .line 6
    new-instance v16, Lcom/shabakaty/downloader/pw0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x6ff

    move-object/from16 v1, v16

    move-object v12, v15

    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lcom/shabakaty/downloader/pw0;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/shabakaty/downloader/xc4;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 7
    :cond_1
    iput-object v1, v0, Lcom/shabakaty/downloader/views/DownloadButton;->H:Lcom/shabakaty/downloader/pw0;

    move-object/from16 v0, p0

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/views/DownloadButton$b;->v:Lcom/shabakaty/downloader/views/DownloadButton;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/views/DownloadButton;->g()V

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v1
.end method
