.class public Lcom/shabakaty/downloader/ii2$a;
.super Ljava/lang/Object;
.source "ListFuture.java"

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ii2;-><init>(Ljava/util/List;ZLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ar$c<",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ii2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ii2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ii2$a;->r:Lcom/shabakaty/downloader/ii2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ii2$a;->r:Lcom/shabakaty/downloader/ii2;

    iget-object v0, v0, Lcom/shabakaty/downloader/ii2;->w:Lcom/shabakaty/downloader/ar$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The result can only set once!"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ii2$a;->r:Lcom/shabakaty/downloader/ii2;

    iput-object p1, v0, Lcom/shabakaty/downloader/ii2;->w:Lcom/shabakaty/downloader/ar$a;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ListFuture["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
