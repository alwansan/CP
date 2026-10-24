.class public final Lcom/shabakaty/downloader/ds0$e;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ds0;-><init>(Lcom/shabakaty/downloader/rr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/rm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic r:Lcom/shabakaty/downloader/ds0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ds0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$e;->r:Lcom/shabakaty/downloader/ds0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$e;->r:Lcom/shabakaty/downloader/ds0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ds0;->n()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ds0$e;->r:Lcom/shabakaty/downloader/ds0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ds0;->m()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ds0$e;->r:Lcom/shabakaty/downloader/ds0;

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/ds0;->c:Lcom/shabakaty/downloader/ds0$a;

    .line 4
    invoke-interface {v2}, Lcom/shabakaty/downloader/ds0$a;->f()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/f24;->B(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/f24;->B(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method
