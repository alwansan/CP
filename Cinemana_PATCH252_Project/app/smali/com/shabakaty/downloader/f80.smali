.class public final Lcom/shabakaty/downloader/f80;
.super Lcom/shabakaty/downloader/f74;
.source "CompletableToSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/f80$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f74<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/c80;

.field public final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c80;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/c80;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/f80;->a:Lcom/shabakaty/downloader/c80;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/f80;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f80;->a:Lcom/shabakaty/downloader/c80;

    new-instance v1, Lcom/shabakaty/downloader/f80$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/f80$a;-><init>(Lcom/shabakaty/downloader/f80;Lcom/shabakaty/downloader/y74;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/c80;->a(Lcom/shabakaty/downloader/a80;)V

    return-void
.end method
