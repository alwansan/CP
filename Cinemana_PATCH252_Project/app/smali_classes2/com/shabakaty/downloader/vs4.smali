.class public final Lcom/shabakaty/downloader/vs4;
.super Lcom/shabakaty/downloader/ws4;
.source "TypeSubstitution.kt"


# instance fields
.field public final synthetic c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/ts4;",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/ts4;",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/vs4;->c:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/vs4;->d:Z

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ws4;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/vs4;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vs4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public g(Lcom/shabakaty/downloader/ts4;)Lcom/shabakaty/downloader/qt4;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vs4;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qt4;

    return-object p1
.end method
