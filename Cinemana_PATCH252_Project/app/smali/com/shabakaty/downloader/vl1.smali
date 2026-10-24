.class public final synthetic Lcom/shabakaty/downloader/vl1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/h71$c;


# static fields
.field public static final synthetic a:Lcom/shabakaty/downloader/vl1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/vl1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vl1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vl1;->a:Lcom/shabakaty/downloader/vl1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/UUID;)Lcom/shabakaty/downloader/h71;
    .locals 3

    sget v0, Lcom/shabakaty/downloader/wl1;->d:I

    .line 1
    :try_start_0
    new-instance v0, Lcom/shabakaty/downloader/wl1;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/wl1;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    new-instance v1, Lcom/shabakaty/downloader/nw4;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/nw4;-><init>(ILjava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/nw4;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/nw4;-><init>(ILjava/lang/Exception;)V

    throw v1
    :try_end_1
    .catch Lcom/shabakaty/downloader/nw4; {:try_start_1 .. :try_end_1} :catch_2

    .line 4
    :catch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameworkMediaDrm"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/m11;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m11;-><init>()V

    :goto_0
    return-object v0
.end method
