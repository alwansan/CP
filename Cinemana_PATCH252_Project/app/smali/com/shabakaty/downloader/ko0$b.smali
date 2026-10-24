.class public Lcom/shabakaty/downloader/ko0$b;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lcom/shabakaty/downloader/ot1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ko0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ko0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ko0;Lcom/shabakaty/downloader/ko0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ko0$b;->r:Lcom/shabakaty/downloader/ko0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko0$b;->r:Lcom/shabakaty/downloader/ko0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ko0;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroid/net/Uri;Lcom/shabakaty/downloader/gj2$c;Z)Z
    .locals 8

    .line 1
    iget-object p3, p0, Lcom/shabakaty/downloader/ko0$b;->r:Lcom/shabakaty/downloader/ko0;

    .line 2
    iget-object p3, p3, Lcom/shabakaty/downloader/ko0;->C:Lcom/shabakaty/downloader/kt1;

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4
    iget-object p3, p0, Lcom/shabakaty/downloader/ko0$b;->r:Lcom/shabakaty/downloader/ko0;

    .line 5
    iget-object p3, p3, Lcom/shabakaty/downloader/ko0;->A:Lcom/shabakaty/downloader/it1;

    .line 6
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    iget-object p3, p3, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/ko0$b;->r:Lcom/shabakaty/downloader/ko0;

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    .line 10
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/it1$b;

    iget-object v6, v6, Lcom/shabakaty/downloader/it1$b;->a:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ko0$c;

    if-eqz v5, :cond_0

    .line 11
    iget-wide v5, v5, Lcom/shabakaty/downloader/ko0$c;->y:J

    cmp-long v7, v1, v5

    if-gez v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p3, Lcom/shabakaty/downloader/gj2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/ko0$b;->r:Lcom/shabakaty/downloader/ko0;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/ko0;->A:Lcom/shabakaty/downloader/it1;

    .line 14
    iget-object v1, v1, Lcom/shabakaty/downloader/it1;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p3, v2, v0, v1, v4}, Lcom/shabakaty/downloader/gj2$a;-><init>(IIII)V

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/ko0$b;->r:Lcom/shabakaty/downloader/ko0;

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/ko0;->t:Lcom/shabakaty/downloader/gj2;

    .line 17
    check-cast v1, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v1, p3, p2}, Lcom/shabakaty/downloader/po0;->a(Lcom/shabakaty/downloader/gj2$a;Lcom/shabakaty/downloader/gj2$c;)Lcom/shabakaty/downloader/gj2$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 18
    iget p3, p2, Lcom/shabakaty/downloader/gj2$b;->a:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 19
    iget-object p3, p0, Lcom/shabakaty/downloader/ko0$b;->r:Lcom/shabakaty/downloader/ko0;

    .line 20
    iget-object p3, p3, Lcom/shabakaty/downloader/ko0;->u:Ljava/util/HashMap;

    .line 21
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ko0$c;

    if-eqz p1, :cond_2

    .line 22
    iget-wide p2, p2, Lcom/shabakaty/downloader/gj2$b;->b:J

    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/ko0$c;->a(Lcom/shabakaty/downloader/ko0$c;J)Z

    :cond_2
    return v0
.end method
