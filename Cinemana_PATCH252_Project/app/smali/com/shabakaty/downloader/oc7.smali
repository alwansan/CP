.class public abstract Lcom/shabakaty/downloader/oc7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/shabakaty/downloader/zk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/zk4<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/oc7;->b:Lcom/shabakaty/downloader/zk4;

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/oc7;->a:I

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/oc7;->c:I

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/oc7;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public final b(Lcom/shabakaty/downloader/ga7;)V
    .locals 6

    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    const-string v3, "Failing "

    const-string v5, " with "

    invoke-static {v4, v3, v1, v5, v2}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/oc7;->b:Lcom/shabakaty/downloader/zk4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    const-string v3, "Finishing "

    const-string v5, " with "

    invoke-static {v4, v3, v1, v5, v2}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/oc7;->b:Lcom/shabakaty/downloader/zk4;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract d()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oc7;->c:I

    iget v1, p0, Lcom/shabakaty/downloader/oc7;->a:I

    invoke-virtual {p0}, Lcom/shabakaty/downloader/oc7;->d()Z

    move-result v2

    const/16 v3, 0x37

    const-string v4, "Request { what="

    const-string v5, " id="

    invoke-static {v3, v4, v0, v5, v1}, Lcom/shabakaty/downloader/pe;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oneWay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
