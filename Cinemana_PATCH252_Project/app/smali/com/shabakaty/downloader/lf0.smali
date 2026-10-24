.class public final synthetic Lcom/shabakaty/downloader/lf0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic b:Lcom/shabakaty/downloader/lf0;

.field public static final synthetic c:Lcom/shabakaty/downloader/lf0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/lf0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/lf0;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/lf0;->b:Lcom/shabakaty/downloader/lf0;

    new-instance v0, Lcom/shabakaty/downloader/lf0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/lf0;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/lf0;->c:Lcom/shabakaty/downloader/lf0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/lf0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget p1, p0, Lcom/shabakaty/downloader/lf0;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/shabakaty/downloader/tf0;->r:I

    const-string p1, ".ae"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/kg0;->g:Ljava/nio/charset/Charset;

    const-string p1, "event"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
