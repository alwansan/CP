.class public final Lcom/shabakaty/downloader/l92$a;
.super Lcom/shabakaty/downloader/gv;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/l92;
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
        "Lcom/shabakaty/downloader/gv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final y:Lcom/shabakaty/downloader/l92;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/l92;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/l92;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/l92$a;->y:Lcom/shabakaty/downloader/l92;

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method

.method public w(Lcom/shabakaty/downloader/e92;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l92$a;->y:Lcom/shabakaty/downloader/l92;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/l92;->T()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/l92$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/l92$c;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/l92$c;->d()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    instance-of v1, v0, Lcom/shabakaty/downloader/i80;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/i80;

    iget-object p1, v0, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    return-object p1

    .line 4
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/l92;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/l92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method
