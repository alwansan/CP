.class public final Lcom/shabakaty/downloader/ob1;
.super Ljava/lang/Object;
.source "FilteringManifestParser.java"

# interfaces
.implements Lcom/shabakaty/downloader/ra3$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shabakaty/downloader/lb1<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ra3$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ra3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ra3$a<",
            "+TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/shabakaty/downloader/ra3$a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ra3$a<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ud4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ob1;->a:Lcom/shabakaty/downloader/ra3$a;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ob1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ob1;->a:Lcom/shabakaty/downloader/ra3$a;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ra3$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/lb1;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/ob1;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/ob1;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/lb1;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/lb1;

    :cond_1
    :goto_0
    return-object p1
.end method
