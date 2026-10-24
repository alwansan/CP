.class public abstract Lcom/shabakaty/downloader/co5;
.super Lcom/shabakaty/downloader/po5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/po5<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public transient u:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/shabakaty/downloader/po5;-><init>()V

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/co5;->t:Ljava/util/Map;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static synthetic d(Lcom/shabakaty/downloader/co5;)I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/co5;->u:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/shabakaty/downloader/co5;->u:I

    return v0
.end method

.method public static synthetic e(Lcom/shabakaty/downloader/co5;)I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/co5;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/co5;->u:I

    return v0
.end method

.method public static synthetic f(Lcom/shabakaty/downloader/co5;I)I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/co5;->u:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shabakaty/downloader/co5;->u:I

    return v0
.end method

.method public static synthetic h(Lcom/shabakaty/downloader/co5;I)I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/co5;->u:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/shabakaty/downloader/co5;->u:I

    return v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/co5;->t:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/co5;->c()Ljava/util/Collection;

    move-result-object v0

    .line 3
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/shabakaty/downloader/co5;->u:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/shabakaty/downloader/co5;->u:I

    iget-object p2, p0, Lcom/shabakaty/downloader/co5;->t:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 7
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/shabakaty/downloader/co5;->u:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/shabakaty/downloader/co5;->u:I

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
