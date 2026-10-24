.class public abstract Lcom/shabakaty/downloader/ck2$a;
.super Lcom/shabakaty/downloader/ee;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ck2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ee<",
        "Lcom/shabakaty/downloader/ck2;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/shabakaty/downloader/ck2;

.field public final c:Lcom/shabakaty/downloader/ck2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ck2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ee;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck2$a;->c:Lcom/shabakaty/downloader/ck2;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ck2;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ck2$a;->c:Lcom/shabakaty/downloader/ck2;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ck2$a;->b:Lcom/shabakaty/downloader/ck2;

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ck2;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ck2$a;->c:Lcom/shabakaty/downloader/ck2;

    iget-object p2, p0, Lcom/shabakaty/downloader/ck2$a;->b:Lcom/shabakaty/downloader/ck2;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ck2;->j(Lcom/shabakaty/downloader/ck2;)V

    :cond_2
    return-void
.end method
