.class public final Lcom/shabakaty/downloader/ya2;
.super Lcom/shabakaty/downloader/af2;
.source "JvmBuiltIns.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/xa2$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xa2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xa2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ya2;->r:Lcom/shabakaty/downloader/xa2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ya2;->r:Lcom/shabakaty/downloader/xa2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xa2;->f:Lcom/shabakaty/downloader/rm1;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ya2;->r:Lcom/shabakaty/downloader/xa2;

    check-cast v0, Lcom/shabakaty/downloader/xa2$b;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lcom/shabakaty/downloader/xa2;->f:Lcom/shabakaty/downloader/rm1;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "JvmBuiltins instance has not been initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
