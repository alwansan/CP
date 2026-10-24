.class public final Lcom/shabakaty/downloader/ds0$d;
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
.field public final synthetic r:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$d;->r:Lcom/shabakaty/downloader/rm1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$d;->r:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
