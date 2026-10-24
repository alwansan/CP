.class public Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/DataSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalDataSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/DataSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;


# direct methods
.method public constructor <init>(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->b:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/facebook/datasource/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->b:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    iget v1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->a:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->q(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;ILcom/facebook/datasource/DataSource;)V

    return-void
.end method

.method public c(Lcom/facebook/datasource/DataSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->b:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    iget v1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->a:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-object v2, p1

    check-cast v2, Lcom/facebook/datasource/AbstractDataSource;

    invoke-virtual {v2}, Lcom/facebook/datasource/AbstractDataSource;->b()Z

    move-result v3

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v4, v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->i:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->t(I)Lcom/facebook/datasource/DataSource;

    move-result-object v5

    if-ne p1, v5, :cond_4

    iget v5, v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->i:I

    if-ne v1, v5, :cond_0

    goto :goto_3

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->u()Lcom/facebook/datasource/DataSource;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->i:I

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iput v1, v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->i:I

    move v3, v1

    .line 10
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-le v4, v3, :cond_5

    .line 11
    invoke-virtual {v0, v4}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->s(I)Lcom/facebook/datasource/DataSource;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 12
    invoke-interface {v5}, Lcom/facebook/datasource/DataSource;->close()Z

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 13
    :cond_4
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->u()Lcom/facebook/datasource/DataSource;

    move-result-object v3

    if-ne p1, v3, :cond_7

    const/4 p1, 0x0

    if-nez v1, :cond_6

    .line 15
    invoke-virtual {v2}, Lcom/facebook/datasource/AbstractDataSource;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 16
    :goto_4
    iget-object v2, v2, Lcom/facebook/datasource/AbstractDataSource;->a:Ljava/util/Map;

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/datasource/AbstractDataSource;->o(Ljava/lang/Object;ZLjava/util/Map;)Z

    .line 18
    :cond_7
    iget-object p1, v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 19
    iget v1, v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->j:I

    if-ne p1, v1, :cond_9

    iget-object p1, v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->l:Ljava/lang/Throwable;

    if-eqz p1, :cond_9

    .line 20
    iget-object v1, v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->m:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/datasource/AbstractDataSource;->m(Ljava/lang/Throwable;Ljava/util/Map;)Z

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 22
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/facebook/datasource/AbstractDataSource;

    invoke-virtual {v0}, Lcom/facebook/datasource/AbstractDataSource;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->b:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    iget v1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->a:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->q(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;ILcom/facebook/datasource/DataSource;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public d(Lcom/facebook/datasource/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->a:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->b:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    check-cast p1, Lcom/facebook/datasource/AbstractDataSource;

    invoke-virtual {p1}, Lcom/facebook/datasource/AbstractDataSource;->d()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/facebook/datasource/AbstractDataSource;->n(F)Z

    :cond_0
    return-void
.end method
