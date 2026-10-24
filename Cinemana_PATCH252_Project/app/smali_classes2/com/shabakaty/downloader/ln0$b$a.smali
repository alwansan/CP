.class public Lcom/shabakaty/downloader/ln0$b$a;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/xq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ln0$b;->c0(Lcom/shabakaty/downloader/xq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/xq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/xq;

.field public final synthetic b:Lcom/shabakaty/downloader/ln0$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ln0$b;Lcom/shabakaty/downloader/xq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ln0$b$a;->b:Lcom/shabakaty/downloader/ln0$b;

    iput-object p2, p0, Lcom/shabakaty/downloader/ln0$b$a;->a:Lcom/shabakaty/downloader/xq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nq;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ln0$b$a;->b:Lcom/shabakaty/downloader/ln0$b;

    iget-object p1, p1, Lcom/shabakaty/downloader/ln0$b;->r:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/shabakaty/downloader/ln0$b$a;->a:Lcom/shabakaty/downloader/xq;

    new-instance v1, Lcom/shabakaty/downloader/pr;

    invoke-direct {v1, p0, v0, p2}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/ln0$b$a;Lcom/shabakaty/downloader/xq;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/nq;Lcom/shabakaty/downloader/xs3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "TT;>;",
            "Lcom/shabakaty/downloader/xs3<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ln0$b$a;->b:Lcom/shabakaty/downloader/ln0$b;

    iget-object p1, p1, Lcom/shabakaty/downloader/ln0$b;->r:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/shabakaty/downloader/ln0$b$a;->a:Lcom/shabakaty/downloader/xq;

    new-instance v1, Lcom/shabakaty/downloader/pr;

    invoke-direct {v1, p0, v0, p2}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/ln0$b$a;Lcom/shabakaty/downloader/xq;Lcom/shabakaty/downloader/xs3;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
