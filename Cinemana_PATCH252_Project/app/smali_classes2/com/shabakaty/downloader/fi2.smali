.class public final Lcom/shabakaty/downloader/fi2;
.super Lcom/shabakaty/downloader/l0;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/fi2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/l0<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;",
        "Lcom/shabakaty/downloader/vc2;"
    }
.end annotation


# instance fields
.field public r:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field public s:I

.field public t:I

.field public u:Z

.field public final v:Lcom/shabakaty/downloader/fi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fi2<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final w:Lcom/shabakaty/downloader/fi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fi2<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 8
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/fi2;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->b(I)[Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/l0;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    .line 13
    iput p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    .line 14
    iput-boolean p1, p0, Lcom/shabakaty/downloader/fi2;->u:Z

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    .line 16
    iput-object p1, p0, Lcom/shabakaty/downloader/fi2;->w:Lcom/shabakaty/downloader/fi2;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;IIZLcom/shabakaty/downloader/fi2;Lcom/shabakaty/downloader/fi2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;IIZ",
            "Lcom/shabakaty/downloader/fi2<",
            "TE;>;",
            "Lcom/shabakaty/downloader/fi2<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/l0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/fi2;->s:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/fi2;->t:I

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/fi2;->u:Z

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/fi2;->w:Lcom/shabakaty/downloader/fi2;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/a14;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/a14;-><init>(Ljava/util/Collection;I)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The list cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/fi2;->m(ILjava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/fi2;->m(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 7
    iget v1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Lcom/shabakaty/downloader/fi2;->l(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 8
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lcom/shabakaty/downloader/fi2;->l(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fi2;->u(II)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p0, :cond_3

    .line 1
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v3, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v4, p0, Lcom/shabakaty/downloader/fi2;->t:I

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    add-int v6, v3, v5

    .line 4
    aget-object v6, v2, v6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "index: "

    const-string v3, ", size: "

    invoke-static {v2, p1, v3, v0}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    add-int v6, v1, v5

    .line 2
    aget-object v6, v0, v6

    mul-int/lit8 v4, v4, 0x1f

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public i(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fi2;->s(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "index: "

    const-string v3, ", size: "

    invoke-static {v2, p1, v3, v0}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi2$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/fi2$a;-><init>(Lcom/shabakaty/downloader/fi2;I)V

    return-object v0
.end method

.method public final l(ILjava/util/Collection;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/fi2;->l(ILjava/util/Collection;I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    iget-object p1, p1, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/fi2;->p(II)V

    const/4 v0, 0x0

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    add-int v2, p1, v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi2$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/fi2$a;-><init>(Lcom/shabakaty/downloader/fi2;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/fi2$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/fi2$a;-><init>(Lcom/shabakaty/downloader/fi2;I)V

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "index: "

    const-string v3, ", size: "

    invoke-static {v2, p1, v3, v0}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final m(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/fi2;->m(ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    iget-object p1, p1, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/fi2;->p(II)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final p(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr v0, p2

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    if-nez v1, :cond_5

    if-ltz v0, :cond_4

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_3

    .line 4
    array-length v2, v1

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    sub-int v3, v2, v0

    if-gez v3, :cond_0

    move v2, v0

    :cond_0
    const v3, 0x7ffffff7

    sub-int v4, v2, v3

    if-lez v4, :cond_2

    if-le v0, v3, :cond_1

    const v2, 0x7fffffff

    goto :goto_0

    :cond_1
    const v2, 0x7ffffff7

    .line 5
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/vd5;->g([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr v1, v2

    add-int v2, p1, p2

    invoke-static {v0, v0, v2, p1, v1}, Lcom/shabakaty/downloader/hd;->H([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 7
    iget p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    return-void

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/fi2;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->w:Lcom/shabakaty/downloader/fi2;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/shabakaty/downloader/fi2;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fi2;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fi2;->i(I)Ljava/lang/Object;

    :cond_0
    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/shabakaty/downloader/fi2;->z(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/shabakaty/downloader/fi2;->z(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final s(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/fi2;->s(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 5
    iget v3, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v4, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr v3, v4

    invoke-static {v0, v0, p1, v2, v3}, Lcom/shabakaty/downloader/hd;->H([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v0, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vd5;->w([Ljava/lang/Object;I)V

    .line 7
    iget p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    return-object v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fi2;->n()V

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int v2, v1, p1

    aget-object v2, v0, v2

    add-int/2addr v1, p1

    .line 4
    aput-object p2, v0, v1

    return-object v2

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public subList(II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    const-string v1, "fromIndex: "

    if-ltz p1, :cond_2

    if-gt p2, v0, :cond_2

    if-gt p1, p2, :cond_1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/fi2;

    iget-object v3, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int v4, v1, p1

    sub-int v5, p2, p1

    iget-boolean v6, p0, Lcom/shabakaty/downloader/fi2;->u:Z

    iget-object p1, p0, Lcom/shabakaty/downloader/fi2;->w:Lcom/shabakaty/downloader/fi2;

    if-nez p1, :cond_0

    move-object v8, p0

    goto :goto_0

    :cond_0
    move-object v8, p1

    :goto_0
    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/fi2;-><init>([Ljava/lang/Object;IIZLcom/shabakaty/downloader/fi2;Lcom/shabakaty/downloader/fi2;)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, " > toIndex: "

    invoke-static {v1, p1, v2, p2}, Lcom/shabakaty/downloader/xr;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", toIndex: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/hd;->K([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "destination"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(array, offse\u2026h, destination.javaClass)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/shabakaty/downloader/fi2;->s:I

    add-int/2addr v1, v3

    invoke-static {v0, p1, v2, v3, v1}, Lcom/shabakaty/downloader/hd;->H([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 4
    array-length v0, p1

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/fi2;->s:I

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "["

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    if-lez v4, :cond_0

    const-string v5, ", "

    .line 4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int v5, v1, v4

    .line 5
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "]"

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final u(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/fi2;->u(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    add-int v1, p1, p2

    iget v2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    invoke-static {v0, v0, p1, v1, v2}, Lcom/shabakaty/downloader/hd;->H([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    sub-int v1, v0, p2

    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/vd5;->x([Ljava/lang/Object;II)V

    .line 5
    :goto_0
    iget p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    return-void
.end method

.method public final z(IILjava/util/Collection;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+TE;>;Z)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fi2;->v:Lcom/shabakaty/downloader/fi2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/fi2;->z(IILjava/util/Collection;Z)I

    move-result p1

    .line 3
    iget p2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p4, :cond_1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int p3, p2, v1

    .line 6
    iget-object p4, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v0, p0, Lcom/shabakaty/downloader/fi2;->t:I

    add-int/2addr p1, v1

    invoke-static {p4, p4, p1, p2, v0}, Lcom/shabakaty/downloader/hd;->H([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/fi2;->r:[Ljava/lang/Object;

    iget p2, p0, Lcom/shabakaty/downloader/fi2;->t:I

    sub-int p4, p2, p3

    invoke-static {p1, p4, p2}, Lcom/shabakaty/downloader/vd5;->x([Ljava/lang/Object;II)V

    .line 8
    iget p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/shabakaty/downloader/fi2;->t:I

    return p3
.end method
