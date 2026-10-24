.class public final Lcom/shabakaty/downloader/xf2;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaClassMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Set<",
        "+",
        "Lcom/shabakaty/downloader/hw2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xf2;->r:Lcom/shabakaty/downloader/wf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xf2;->r:Lcom/shabakaty/downloader/wf2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cg2;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/xf2;->r:Lcom/shabakaty/downloader/wf2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/cg2;->c()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/f24;->B(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
