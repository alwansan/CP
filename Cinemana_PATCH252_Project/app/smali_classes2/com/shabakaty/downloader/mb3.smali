.class public final Lcom/shabakaty/downloader/mb3;
.super Ljava/lang/Object;
.source "PendingPost.java"


# static fields
.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/mb3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/shabakaty/downloader/nf4;

.field public c:Lcom/shabakaty/downloader/mb3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/mb3;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/downloader/nf4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mb3;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/mb3;->b:Lcom/shabakaty/downloader/nf4;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/nf4;Ljava/lang/Object;)Lcom/shabakaty/downloader/mb3;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mb3;->d:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 3
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/mb3;

    .line 4
    iput-object p1, v1, Lcom/shabakaty/downloader/mb3;->a:Ljava/lang/Object;

    .line 5
    iput-object p0, v1, Lcom/shabakaty/downloader/mb3;->b:Lcom/shabakaty/downloader/nf4;

    const/4 p0, 0x0

    .line 6
    iput-object p0, v1, Lcom/shabakaty/downloader/mb3;->c:Lcom/shabakaty/downloader/mb3;

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/mb3;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/mb3;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/nf4;)V

    return-object v0

    .line 10
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method
