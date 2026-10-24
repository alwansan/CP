.class public Lcom/shabakaty/downloader/he;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/shabakaty/downloader/ge;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final u:[Ljava/lang/String;


# instance fields
.field public r:I

.field public s:[Ljava/lang/String;

.field public t:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lcom/shabakaty/downloader/he;->u:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/he;->r:I

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/he;->u:[Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    return-void
.end method

.method public static n([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 1
    new-array v0, p1, [Ljava/lang/String;

    .line 2
    array-length v1, p0

    .line 3
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public A(Lcom/shabakaty/downloader/ge;)Lcom/shabakaty/downloader/he;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ge;->r:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/ge;->s:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/he;->C(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/he;

    .line 4
    iput-object p0, p1, Lcom/shabakaty/downloader/ge;->t:Lcom/shabakaty/downloader/he;

    return-object p0
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/he;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/he;->y(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/he;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/he;->m()Lcom/shabakaty/downloader/he;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v1, Lcom/shabakaty/downloader/he;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/he;

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/he;->r:I

    iget v2, p1, Lcom/shabakaty/downloader/he;->r:I

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    iget-object v2, p1, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    iget-object p1, p1, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/he;->r:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/he;->l(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    iget v1, p0, Lcom/shabakaty/downloader/he;->r:I

    aput-object p1, v0, v1

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lcom/shabakaty/downloader/he;->r:I

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/he;->r:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i(Lcom/shabakaty/downloader/he;)V
    .locals 5

    .line 1
    iget v0, p1, Lcom/shabakaty/downloader/he;->r:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/he;->r:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/he;->l(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p1, Lcom/shabakaty/downloader/he;->r:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/ge;

    iget-object v3, p1, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p1}, Lcom/shabakaty/downloader/ge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/he;->A(Lcom/shabakaty/downloader/ge;)Lcom/shabakaty/downloader/he;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/ge;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/he$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/he$a;-><init>(Lcom/shabakaty/downloader/he;)V

    return-object v0
.end method

.method public final l(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/he;->r:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/z02;->o(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/he;->r:I

    mul-int/lit8 v2, v1, 0x2

    :cond_2
    if-le p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    .line 4
    :goto_1
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/he;->n([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/he;->n([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    return-void
.end method

.method public m()Lcom/shabakaty/downloader/he;
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/he;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/he;->r:I

    iput v1, v0, Lcom/shabakaty/downloader/he;->r:I

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    iget v2, p0, Lcom/shabakaty/downloader/he;->r:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/he;->n([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    iget v2, p0, Lcom/shabakaty/downloader/he;->r:I

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/he;->n([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/he;->y(Ljava/lang/String;)I

    move-result p1

    const-string v0, ""

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object p1, v1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public s(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/he;->z(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    :goto_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/wu0;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/wu0;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/wu0;->z:Lcom/shabakaty/downloader/wu0$a;

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/he;->u(Ljava/lang/Appendable;Lcom/shabakaty/downloader/wu0$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/rz2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final u(Ljava/lang/Appendable;Lcom/shabakaty/downloader/wu0$a;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/he;->r:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/he;->t:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    .line 4
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 5
    invoke-static {v2, v3, p2}, Lcom/shabakaty/downloader/ge;->b(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/wu0$a;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "=\""

    .line 6
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    move-object v5, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v6, p2

    .line 7
    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/v31;->b(Ljava/lang/Appendable;Ljava/lang/String;Lcom/shabakaty/downloader/wu0$a;ZZZ)V

    const/16 v2, 0x22

    .line 8
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public y(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/he;->r:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public final z(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/he;->r:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
