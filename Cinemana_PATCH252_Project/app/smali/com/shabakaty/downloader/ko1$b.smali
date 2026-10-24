.class public Lcom/shabakaty/downloader/ko1$b;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ko1;->f(ZLcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/rn1;Lcom/shabakaty/downloader/ar$a;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ho1<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ar$a;

.field public final synthetic b:Lcom/shabakaty/downloader/rn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ar$a;Lcom/shabakaty/downloader/rn1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ko1$b;->a:Lcom/shabakaty/downloader/ar$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/ko1$b;->b:Lcom/shabakaty/downloader/rn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ko1$b;->a:Lcom/shabakaty/downloader/ar$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ko1$b;->a:Lcom/shabakaty/downloader/ar$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/ko1$b;->b:Lcom/shabakaty/downloader/rn1;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/rn1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ko1$b;->a:Lcom/shabakaty/downloader/ar$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
