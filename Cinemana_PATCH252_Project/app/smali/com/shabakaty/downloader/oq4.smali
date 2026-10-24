.class public abstract Lcom/shabakaty/downloader/oq4;
.super Ljava/lang/Object;
.source "TransportContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/oq4$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/oq4$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bi$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bi$b;-><init>()V

    sget-object v1, Lcom/shabakaty/downloader/tf3;->r:Lcom/shabakaty/downloader/tf3;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bi$b;->c(Lcom/shabakaty/downloader/tf3;)Lcom/shabakaty/downloader/oq4$a;

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[B
.end method

.method public abstract d()Lcom/shabakaty/downloader/tf3;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oq4;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oq4;->d()Lcom/shabakaty/downloader/tf3;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oq4;->c()[B

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oq4;->c()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    const-string v1, "TransportContext(%s, %s, %s)"

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
