.class public final Lcom/shabakaty/downloader/gx0;
.super Lcom/shabakaty/downloader/ui4;
.source "DownloadItemsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.ui.profile_fragment.DownloadItemsFragment$handlePausedDownloadButtonClick$2$1"
    f = "DownloadItemsFragment.kt"
    l = {}
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
.field public final synthetic v:Lcom/shabakaty/downloader/bx0;

.field public final synthetic w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/bx0;",
            "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/gx0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/gx0;->v:Lcom/shabakaty/downloader/bx0;

    iput-object p2, p0, Lcom/shabakaty/downloader/gx0;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

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
    new-instance p1, Lcom/shabakaty/downloader/gx0;

    iget-object v0, p0, Lcom/shabakaty/downloader/gx0;->v:Lcom/shabakaty/downloader/bx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/gx0;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/gx0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/gx0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
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

    new-instance p1, Lcom/shabakaty/downloader/gx0;

    iget-object v0, p0, Lcom/shabakaty/downloader/gx0;->v:Lcom/shabakaty/downloader/bx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/gx0;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    invoke-direct {p1, v0, v1, p2}, Lcom/shabakaty/downloader/gx0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/gx0;->v:Lcom/shabakaty/downloader/bx0;

    iget-object v0, p0, Lcom/shabakaty/downloader/gx0;->w:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    sget v1, Lcom/shabakaty/downloader/bx0;->z:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f12023a

    const-string v3, "getString(R.string.resume)"

    const-string v4, "text"

    .line 5
    invoke-static {p1, v2, v3, v4}, Lcom/shabakaty/downloader/fx0;->a(Lcom/shabakaty/downloader/bx0;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    .line 6
    new-instance v8, Lcom/shabakaty/downloader/kx0;

    invoke-direct {v8, p1, v0}, Lcom/shabakaty/downloader/kx0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/pl4;

    const/4 v6, 0x0

    const-string v9, ""

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v1, v3}, Lcom/shabakaty/downloader/tp6;->c(Lcom/shabakaty/downloader/gn;Ljava/util/List;I)V

    const v2, 0x7f1200ce

    .line 9
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "getString(R.string.delete)"

    invoke-static {v7, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v7, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v8, Lcom/shabakaty/downloader/lx0;

    invoke-direct {v8, p1, v0}, Lcom/shabakaty/downloader/lx0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/pl4;

    const-string v9, ""

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 13
    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/tp6;->c(Lcom/shabakaty/downloader/gn;Ljava/util/List;I)V

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/gx0;->v:Lcom/shabakaty/downloader/bx0;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/on;

    invoke-direct {v0}, Lcom/shabakaty/downloader/on;-><init>()V

    const-string v2, "items"

    .line 17
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f120297

    const-string v3, "getString(R.string.txt_download_status_paused)"

    const-string v4, "title"

    .line 18
    invoke-static {p1, v2, v3, v4}, Lcom/shabakaty/downloader/fx0;->a(Lcom/shabakaty/downloader/bx0;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v2, p0, Lcom/shabakaty/downloader/gx0;->v:Lcom/shabakaty/downloader/bx0;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fragmentManager"

    .line 20
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, v0, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    .line 22
    invoke-static {v1}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 23
    iput-object p1, v0, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    const-string p1, "listBottomSheet"

    .line 24
    invoke-virtual {v0, v2, p1}, Lcom/shabakaty/downloader/on;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    .line 25
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
