.class public final Lcom/shabakaty/downloader/ir3;
.super Lcom/shabakaty/downloader/rl;
.source "CancellableContinuation.kt"


# instance fields
.field public final r:Lcom/shabakaty/downloader/ck2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ck2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rl;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ir3;->r:Lcom/shabakaty/downloader/ck2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ir3;->r:Lcom/shabakaty/downloader/ck2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->t()Z

    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ir3;->r:Lcom/shabakaty/downloader/ck2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ck2;->t()Z

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RemoveOnCancel["

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ir3;->r:Lcom/shabakaty/downloader/ck2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
