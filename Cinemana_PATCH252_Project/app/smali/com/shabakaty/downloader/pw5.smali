.class public abstract Lcom/shabakaty/downloader/pw5;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field public transient s:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/pw5;->r:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/yk5;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/jk5;

    .line 3
    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/jk5;-><init>(Lcom/shabakaty/downloader/yk5;)V

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/pw5;->r:Ljava/util/Set;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/pw5;->s:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/shabakaty/downloader/kw5;

    .line 1
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/kw5;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/pw5;->s:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
