.class public final Lcom/shabakaty/downloader/zy2$a;
.super Lcom/shabakaty/downloader/af2;
.source "NewCapturedType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zy2;-><init>(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/zy2;Lcom/shabakaty/downloader/kt4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/qw4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zy2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zy2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/zy2$a;->r:Lcom/shabakaty/downloader/zy2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zy2$a;->r:Lcom/shabakaty/downloader/zy2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/zy2;->b:Lcom/shabakaty/downloader/rm1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method
