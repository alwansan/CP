.class public final Lcom/shabakaty/downloader/yr0;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/r8;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/xr0;

.field public final synthetic s:Lcom/shabakaty/downloader/oi3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xr0;Lcom/shabakaty/downloader/oi3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/yr0;->r:Lcom/shabakaty/downloader/xr0;

    iput-object p2, p0, Lcom/shabakaty/downloader/yr0;->s:Lcom/shabakaty/downloader/oi3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yr0;->r:Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->e:Lcom/shabakaty/downloader/l8;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->N:Lcom/shabakaty/downloader/gj3$a;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/yr0;->s:Lcom/shabakaty/downloader/oi3;

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/l8;->h(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/oi3;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
