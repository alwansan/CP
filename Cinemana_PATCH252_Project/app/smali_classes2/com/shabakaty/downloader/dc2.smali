.class public final Lcom/shabakaty/downloader/dc2;
.super Lcom/shabakaty/downloader/af2;
.source "KCallableImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/aa3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tq;

.field public final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tq;I)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/dc2;->r:Lcom/shabakaty/downloader/tq;

    iput p2, p0, Lcom/shabakaty/downloader/dc2;->s:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dc2;->r:Lcom/shabakaty/downloader/tq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/downloader/dc2;->s:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "descriptor.valueParameters[i]"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/aa3;

    return-object v0
.end method
