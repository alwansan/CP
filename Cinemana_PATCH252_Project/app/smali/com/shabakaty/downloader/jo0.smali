.class public final Lcom/shabakaty/downloader/jo0;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistParserFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/nt1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/it1;Lcom/shabakaty/downloader/kt1;)Lcom/shabakaty/downloader/ra3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/it1;",
            "Lcom/shabakaty/downloader/kt1;",
            ")",
            "Lcom/shabakaty/downloader/ra3$a<",
            "Lcom/shabakaty/downloader/lt1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mt1;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/mt1;-><init>(Lcom/shabakaty/downloader/it1;Lcom/shabakaty/downloader/kt1;)V

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/ra3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/ra3$a<",
            "Lcom/shabakaty/downloader/lt1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mt1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mt1;-><init>()V

    return-object v0
.end method
