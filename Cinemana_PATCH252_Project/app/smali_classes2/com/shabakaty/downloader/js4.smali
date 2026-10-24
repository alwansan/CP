.class public final Lcom/shabakaty/downloader/js4;
.super Ljava/lang/Object;
.source "TypeAliasExpansion.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/js4;

.field public final b:Lcom/shabakaty/downloader/hs4;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/kt4;",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/js4;Lcom/shabakaty/downloader/hs4;Ljava/util/List;Ljava/util/Map;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/js4;->a:Lcom/shabakaty/downloader/js4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/js4;->b:Lcom/shabakaty/downloader/hs4;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/js4;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/js4;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/hs4;)Z
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js4;->b:Lcom/shabakaty/downloader/hs4;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/js4;->a:Lcom/shabakaty/downloader/js4;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/js4;->a(Lcom/shabakaty/downloader/hs4;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
