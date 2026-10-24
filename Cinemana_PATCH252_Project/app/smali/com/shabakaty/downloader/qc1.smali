.class public final synthetic Lcom/shabakaty/downloader/qc1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/pc1$a;
.implements Lcom/shabakaty/downloader/a73;


# instance fields
.field public final r:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qc1;->r:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qc1;->r:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/qc1;->r:Lcom/google/firebase/messaging/FirebaseMessaging;

    check-cast p1, Lcom/shabakaty/downloader/oo4;

    .line 1
    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/oo4;->i:Lcom/shabakaty/downloader/mo4;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mo4;->a()Lcom/shabakaty/downloader/lo4;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, Lcom/shabakaty/downloader/oo4;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/oo4;->g(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1

    throw v0

    :cond_1
    :goto_1
    return-void
.end method
