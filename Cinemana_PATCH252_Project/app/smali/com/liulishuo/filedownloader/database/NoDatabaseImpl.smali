.class public Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/database/FileDownloadDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/database/NoDatabaseImpl$Maker;,
        Lcom/liulishuo/filedownloader/database/NoDatabaseImpl$MaintainerIterator;,
        Lcom/liulishuo/filedownloader/database/NoDatabaseImpl$Maintainer;
    }
.end annotation


# instance fields
.field public final connectionModelListMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/ConnectionModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final downloaderModelMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    return-void
.end method

.method public static createMaker()Lcom/liulishuo/filedownloader/database/NoDatabaseImpl$Maker;
    .locals 1

    .line 1
    new-instance v0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl$Maker;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl$Maker;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findConnectionModel(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/ConnectionModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public insert(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertConnectionModel(Lcom/liulishuo/filedownloader/model/ConnectionModel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public maintainer()Lcom/liulishuo/filedownloader/database/FileDownloadDatabase$Maintainer;
    .locals 1

    .line 1
    new-instance v0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl$Maintainer;

    invoke-direct {v0, p0}, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl$Maintainer;-><init>(Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;)V

    return-object v0
.end method

.method public onTaskStart(I)V
    .locals 0

    return-void
.end method

.method public remove(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeConnections(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public update(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "update but model == null!"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->find(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 5
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->downloaderModelMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->insert(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    :goto_0
    return-void
.end method

.method public updateCompleted(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->remove(I)Z

    return-void
.end method

.method public updateConnected(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateConnectionCount(II)V
    .locals 0

    return-void
.end method

.method public updateConnectionModel(IIJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/database/NoDatabaseImpl;->connectionModelListMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/model/ConnectionModel;

    .line 5
    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->getIndex()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 6
    invoke-virtual {v1, p3, p4}, Lcom/liulishuo/filedownloader/model/ConnectionModel;->setCurrentOffset(J)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateError(ILjava/lang/Throwable;J)V
    .locals 0

    return-void
.end method

.method public updateOldEtagOverdue(ILjava/lang/String;JJI)V
    .locals 0

    return-void
.end method

.method public updatePause(IJ)V
    .locals 0

    return-void
.end method

.method public updatePending(I)V
    .locals 0

    return-void
.end method

.method public updateProgress(IJ)V
    .locals 0

    return-void
.end method

.method public updateRetry(ILjava/lang/Throwable;)V
    .locals 0

    return-void
.end method
