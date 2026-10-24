.class public final Lcom/shabakaty/downloader/ac2$c;
.super Lcom/shabakaty/downloader/af2;
.source "KCallableImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ac2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/od2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ac2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ac2<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ac2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ac2<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ac2$c;->r:Lcom/shabakaty/downloader/ac2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/od2;

    iget-object v1, p0, Lcom/shabakaty/downloader/ac2$c;->r:Lcom/shabakaty/downloader/ac2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ac2;->e()Lcom/shabakaty/downloader/tq;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    new-instance v2, Lcom/shabakaty/downloader/fc2;

    iget-object v3, p0, Lcom/shabakaty/downloader/ac2$c;->r:Lcom/shabakaty/downloader/ac2;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/fc2;-><init>(Lcom/shabakaty/downloader/ac2;)V

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/od2;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/rm1;)V

    return-object v0
.end method
