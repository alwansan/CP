.class public final Lcom/shabakaty/downloader/nd2;
.super Lcom/shabakaty/downloader/af2;
.source "KTypeImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/reflect/Type;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/od2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/od2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/nd2;->r:Lcom/shabakaty/downloader/od2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nd2;->r:Lcom/shabakaty/downloader/od2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/od2;->b:Lcom/shabakaty/downloader/cq3$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/qo3;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
