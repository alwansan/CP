.class public final Lcom/shabakaty/downloader/br1;
.super Lcom/shabakaty/downloader/ej;
.source "GroupsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/cinemana/domain/models/local/home_page/VideosGroup;",
        "Lcom/shabakaty/downloader/k42;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf4;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/br1;->d:I

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/z25;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/br1;->d:I

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/br1;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-long v0, p1

    return-wide v0

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/ej;->h(Ljava/lang/Object;I)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(I)I
    .locals 0

    iget p1, p0, Lcom/shabakaty/downloader/br1;->d:I

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0d00a6

    return p1

    :pswitch_0
    const p1, 0x7f0d009b

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
