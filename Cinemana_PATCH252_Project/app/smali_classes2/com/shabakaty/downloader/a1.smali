.class public abstract Lcom/shabakaty/downloader/a1;
.super Ljava/lang/Object;
.source "AbstractSharedFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/shabakaty/downloader/c1<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public r:[Lcom/shabakaty/downloader/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field public s:I

.field public t:I

.field public u:Lcom/shabakaty/downloader/dw2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/dw2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Lcom/shabakaty/downloader/c1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a1;->r:[Lcom/shabakaty/downloader/c1;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/a1;->h(I)[Lcom/shabakaty/downloader/c1;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/a1;->r:[Lcom/shabakaty/downloader/c1;

    goto :goto_0

    .line 4
    :cond_0
    iget v2, p0, Lcom/shabakaty/downloader/a1;->s:I

    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 5
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Lcom/shabakaty/downloader/c1;

    iput-object v1, p0, Lcom/shabakaty/downloader/a1;->r:[Lcom/shabakaty/downloader/c1;

    check-cast v0, [Lcom/shabakaty/downloader/c1;

    .line 6
    :cond_1
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/a1;->t:I

    .line 7
    :cond_2
    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a1;->g()Lcom/shabakaty/downloader/c1;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 8
    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-eqz v2, :cond_6

    .line 9
    invoke-virtual {v2, p0}, Lcom/shabakaty/downloader/c1;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    iput v1, p0, Lcom/shabakaty/downloader/a1;->t:I

    .line 11
    iget v0, p0, Lcom/shabakaty/downloader/a1;->s:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/a1;->s:I

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/a1;->u:Lcom/shabakaty/downloader/dw2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ic4;->c(Lcom/shabakaty/downloader/dw2;I)V

    :cond_5
    return-object v2

    .line 15
    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    throw v0
.end method

.method public abstract g()Lcom/shabakaty/downloader/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract h(I)[Lcom/shabakaty/downloader/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method public final i(Lcom/shabakaty/downloader/c1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/shabakaty/downloader/a1;->s:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/a1;->s:I

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/a1;->u:Lcom/shabakaty/downloader/dw2;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4
    iput v3, p0, Lcom/shabakaty/downloader/a1;->t:I

    :cond_0
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/c1;->b(Ljava/lang/Object;)[Lcom/shabakaty/downloader/ud0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    sget-object v5, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {v4, v5}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 7
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/ic4;->c(Lcom/shabakaty/downloader/dw2;I)V

    :cond_3
    return-void

    .line 8
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m()Lcom/shabakaty/downloader/gc4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/gc4<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a1;->u:Lcom/shabakaty/downloader/dw2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/a1;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ic4;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/dw2;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/a1;->u:Lcom/shabakaty/downloader/dw2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
