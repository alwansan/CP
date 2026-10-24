.class public final Lcom/shabakaty/downloader/gg2$a;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaStaticClassScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/gg2;->n(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/mr2;",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/yh3;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/hw2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hw2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/gg2$a;->r:Lcom/shabakaty/downloader/hw2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/mr2;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gg2$a;->r:Lcom/shabakaty/downloader/hw2;

    sget-object v1, Lcom/shabakaty/downloader/mz2;->F:Lcom/shabakaty/downloader/mz2;

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/mr2;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
