.class public final Lcom/shabakaty/downloader/k41;
.super Ljava/lang/Object;
.source "EpomParameters.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/ny2$b;

.field public final b:Lcom/shabakaty/downloader/ny2$a;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ny2$b;Lcom/shabakaty/downloader/ny2$a;Z)V
    .locals 1

    const-string v0, "links"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "durations"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k41;->a:Lcom/shabakaty/downloader/ny2$b;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/k41;->b:Lcom/shabakaty/downloader/ny2$a;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/k41;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/k41;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/k41;

    iget-object v1, p0, Lcom/shabakaty/downloader/k41;->a:Lcom/shabakaty/downloader/ny2$b;

    iget-object v3, p1, Lcom/shabakaty/downloader/k41;->a:Lcom/shabakaty/downloader/ny2$b;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/k41;->b:Lcom/shabakaty/downloader/ny2$a;

    iget-object v3, p1, Lcom/shabakaty/downloader/k41;->b:Lcom/shabakaty/downloader/ny2$a;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/shabakaty/downloader/k41;->c:Z

    iget-boolean p1, p1, Lcom/shabakaty/downloader/k41;->c:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/k41;->a:Lcom/shabakaty/downloader/ny2$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ny2$b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/k41;->b:Lcom/shabakaty/downloader/ny2$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ny2$a;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/shabakaty/downloader/k41;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "EpomParameters(links="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/k41;->a:Lcom/shabakaty/downloader/ny2$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/k41;->b:Lcom/shabakaty/downloader/ny2$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/k41;->c:Z

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xh2;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
