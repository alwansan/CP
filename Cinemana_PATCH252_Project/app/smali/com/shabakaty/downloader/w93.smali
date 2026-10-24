.class public final Lcom/shabakaty/downloader/w93;
.super Lcom/shabakaty/downloader/ej;
.source "PaginationStatusAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/downloader/tj$a;",
        "Lcom/shabakaty/downloader/b42;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    const-wide/32 v0, 0x7f0d008d

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const p1, 0x7f0d008d

    return p1
.end method

.method public i(I)I
    .locals 0

    const p1, 0x7f0d008d

    return p1
.end method
