.class public final Lcom/shabakaty/downloader/pg2;
.super Lcom/shabakaty/downloader/y0;
.source "LazyScopeAdapter.kt"


# instance fields
.field public final b:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Lcom/shabakaty/downloader/mr2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/md4;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Lcom/shabakaty/downloader/mr2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getScope"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/y0;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/pg2$a;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/pg2$a;-><init>(Lcom/shabakaty/downloader/rm1;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/pg2;->b:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public i()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pg2;->b:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method
