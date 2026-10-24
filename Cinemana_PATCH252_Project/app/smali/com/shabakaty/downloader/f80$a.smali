.class public final Lcom/shabakaty/downloader/f80$a;
.super Ljava/lang/Object;
.source "CompletableToSingle.java"

# interfaces
.implements Lcom/shabakaty/downloader/a80;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/y74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/shabakaty/downloader/f80;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/f80;Lcom/shabakaty/downloader/y74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/f80$a;->s:Lcom/shabakaty/downloader/f80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/f80$a;->r:Lcom/shabakaty/downloader/y74;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f80$a;->s:Lcom/shabakaty/downloader/f80;

    iget-object v1, v0, Lcom/shabakaty/downloader/f80;->b:Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/f80$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/f80$a;->r:Lcom/shabakaty/downloader/y74;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The value supplied is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/f80$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f80$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/f80$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    return-void
.end method
