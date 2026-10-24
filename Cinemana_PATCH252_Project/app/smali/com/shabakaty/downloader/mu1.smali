.class public final synthetic Lcom/shabakaty/downloader/mu1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/mu1;

.field public static final synthetic t:Lcom/shabakaty/downloader/mu1;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/mu1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mu1;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/mu1;->s:Lcom/shabakaty/downloader/mu1;

    new-instance v0, Lcom/shabakaty/downloader/mu1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mu1;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/mu1;->t:Lcom/shabakaty/downloader/mu1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/mu1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/mu1;->r:I

    const-string v1, "it"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/HomeGroupsApi;

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/home_page/HomeGroupsApi;->groups:Ljava/util/List;

    return-object p1

    .line 3
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/tj;

    .line 4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 6
    check-cast p1, Ljava/lang/Iterable;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
