.class public final Lcom/shabakaty/downloader/ds0$c$f;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ds0$c;-><init>(Lcom/shabakaty/downloader/ds0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
.field public final synthetic r:Lcom/shabakaty/downloader/ds0$c;

.field public final synthetic s:Lcom/shabakaty/downloader/ds0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ds0$c;Lcom/shabakaty/downloader/ds0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c$f;->r:Lcom/shabakaty/downloader/ds0$c;

    iput-object p2, p0, Lcom/shabakaty/downloader/ds0$c$f;->s:Lcom/shabakaty/downloader/ds0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$c$f;->r:Lcom/shabakaty/downloader/ds0$c;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ds0$c;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ds0$c$f;->s:Lcom/shabakaty/downloader/ds0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ds0;->p()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/f24;->B(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
