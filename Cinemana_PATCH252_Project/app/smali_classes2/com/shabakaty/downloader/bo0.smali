.class public Lcom/shabakaty/downloader/bo0;
.super Ljava/lang/Object;
.source "DefaultExtension.java"

# interfaces
.implements Lcom/shabakaty/downloader/yw1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/yw1;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bo0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bo0;-><init>()V

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/rl1;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public e(Lcom/shabakaty/downloader/rl1;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/sl1;

    .line 2
    iget-boolean v0, p1, Lcom/shabakaty/downloader/sl1;->e:Z

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p1, Lcom/shabakaty/downloader/sl1;->f:Z

    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p1, Lcom/shabakaty/downloader/sl1;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/m32;

    const-string v1, "bad rsv RSV1: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-boolean v2, p1, Lcom/shabakaty/downloader/sl1;->e:Z

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " RSV2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-boolean v2, p1, Lcom/shabakaty/downloader/sl1;->f:Z

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " RSV3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-boolean p1, p1, Lcom/shabakaty/downloader/sl1;->g:Z

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/m32;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lcom/shabakaty/downloader/bo0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public g(Lcom/shabakaty/downloader/rl1;)V
    .locals 0

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/bo0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/bo0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
