.class public final Lcom/shabakaty/downloader/zi0$b;
.super Ljava/lang/Object;
.source "DNSTaskStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zi0$b$a;
    }
.end annotation


# static fields
.field public static volatile b:Lcom/shabakaty/downloader/zi0$b;

.field public static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/zi0$b$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/shabakaty/downloader/d92;",
            "Lcom/shabakaty/downloader/zi0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zi0$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/zi0$b;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/zi0$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zi0$b;->b:Lcom/shabakaty/downloader/zi0$b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shabakaty/downloader/zi0$b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/zi0$b;->b:Lcom/shabakaty/downloader/zi0$b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/zi0$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/zi0$b;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/zi0$b;->b:Lcom/shabakaty/downloader/zi0$b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/zi0$b;->b:Lcom/shabakaty/downloader/zi0$b;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zi0;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$b;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/zi0$b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/zi0$b$a;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/zi0$b$a;->a(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/zi0$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/zi0$a;-><init>(Lcom/shabakaty/downloader/d92;)V

    .line 6
    :goto_1
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/zi0;

    :cond_2
    return-object v0
.end method
