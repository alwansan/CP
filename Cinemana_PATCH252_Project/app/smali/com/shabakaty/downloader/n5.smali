.class public final synthetic Lcom/shabakaty/downloader/n5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/n5;

.field public static final synthetic t:Lcom/shabakaty/downloader/n5;

.field public static final synthetic u:Lcom/shabakaty/downloader/n5;

.field public static final synthetic v:Lcom/shabakaty/downloader/n5;

.field public static final synthetic w:Lcom/shabakaty/downloader/n5;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/n5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n5;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/n5;->s:Lcom/shabakaty/downloader/n5;

    new-instance v0, Lcom/shabakaty/downloader/n5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n5;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/n5;->t:Lcom/shabakaty/downloader/n5;

    new-instance v0, Lcom/shabakaty/downloader/n5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n5;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/n5;->u:Lcom/shabakaty/downloader/n5;

    new-instance v0, Lcom/shabakaty/downloader/n5;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n5;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/n5;->v:Lcom/shabakaty/downloader/n5;

    new-instance v0, Lcom/shabakaty/downloader/n5;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n5;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/n5;->w:Lcom/shabakaty/downloader/n5;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/n5;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/n5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    sget p1, Lcom/shabakaty/cinemana/player/VideoPlayerActivity;->A:I

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->k(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    sget-object p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/shabakaty/downloader/p5;->f:Lcom/shabakaty/downloader/a63;

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/hc1;->a()Lcom/shabakaty/downloader/hc1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/hc1;->b(Ljava/lang/Throwable;)V

    return-void

    .line 2
    :goto_0
    check-cast p1, Ljava/lang/Integer;

    sget p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->z:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
