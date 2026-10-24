.class public abstract Lcom/shabakaty/downloader/ih2;
.super Ljava/lang/Object;
.source "Lifecycle.kt"

# interfaces
.implements Lcom/shabakaty/downloader/se0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/lifecycle/e;
.end method

.method public final c(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/se0;",
            "-",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shabakaty/downloader/e92;"
        }
    .end annotation

    .line 1
    new-instance v3, Lcom/shabakaty/downloader/ih2$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/shabakaty/downloader/ih2$a;-><init>(Lcom/shabakaty/downloader/ih2;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    return-object p1
.end method
