.class public final synthetic Lcom/shabakaty/downloader/g00;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/g00;

.field public static final synthetic t:Lcom/shabakaty/downloader/g00;

.field public static final synthetic u:Lcom/shabakaty/downloader/g00;

.field public static final synthetic v:Lcom/shabakaty/downloader/g00;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/g00;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/g00;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/g00;->s:Lcom/shabakaty/downloader/g00;

    new-instance v0, Lcom/shabakaty/downloader/g00;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/g00;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/g00;->t:Lcom/shabakaty/downloader/g00;

    new-instance v0, Lcom/shabakaty/downloader/g00;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/g00;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/g00;->u:Lcom/shabakaty/downloader/g00;

    new-instance v0, Lcom/shabakaty/downloader/g00;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/g00;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/g00;->v:Lcom/shabakaty/downloader/g00;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/g00;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/g00;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->k(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    return-void

    .line 2
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    sget v0, Lcom/shabakaty/cinemana/CinemanaApplication;->B:I

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/kv4;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/shabakaty/downloader/o63;

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void

    .line 5
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/tj;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
