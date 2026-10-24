.class public final Lcom/shabakaty/downloader/cc6;
.super Lcom/shabakaty/downloader/k96;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/k96<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic t:Lcom/shabakaty/downloader/nb6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nb6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cc6;->t:Lcom/shabakaty/downloader/nb6;

    invoke-direct {p0}, Lcom/shabakaty/downloader/k96;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cc6;->t:Lcom/shabakaty/downloader/nb6;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/v76;->b(II)I

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/cc6;->t:Lcom/shabakaty/downloader/nb6;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/nb6;->u:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    .line 6
    aget-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 7
    aget-object p1, v0, p1

    .line 8
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cc6;->t:Lcom/shabakaty/downloader/nb6;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method
