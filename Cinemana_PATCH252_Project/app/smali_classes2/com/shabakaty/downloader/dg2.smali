.class public final Lcom/shabakaty/downloader/dg2;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qb0<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/cg2;

.field public final synthetic s:Lcom/shabakaty/downloader/f72;

.field public final synthetic t:Lcom/shabakaty/downloader/zh3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cg2;Lcom/shabakaty/downloader/f72;Lcom/shabakaty/downloader/zh3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/dg2;->r:Lcom/shabakaty/downloader/cg2;

    iput-object p2, p0, Lcom/shabakaty/downloader/dg2;->s:Lcom/shabakaty/downloader/f72;

    iput-object p3, p0, Lcom/shabakaty/downloader/dg2;->t:Lcom/shabakaty/downloader/zh3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dg2;->r:Lcom/shabakaty/downloader/cg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->h:Lcom/shabakaty/downloader/v72;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/dg2;->s:Lcom/shabakaty/downloader/f72;

    iget-object v2, p0, Lcom/shabakaty/downloader/dg2;->t:Lcom/shabakaty/downloader/zh3;

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/v72;->a(Lcom/shabakaty/downloader/f72;Lcom/shabakaty/downloader/yh3;)Lcom/shabakaty/downloader/qb0;

    move-result-object v0

    return-object v0
.end method
