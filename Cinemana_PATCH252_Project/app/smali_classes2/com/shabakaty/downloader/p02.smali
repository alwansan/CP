.class public final Lcom/shabakaty/downloader/p02;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/shabakaty/downloader/uc2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/shabakaty/downloader/o02<",
        "+TT;>;>;",
        "Lcom/shabakaty/downloader/uc2;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Ljava/util/Iterator<",
            "TT;>;>;"
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
            "Ljava/util/Iterator<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/p02;->r:Lcom/shabakaty/downloader/rm1;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/o02<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/q02;

    iget-object v1, p0, Lcom/shabakaty/downloader/p02;->r:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/q02;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
