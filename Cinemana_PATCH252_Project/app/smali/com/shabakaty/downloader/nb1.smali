.class public final Lcom/shabakaty/downloader/nb1;
.super Ljava/lang/Object;
.source "FilteringHlsPlaylistParserFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/nt1;


# instance fields
.field public final a:Lcom/shabakaty/downloader/nt1;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ud4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nt1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nt1;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ud4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/nb1;->a:Lcom/shabakaty/downloader/nt1;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/nb1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/it1;Lcom/shabakaty/downloader/kt1;)Lcom/shabakaty/downloader/ra3$a;
    .locals 2
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
    new-instance v0, Lcom/shabakaty/downloader/ob1;

    iget-object v1, p0, Lcom/shabakaty/downloader/nb1;->a:Lcom/shabakaty/downloader/nt1;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/shabakaty/downloader/nt1;->a(Lcom/shabakaty/downloader/it1;Lcom/shabakaty/downloader/kt1;)Lcom/shabakaty/downloader/ra3$a;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/downloader/nb1;->b:Ljava/util/List;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/ob1;-><init>(Lcom/shabakaty/downloader/ra3$a;Ljava/util/List;)V

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/ra3$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/ra3$a<",
            "Lcom/shabakaty/downloader/lt1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ob1;

    iget-object v1, p0, Lcom/shabakaty/downloader/nb1;->a:Lcom/shabakaty/downloader/nt1;

    .line 2
    invoke-interface {v1}, Lcom/shabakaty/downloader/nt1;->b()Lcom/shabakaty/downloader/ra3$a;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/nb1;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ob1;-><init>(Lcom/shabakaty/downloader/ra3$a;Ljava/util/List;)V

    return-object v0
.end method
