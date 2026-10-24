.class public Lcom/shabakaty/downloader/as4;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/shabakaty/downloader/xr4;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/cu4;

.field public final synthetic s:Lcom/shabakaty/downloader/wr4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cu4;Lcom/shabakaty/downloader/wr4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/as4;->r:Lcom/shabakaty/downloader/cu4;

    iput-object p2, p0, Lcom/shabakaty/downloader/as4;->s:Lcom/shabakaty/downloader/wr4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/lr1;",
            "Lcom/shabakaty/downloader/cu4<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/as4;->r:Lcom/shabakaty/downloader/cu4;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/cu4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/as4;->s:Lcom/shabakaty/downloader/wr4;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
