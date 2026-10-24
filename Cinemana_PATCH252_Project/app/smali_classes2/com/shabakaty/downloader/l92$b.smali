.class public final Lcom/shabakaty/downloader/l92$b;
.super Lcom/shabakaty/downloader/k92;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/l92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/downloader/l92;

.field public final w:Lcom/shabakaty/downloader/l92$c;

.field public final x:Lcom/shabakaty/downloader/rz;

.field public final y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l92;Lcom/shabakaty/downloader/l92$c;Lcom/shabakaty/downloader/rz;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/k92;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l92$b;->v:Lcom/shabakaty/downloader/l92;

    iput-object p2, p0, Lcom/shabakaty/downloader/l92$b;->w:Lcom/shabakaty/downloader/l92$c;

    iput-object p3, p0, Lcom/shabakaty/downloader/l92$b;->x:Lcom/shabakaty/downloader/rz;

    iput-object p4, p0, Lcom/shabakaty/downloader/l92$b;->y:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92$b;->w(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/l92$b;->v:Lcom/shabakaty/downloader/l92;

    iget-object v0, p0, Lcom/shabakaty/downloader/l92$b;->w:Lcom/shabakaty/downloader/l92$c;

    iget-object v1, p0, Lcom/shabakaty/downloader/l92$b;->x:Lcom/shabakaty/downloader/rz;

    iget-object v2, p0, Lcom/shabakaty/downloader/l92$b;->y:Ljava/lang/Object;

    sget-object v3, Lcom/shabakaty/downloader/l92;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/l92;->b0(Lcom/shabakaty/downloader/ck2;)Lcom/shabakaty/downloader/rz;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/shabakaty/downloader/l92;->l0(Lcom/shabakaty/downloader/l92$c;Lcom/shabakaty/downloader/rz;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/l92;->O(Lcom/shabakaty/downloader/l92$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/l92;->C(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
