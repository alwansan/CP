.class public final Lcom/shabakaty/downloader/wt0$e;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wt0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:J

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r94;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic u:Lcom/shabakaty/downloader/wt0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wt0;Ljava/lang/String;JLjava/util/List;[J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/r94;",
            ">;[J)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lengths"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wt0$e;->u:Lcom/shabakaty/downloader/wt0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/wt0$e;->r:Ljava/lang/String;

    iput-wide p3, p0, Lcom/shabakaty/downloader/wt0$e;->s:J

    iput-object p5, p0, Lcom/shabakaty/downloader/wt0$e;->t:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0$e;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/r94;

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/ry4;->d(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
