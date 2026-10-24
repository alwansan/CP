.class public final Lcom/shabakaty/downloader/tx2;
.super Ljava/lang/Object;
.source "NavigationEvent.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/sy3;

.field public final b:Lcom/shabakaty/downloader/sy3;

.field public final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sy3;Lcom/shabakaty/downloader/sy3;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "currentScreenInfo"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentScreenArgs"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tx2;->a:Lcom/shabakaty/downloader/sy3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tx2;->b:Lcom/shabakaty/downloader/sy3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/tx2;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/tx2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/tx2;

    iget-object v1, p0, Lcom/shabakaty/downloader/tx2;->a:Lcom/shabakaty/downloader/sy3;

    iget-object v3, p1, Lcom/shabakaty/downloader/tx2;->a:Lcom/shabakaty/downloader/sy3;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/tx2;->b:Lcom/shabakaty/downloader/sy3;

    iget-object v3, p1, Lcom/shabakaty/downloader/tx2;->b:Lcom/shabakaty/downloader/sy3;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/tx2;->c:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/shabakaty/downloader/tx2;->c:Landroid/os/Bundle;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/tx2;->a:Lcom/shabakaty/downloader/sy3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sy3;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/tx2;->b:Lcom/shabakaty/downloader/sy3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/sy3;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/downloader/tx2;->c:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "NavigationEvent(previousScreenInfo="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/tx2;->a:Lcom/shabakaty/downloader/sy3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentScreenInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/tx2;->b:Lcom/shabakaty/downloader/sy3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentScreenArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/tx2;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
