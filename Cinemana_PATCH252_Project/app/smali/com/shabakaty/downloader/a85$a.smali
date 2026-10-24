.class public abstract Lcom/shabakaty/downloader/a85$a;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/a85;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/shabakaty/downloader/a85$a<",
        "**>;W:",
        "Lcom/shabakaty/downloader/a85;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Lcom/shabakaty/downloader/d85;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/a85$a;->c:Ljava/util/Set;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/a85$a;->a:Ljava/util/UUID;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/d85;

    iget-object v1, p0, Lcom/shabakaty/downloader/a85$a;->a:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/d85;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/a85$a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a85$a;->c()Lcom/shabakaty/downloader/a85$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/a85;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a85$a;->b()Lcom/shabakaty/downloader/a85;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/a85$a;->a:Ljava/util/UUID;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/d85;

    iget-object v2, p0, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/d85;-><init>(Lcom/shabakaty/downloader/d85;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/a85$a;->a:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract b()Lcom/shabakaty/downloader/a85;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public abstract c()Lcom/shabakaty/downloader/a85$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a85$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/shabakaty/downloader/d85;->g:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    iget-wide p1, p1, Lcom/shabakaty/downloader/d85;->g:J

    cmp-long p3, v0, p1

    if-lez p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a85$a;->c()Lcom/shabakaty/downloader/a85$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
