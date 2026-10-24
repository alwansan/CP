.class public final Lcom/shabakaty/downloader/fe0;
.super Ljava/lang/Object;
.source "CookieJar.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ge0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/qw1;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qw1;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ee0;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/qw1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qw1;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ee0;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
