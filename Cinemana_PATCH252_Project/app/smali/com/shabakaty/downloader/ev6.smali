.class public final synthetic Lcom/shabakaty/downloader/ev6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/gt3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/pp2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pp2;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/ev6;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ev6;->b:Lcom/shabakaty/downloader/pp2;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ev6;->b:Lcom/shabakaty/downloader/pp2;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/shabakaty/downloader/ft3;)V
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/ev6;->a:I

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ev6;->b:Lcom/shabakaty/downloader/pp2;

    check-cast p1, Lcom/shabakaty/downloader/br3$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ft3;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget v7, p1, Lcom/google/android/gms/common/api/Status;->s:I

    if-eqz v7, :cond_0

    .line 4
    iget-object v8, v0, Lcom/shabakaty/downloader/pp2;->a:Lcom/shabakaty/downloader/pk2;

    new-array v5, v5, [Ljava/lang/Object;

    .line 5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->t:Ljava/lang/String;

    aput-object p1, v5, v3

    const-string p1, "Error fetching queue item ids, statusCode=%s, statusMessage=%s"

    .line 7
    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v4, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v8, p1, v3}, Lcom/shabakaty/downloader/pk2;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_0
    iput-object v6, v0, Lcom/shabakaty/downloader/pp2;->l:Lcom/shabakaty/downloader/nb3;

    .line 10
    iget-object p1, v0, Lcom/shabakaty/downloader/pp2;->h:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, v0, Lcom/shabakaty/downloader/pp2;->i:Landroid/os/Handler;

    iget-object v3, v0, Lcom/shabakaty/downloader/pp2;->j:Ljava/util/TimerTask;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object p1, v0, Lcom/shabakaty/downloader/pp2;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/shabakaty/downloader/pp2;->j:Ljava/util/TimerTask;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ev6;->b:Lcom/shabakaty/downloader/pp2;

    check-cast p1, Lcom/shabakaty/downloader/br3$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/ft3;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 15
    iget v7, p1, Lcom/google/android/gms/common/api/Status;->s:I

    if-eqz v7, :cond_2

    .line 16
    iget-object v8, v0, Lcom/shabakaty/downloader/pp2;->a:Lcom/shabakaty/downloader/pk2;

    new-array v5, v5, [Ljava/lang/Object;

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->t:Ljava/lang/String;

    aput-object p1, v5, v3

    const-string p1, "Error fetching queue items, statusCode=%s, statusMessage=%s"

    .line 19
    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v4, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v8, p1, v3}, Lcom/shabakaty/downloader/pk2;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_2
    iput-object v6, v0, Lcom/shabakaty/downloader/pp2;->k:Lcom/shabakaty/downloader/nb3;

    .line 22
    iget-object p1, v0, Lcom/shabakaty/downloader/pp2;->h:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    iget-object p1, v0, Lcom/shabakaty/downloader/pp2;->i:Landroid/os/Handler;

    iget-object v3, v0, Lcom/shabakaty/downloader/pp2;->j:Ljava/util/TimerTask;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    iget-object p1, v0, Lcom/shabakaty/downloader/pp2;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/shabakaty/downloader/pp2;->j:Ljava/util/TimerTask;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
