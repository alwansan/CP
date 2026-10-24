.class public final Lcom/shabakaty/downloader/rp1$a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/shabakaty/downloader/uc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/rp1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lcom/shabakaty/downloader/uc2;"
    }
.end annotation


# instance fields
.field public r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public s:I

.field public final synthetic t:Lcom/shabakaty/downloader/rp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rp1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rp1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rp1<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/rp1$a;->t:Lcom/shabakaty/downloader/rp1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x2

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/rp1$a;->s:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/rp1$a;->s:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/rp1$a;->t:Lcom/shabakaty/downloader/rp1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rp1;->a:Lcom/shabakaty/downloader/rm1;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/rp1$a;->t:Lcom/shabakaty/downloader/rp1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/rp1;->b:Lcom/shabakaty/downloader/tm1;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/rp1$a;->r:Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/rp1$a;->r:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 6
    :goto_1
    iput v0, p0, Lcom/shabakaty/downloader/rp1$a;->s:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/rp1$a;->s:I

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rp1$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/rp1$a;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/rp1$a;->s:I

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rp1$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/rp1$a;->s:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/rp1$a;->r:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/rp1$a;->s:I

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
