.class public final Lcom/shabakaty/downloader/nb6;
.super Lcom/shabakaty/downloader/jb6;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/jb6<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final transient t:Lcom/shabakaty/downloader/ba6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ba6<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient u:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ba6;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ba6<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/jb6;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/nb6;->t:Lcom/shabakaty/downloader/ba6;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/nb6;->u:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/nb6;->t:Lcom/shabakaty/downloader/ba6;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final d([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jb6;->n()Lcom/shabakaty/downloader/k96;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/k96;->d([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final h()Lcom/shabakaty/downloader/xc6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/xc6<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jb6;->n()Lcom/shabakaty/downloader/k96;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k96;->h()Lcom/shabakaty/downloader/xc6;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nb6;->h()Lcom/shabakaty/downloader/xc6;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
