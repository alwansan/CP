.class public Lcom/shabakaty/downloader/ad$a;
.super Lcom/shabakaty/downloader/gm2;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ad;->m()Lcom/shabakaty/downloader/gm2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/gm2<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/shabakaty/downloader/ad;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ad;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    invoke-direct {p0}, Lcom/shabakaty/downloader/gm2;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/m64;->clear()V

    return-void
.end method

.method public b(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    iget-object v0, v0, Lcom/shabakaty/downloader/m64;->s:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    iget v0, v0, Lcom/shabakaty/downloader/m64;->t:I

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/m64;->e(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/m64;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/m64;->j(I)Ljava/lang/Object;

    return-void
.end method

.method public i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ad$a;->d:Lcom/shabakaty/downloader/ad;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/m64;->s:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 3
    aput-object p2, v0, p1

    return-object v1
.end method
