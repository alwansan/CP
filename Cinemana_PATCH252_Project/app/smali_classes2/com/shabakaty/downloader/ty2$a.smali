.class public final Lcom/shabakaty/downloader/ty2$a;
.super Ljava/lang/Object;
.source "NetworkTopologyDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ty2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ty2$a$a;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/shabakaty/downloader/ty2;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/ty2$a$a;",
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

    sput-object v0, Lcom/shabakaty/downloader/ty2$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/ty2;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ty2$a;->a:Lcom/shabakaty/downloader/ty2;

    if-nez v0, :cond_3

    .line 2
    const-class v0, Lcom/shabakaty/downloader/ty2$a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ty2$a;->a:Lcom/shabakaty/downloader/ty2;

    if-nez v1, :cond_2

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/ty2$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ty2$a$a;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lcom/shabakaty/downloader/ty2$a$a;->a()Lcom/shabakaty/downloader/ty2;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/uy2;

    invoke-direct {v1}, Lcom/shabakaty/downloader/uy2;-><init>()V

    .line 7
    :goto_1
    sput-object v1, Lcom/shabakaty/downloader/ty2$a;->a:Lcom/shabakaty/downloader/ty2;

    .line 8
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_3
    :goto_2
    sget-object v0, Lcom/shabakaty/downloader/ty2$a;->a:Lcom/shabakaty/downloader/ty2;

    return-object v0
.end method
