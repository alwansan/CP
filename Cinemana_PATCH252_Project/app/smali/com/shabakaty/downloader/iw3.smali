.class public final synthetic Lcom/shabakaty/downloader/iw3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/lw3$b;
.implements Lcom/shabakaty/downloader/s91;
.implements Lcom/shabakaty/downloader/wo2$g;
.implements Lcom/shabakaty/downloader/wc0;
.implements Lcom/shabakaty/downloader/ot1$a;
.implements Lcom/shabakaty/downloader/gg0$a;
.implements Lcom/liulishuo/filedownloader/util/FileDownloadHelper$ConnectionCountAdapter;


# static fields
.field public static final synthetic s:Lcom/shabakaty/downloader/iw3;

.field public static final synthetic t:Lcom/shabakaty/downloader/iw3;

.field public static final synthetic u:Lcom/shabakaty/downloader/iw3;

.field public static final synthetic v:Lcom/shabakaty/downloader/iw3;

.field public static final synthetic w:Lcom/shabakaty/downloader/iw3;

.field public static final synthetic x:Lcom/shabakaty/downloader/iw3;

.field public static final synthetic y:Lcom/shabakaty/downloader/iw3;

.field public static final synthetic z:Lcom/shabakaty/downloader/iw3;


# instance fields
.field public final synthetic r:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/iw3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/iw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/iw3;->s:Lcom/shabakaty/downloader/iw3;

    new-instance v0, Lcom/shabakaty/downloader/iw3;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/iw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/iw3;->t:Lcom/shabakaty/downloader/iw3;

    new-instance v0, Lcom/shabakaty/downloader/iw3;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/iw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/iw3;->u:Lcom/shabakaty/downloader/iw3;

    new-instance v0, Lcom/shabakaty/downloader/iw3;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/iw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/iw3;->v:Lcom/shabakaty/downloader/iw3;

    new-instance v0, Lcom/shabakaty/downloader/iw3;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/iw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/iw3;->w:Lcom/shabakaty/downloader/iw3;

    new-instance v0, Lcom/shabakaty/downloader/iw3;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/iw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/iw3;->x:Lcom/shabakaty/downloader/iw3;

    new-instance v0, Lcom/shabakaty/downloader/iw3;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/iw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/iw3;->y:Lcom/shabakaty/downloader/iw3;

    new-instance v0, Lcom/shabakaty/downloader/iw3;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/iw3;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/iw3;->z:Lcom/shabakaty/downloader/iw3;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/iw3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/shabakaty/downloader/bx3$c;

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/bx3$c;->b:Lcom/shabakaty/downloader/u01$b;

    invoke-interface {p1}, Lcom/shabakaty/downloader/u01$b;->a()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/shabakaty/downloader/lw3;->v:Lcom/shabakaty/downloader/o31;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ej4;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/ej4;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/shabakaty/downloader/gg0;->b(Landroid/util/JsonReader;)Lcom/shabakaty/downloader/eg0$c;

    move-result-object p1

    return-object p1
.end method

.method public c()[Lcom/shabakaty/downloader/n91;
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/iw3;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/bv2;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {v2, v1, v3, v4}, Lcom/shabakaty/downloader/bv2;-><init>(IJ)V

    aput-object v2, v0, v1

    return-object v0

    :goto_0
    new-array v0, v2, [Lcom/shabakaty/downloader/n91;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/z1;

    invoke-direct {v2}, Lcom/shabakaty/downloader/z1;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/shabakaty/downloader/ro2;

    sget-object v0, Lcom/shabakaty/downloader/wo2;->a:Ljava/util/regex/Pattern;

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public determineConnectionCount(ILjava/lang/String;Ljava/lang/String;J)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic f(Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/r91;->a(Lcom/shabakaty/downloader/s91;Landroid/net/Uri;Ljava/util/Map;)[Lcom/shabakaty/downloader/n91;

    move-result-object p1

    return-object p1
.end method
