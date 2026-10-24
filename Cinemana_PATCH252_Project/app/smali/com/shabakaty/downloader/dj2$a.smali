.class public final Lcom/shabakaty/downloader/dj2$a;
.super Ljava/lang/Object;
.source "LiveDataObservable.java"

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dj2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/r53<",
        "Lcom/shabakaty/downloader/dj2$b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Lcom/shabakaty/downloader/s43$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/s43$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/s43$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/shabakaty/downloader/s43$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/dj2$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/dj2$a;->c:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/dj2$a;->b:Lcom/shabakaty/downloader/s43$a;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/dj2$b;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dj2$a;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/cj2;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/cj2;-><init>(Lcom/shabakaty/downloader/dj2$a;Lcom/shabakaty/downloader/dj2$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
