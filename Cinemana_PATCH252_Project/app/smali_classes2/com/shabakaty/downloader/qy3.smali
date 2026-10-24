.class public final Lcom/shabakaty/downloader/qy3;
.super Lcom/shabakaty/downloader/af2;
.source "ScopesHolderForClass.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/mr2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/py3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/py3<",
            "Lcom/shabakaty/downloader/mr2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/py3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/py3<",
            "Lcom/shabakaty/downloader/mr2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/qy3;->r:Lcom/shabakaty/downloader/py3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qy3;->r:Lcom/shabakaty/downloader/py3;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/py3;->b:Lcom/shabakaty/downloader/tm1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/py3;->c:Lcom/shabakaty/downloader/ve2;

    .line 4
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method
