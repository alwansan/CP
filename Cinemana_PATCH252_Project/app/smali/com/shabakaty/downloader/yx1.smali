.class public final Lcom/shabakaty/downloader/yx1;
.super Lcom/shabakaty/downloader/af2;
.source "IdleDownloadHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/lk3;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/yx1;->r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/lk3;

    const-string v0, "$this$build"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yx1;->r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/yx1;->r:Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/cinemana/utils/download/IdleDownloadScope;->A:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/q;

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    const-string v2, "<this>"

    .line 6
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fragmentManager"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v3, p1, Lcom/shabakaty/downloader/lk3;->a:Ljava/util/List;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Lcom/shabakaty/cinemana/domain/models/local/Quality;

    const/4 v7, 0x0

    .line 11
    iget-object v8, v5, Lcom/shabakaty/cinemana/domain/models/local/Quality;->resolution:Ljava/lang/String;

    const-string v6, "text"

    .line 12
    invoke-static {v8, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 13
    new-instance v9, Lcom/shabakaty/downloader/mk3;

    invoke-direct {v9, p1, v5}, Lcom/shabakaty/downloader/mk3;-><init>(Lcom/shabakaty/downloader/lk3;Lcom/shabakaty/cinemana/domain/models/local/Quality;)V

    .line 14
    new-instance v5, Lcom/shabakaty/downloader/pl4;

    const-string v10, ""

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/on;

    invoke-direct {p1}, Lcom/shabakaty/downloader/on;-><init>()V

    const-string v3, "items"

    .line 17
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f120089

    .line 18
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "context.getString(R.string.choose_quality)"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "title"

    .line 19
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object v0, p1, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    .line 22
    invoke-static {v4}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 23
    iput-object v0, p1, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    const-string v0, "listBottomSheet"

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/on;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    .line 25
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
