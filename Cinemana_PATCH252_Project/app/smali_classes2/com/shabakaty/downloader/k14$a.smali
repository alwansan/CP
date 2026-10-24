.class public final Lcom/shabakaty/downloader/k14$a;
.super Lcom/shabakaty/downloader/xi0$b;
.source "ServiceInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/k14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final x:Lcom/shabakaty/downloader/k14;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/xi0$b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k14$a;->x:Lcom/shabakaty/downloader/k14;

    return-void
.end method


# virtual methods
.method public k(Lcom/shabakaty/downloader/yi0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/shabakaty/downloader/k14$a;->x:Lcom/shabakaty/downloader/k14;

    .line 3
    iget-boolean p1, p1, Lcom/shabakaty/downloader/k14;->H:Z

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/shabakaty/downloader/k14$a;->x:Lcom/shabakaty/downloader/k14;

    .line 6
    iget-boolean p1, p1, Lcom/shabakaty/downloader/k14;->H:Z

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vi0;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/vi0;->w:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xi0$b;->j(Lcom/shabakaty/downloader/vi0;)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/d92;->o()V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/k14$a;->x:Lcom/shabakaty/downloader/k14;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/k14;->I(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
