.class public final synthetic Lcom/shabakaty/downloader/p54;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/qm2;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/qm2;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/p54;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/p54;->s:Lcom/shabakaty/downloader/qm2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/p54;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/p54;->s:Lcom/shabakaty/downloader/qm2;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/CollectionItemApi;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "collection"

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/qm2;->e:Lcom/shabakaty/cinemana/domain/mapper/FranchiseItemMapper;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/nj;->mapDtoToDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;->content:Ljava/util/List;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qm2;->h(Ljava/util/List;)Ljava/util/List;

    return-object p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/p54;->s:Lcom/shabakaty/downloader/qm2;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/qm2;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
