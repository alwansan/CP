.class public Lcom/shabakaty/downloader/ua0;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# static fields
.field public static a:Lcom/shabakaty/downloader/ua0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ua0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ua0;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ua0;->a:Lcom/shabakaty/downloader/ua0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/shabakaty/downloader/z90;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/shabakaty/downloader/z90;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "ZENDESK_CONFIGURATION"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/z90;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
