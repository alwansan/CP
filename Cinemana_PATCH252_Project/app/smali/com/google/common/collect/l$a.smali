.class public final Lcom/google/common/collect/l$a;
.super Lcom/google/common/collect/l;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/l;-><init>(Lcom/google/common/collect/l$a;)V

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/common/collect/l;
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l$a;->g(I)Lcom/google/common/collect/l;

    move-result-object p1

    return-object p1
.end method

.method public b(JJ)Lcom/google/common/collect/l;
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l$a;->g(I)Lcom/google/common/collect/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/l;
    .locals 0
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
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/l;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l$a;->g(I)Lcom/google/common/collect/l;

    move-result-object p1

    return-object p1
.end method

.method public d(ZZ)Lcom/google/common/collect/l;
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l$a;->g(I)Lcom/google/common/collect/l;

    move-result-object p1

    return-object p1
.end method

.method public e(ZZ)Lcom/google/common/collect/l;
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l$a;->g(I)Lcom/google/common/collect/l;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(I)Lcom/google/common/collect/l;
    .locals 0

    if-gez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/common/collect/l;->b:Lcom/google/common/collect/l;

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    sget-object p1, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/l;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/l;

    :goto_0
    return-object p1
.end method
