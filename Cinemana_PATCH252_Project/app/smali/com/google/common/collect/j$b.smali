.class public abstract Lcom/google/common/collect/j$b;
.super Ljava/lang/Object;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public r:I

.field public s:I

.field public t:I

.field public final synthetic u:Lcom/google/common/collect/j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j;Lcom/google/common/collect/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/j$b;->u:Lcom/google/common/collect/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p2, p1, Lcom/google/common/collect/j;->w:I

    iput p2, p0, Lcom/google/common/collect/j$b;->r:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/j;->isEmpty()Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput p1, p0, Lcom/google/common/collect/j$b;->s:I

    .line 5
    iput p2, p0, Lcom/google/common/collect/j$b;->t:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/j$b;->s:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j$b;->u:Lcom/google/common/collect/j;

    iget v0, v0, Lcom/google/common/collect/j;->w:I

    iget v1, p0, Lcom/google/common/collect/j$b;->r:I

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/j$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/common/collect/j$b;->s:I

    iput v0, p0, Lcom/google/common/collect/j$b;->t:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/j$b;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/j$b;->u:Lcom/google/common/collect/j;

    iget v2, p0, Lcom/google/common/collect/j$b;->s:I

    add-int/lit8 v2, v2, 0x1

    .line 6
    iget v1, v1, Lcom/google/common/collect/j;->y:I

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 7
    :goto_0
    iput v2, p0, Lcom/google/common/collect/j$b;->s:I

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j$b;->u:Lcom/google/common/collect/j;

    iget v0, v0, Lcom/google/common/collect/j;->w:I

    iget v1, p0, Lcom/google/common/collect/j$b;->r:I

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/google/common/collect/j$b;->t:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/f;->c(Z)V

    .line 3
    iget v0, p0, Lcom/google/common/collect/j$b;->r:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/j$b;->r:I

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/j$b;->u:Lcom/google/common/collect/j;

    iget v1, p0, Lcom/google/common/collect/j$b;->t:I

    invoke-static {v0, v1}, Lcom/google/common/collect/j;->a(Lcom/google/common/collect/j;I)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/j$b;->u:Lcom/google/common/collect/j;

    iget v1, p0, Lcom/google/common/collect/j$b;->s:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/collect/j$b;->s:I

    .line 6
    iput v0, p0, Lcom/google/common/collect/j$b;->t:I

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
