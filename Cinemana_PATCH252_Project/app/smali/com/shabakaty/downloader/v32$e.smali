.class public Lcom/shabakaty/downloader/v32$e;
.super Lcom/shabakaty/downloader/v32$c;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/v32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/v32;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/v32$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v32;Lcom/shabakaty/downloader/v32$c;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/v32$c;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/v32$c;-><init>([Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/v32$e;->b:Lcom/shabakaty/downloader/v32;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/v32$e;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v32$e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/v32$c;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/v32$e;->b:Lcom/shabakaty/downloader/v32;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/v32;->d(Lcom/shabakaty/downloader/v32$c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v32$c;->a(Ljava/util/Set;)V

    :goto_0
    return-void
.end method
