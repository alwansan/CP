.class public final Lcom/shabakaty/downloader/fb3;
.super Lcom/shabakaty/downloader/af2;
.source "PausedDownloadHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/cb3;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/fb3;->r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/cb3;

    const-string v2, "$this$build"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/fb3;->r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/shabakaty/downloader/fb3;->r:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    .line 4
    iget-object v3, v3, Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;->x:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v3}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/q;

    .line 5
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    const-string v4, "<this>"

    .line 6
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fragmentManager"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const v6, 0x7f12023a

    .line 8
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v6, "context.getString(R.string.resume)"

    invoke-static {v9, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "text"

    .line 9
    invoke-static {v9, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 10
    iget-object v10, v1, Lcom/shabakaty/downloader/cb3;->a:Lcom/shabakaty/downloader/rm1;

    .line 11
    new-instance v13, Lcom/shabakaty/downloader/pl4;

    const/4 v8, 0x0

    const-string v11, ""

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    .line 12
    invoke-virtual {v5, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v15, 0x0

    const v7, 0x7f1200ce

    .line 13
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "context.getString(R.string.delete)"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v7, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    .line 15
    iget-object v1, v1, Lcom/shabakaty/downloader/cb3;->b:Lcom/shabakaty/downloader/rm1;

    .line 16
    new-instance v6, Lcom/shabakaty/downloader/pl4;

    const-string v18, ""

    move-object v14, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 18
    new-instance v1, Lcom/shabakaty/downloader/on;

    invoke-direct {v1}, Lcom/shabakaty/downloader/on;-><init>()V

    const-string v6, "items"

    .line 19
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f120296

    .line 20
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "context.getString(R.stri\u2026download_status_finished)"

    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "title"

    .line 21
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object v2, v1, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    .line 24
    invoke-static {v5}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 25
    iput-object v2, v1, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    const-string v2, "listBottomSheet"

    .line 26
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/on;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v1
.end method
