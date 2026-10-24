.class public final Lcom/shabakaty/downloader/z52;
.super Lcom/shabakaty/downloader/uv4;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/uv4<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Z

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/z52;->s:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/shabakaty/downloader/uv4;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/z52;->r:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/z52;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/z52;->r:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/z52;->s:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
