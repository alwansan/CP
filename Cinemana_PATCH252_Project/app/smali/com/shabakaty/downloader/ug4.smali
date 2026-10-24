.class public final Lcom/shabakaty/downloader/ug4;
.super Lcom/shabakaty/downloader/af2;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/me0;

.field public final synthetic s:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ug4;->r:Lcom/shabakaty/downloader/me0;

    iput-object p2, p0, Lcom/shabakaty/downloader/ug4;->s:Lcom/shabakaty/downloader/tm1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ug4;->r:Lcom/shabakaty/downloader/me0;

    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->b(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/tg4;

    iget-object v0, p0, Lcom/shabakaty/downloader/ug4;->s:Lcom/shabakaty/downloader/tm1;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lcom/shabakaty/downloader/tg4;-><init>(Lcom/shabakaty/downloader/tm1;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
