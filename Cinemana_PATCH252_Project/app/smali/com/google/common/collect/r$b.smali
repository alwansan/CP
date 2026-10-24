.class public Lcom/google/common/collect/r$b;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final r:[Ljava/lang/Object;

.field public final s:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/r$b;->r:[Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/r$b;->s:[Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/common/collect/r;->e()Lcom/google/common/collect/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/n;->p()Lcom/shabakaty/downloader/uv4;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/r$b;->r:[Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/r$b;->s:[Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r$b;->r:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/r$b;->r:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 4
    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/google/common/collect/r$b;->s:[Ljava/lang/Object;

    aget-object v4, v4, v1

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x2

    .line 5
    array-length v6, v0

    if-le v5, v6, :cond_0

    .line 6
    array-length v6, v0

    .line 7
    invoke-static {v6, v5}, Lcom/google/common/collect/n$b;->a(II)I

    move-result v5

    .line 8
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 9
    :cond_0
    invoke-static {v3, v4}, Lcom/google/common/collect/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    mul-int/lit8 v5, v2, 0x2

    .line 10
    aput-object v3, v0, v5

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 11
    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v2, v0}, Lcom/google/common/collect/c0;->i(I[Ljava/lang/Object;)Lcom/google/common/collect/c0;

    move-result-object v0

    return-object v0
.end method
