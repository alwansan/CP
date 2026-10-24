.class public final Lcom/onesignal/q0$e;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/q0;->y(Lcom/onesignal/q0$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/q0$r;


# direct methods
.method public constructor <init>(Lcom/onesignal/q0$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/q0$e;->r:Lcom/onesignal/q0$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/onesignal/q0;->V:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/q0$e;->r:Lcom/onesignal/q0$r;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Lcom/onesignal/q0;->z()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    check-cast v0, Lcom/shabakaty/downloader/a33;

    const-string v1, "getTags called under a null user!"

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/onesignal/q0;->G()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
