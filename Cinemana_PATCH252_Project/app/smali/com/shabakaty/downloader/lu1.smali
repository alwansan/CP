.class public final synthetic Lcom/shabakaty/downloader/lu1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/lu1;

.field public static final synthetic t:Lcom/shabakaty/downloader/lu1;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/lu1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/lu1;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/lu1;->s:Lcom/shabakaty/downloader/lu1;

    new-instance v0, Lcom/shabakaty/downloader/lu1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/lu1;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/lu1;->t:Lcom/shabakaty/downloader/lu1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/lu1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/lu1;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    const-string v0, "group"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->c()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "<set-?>"

    .line 5
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v2, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->listId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-object p1

    .line 7
    :goto_1
    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    .line 8
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
