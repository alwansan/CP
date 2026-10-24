.class public Lcom/shabakaty/downloader/zt3$c;
.super Lcom/shabakaty/downloader/v32$c;
.source "RoomTrackingLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zt3;-><init>(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/ag6;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/shabakaty/downloader/zt3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zt3;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zt3$c;->b:Lcom/shabakaty/downloader/zt3;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/v32$c;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/sc;->m()Lcom/shabakaty/downloader/sc;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/zt3$c;->b:Lcom/shabakaty/downloader/zt3;

    iget-object v0, v0, Lcom/shabakaty/downloader/zt3;->j:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/sc;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/sc;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
