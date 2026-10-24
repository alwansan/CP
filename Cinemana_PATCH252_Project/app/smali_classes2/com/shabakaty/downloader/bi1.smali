.class public abstract Lcom/shabakaty/downloader/bi1;
.super Ljava/lang/Object;
.source "ForwardingSink.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l84;


# instance fields
.field public final r:Lcom/shabakaty/downloader/l84;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l84;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/bi1;->r:Lcom/shabakaty/downloader/l84;

    return-void
.end method


# virtual methods
.method public b0(Lcom/shabakaty/downloader/zn;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bi1;->r:Lcom/shabakaty/downloader/l84;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/l84;->b0(Lcom/shabakaty/downloader/zn;J)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bi1;->r:Lcom/shabakaty/downloader/l84;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l84;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bi1;->r:Lcom/shabakaty/downloader/l84;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l84;->flush()V

    return-void
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bi1;->r:Lcom/shabakaty/downloader/l84;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l84;->l()Lcom/shabakaty/downloader/on4;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/bi1;->r:Lcom/shabakaty/downloader/l84;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
