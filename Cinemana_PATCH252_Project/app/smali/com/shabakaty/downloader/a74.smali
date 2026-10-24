.class public final Lcom/shabakaty/downloader/a74;
.super Lcom/shabakaty/downloader/mg4;
.source "SimpleSubtitleOutputBuffer.java"


# instance fields
.field public final v:Lcom/shabakaty/downloader/q83$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/q83$a<",
            "Lcom/shabakaty/downloader/mg4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q83$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q83$a<",
            "Lcom/shabakaty/downloader/mg4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/mg4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/a74;->v:Lcom/shabakaty/downloader/q83$a;

    return-void
.end method


# virtual methods
.method public final H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a74;->v:Lcom/shabakaty/downloader/q83$a;

    check-cast v0, Lcom/shabakaty/downloader/cu;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/cu;->j(Lcom/shabakaty/downloader/q83;)V

    return-void
.end method
