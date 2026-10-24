.class public final Lcom/shabakaty/downloader/jc4;
.super Lcom/shabakaty/downloader/c1;
.source "StateFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/c1<",
        "Lcom/shabakaty/downloader/hc4<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/shabakaty/downloader/jc4;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/jc4;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/c1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/jc4;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hc4;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/jc4;->_state:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/ic4;->a:Lcom/shabakaty/downloader/j61;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/jc4;->_state:Ljava/lang/Object;

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Object;)[Lcom/shabakaty/downloader/ud0;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hc4;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jc4;->_state:Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/b1;->a:[Lcom/shabakaty/downloader/ud0;

    return-object p1
.end method
