.class public final Lcom/shabakaty/downloader/yz6;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/pp2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pp2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yz6;->r:Lcom/shabakaty/downloader/pp2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yz6;->r:Lcom/shabakaty/downloader/pp2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/pp2;->h:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/pp2;->k:Lcom/shabakaty/downloader/nb3;

    if-nez v1, :cond_2

    .line 4
    iget-wide v1, v0, Lcom/shabakaty/downloader/pp2;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/pp2;->c:Lcom/shabakaty/downloader/br3;

    iget-object v2, v0, Lcom/shabakaty/downloader/pp2;->h:Ljava/util/Deque;

    .line 6
    invoke-static {v2}, Lcom/shabakaty/downloader/yw;->f(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Must be called from the main thread."

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->C()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/br3;->w(ILjava/lang/String;)Lcom/shabakaty/downloader/nb3;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v3, Lcom/shabakaty/downloader/wh5;

    invoke-direct {v3, v1, v2}, Lcom/shabakaty/downloader/wh5;-><init>(Lcom/shabakaty/downloader/br3;[I)V

    invoke-static {v3}, Lcom/shabakaty/downloader/br3;->x(Lcom/shabakaty/downloader/br3$g;)Lcom/shabakaty/downloader/br3$g;

    move-object v1, v3

    .line 11
    :goto_0
    iput-object v1, v0, Lcom/shabakaty/downloader/pp2;->k:Lcom/shabakaty/downloader/nb3;

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/ev6;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/ev6;-><init>(Lcom/shabakaty/downloader/pp2;I)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/pp2;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    :cond_2
    :goto_1
    return-void
.end method
