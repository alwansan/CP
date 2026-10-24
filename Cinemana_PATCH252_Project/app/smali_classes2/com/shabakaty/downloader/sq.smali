.class public final Lcom/shabakaty/downloader/sq;
.super Ljava/lang/Object;
.source "CallableId.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/fi1;

.field public final b:Lcom/shabakaty/downloader/fi1;

.field public final c:Lcom/shabakaty/downloader/hw2;

.field public final d:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ca4;->g:Lcom/shabakaty/downloader/hw2;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/fi1;->k(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/fi1;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sq;->a:Lcom/shabakaty/downloader/fi1;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/sq;->b:Lcom/shabakaty/downloader/fi1;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/sq;->c:Lcom/shabakaty/downloader/hw2;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/sq;->d:Lcom/shabakaty/downloader/fi1;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/sq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/sq;

    iget-object v1, p0, Lcom/shabakaty/downloader/sq;->a:Lcom/shabakaty/downloader/fi1;

    iget-object v3, p1, Lcom/shabakaty/downloader/sq;->a:Lcom/shabakaty/downloader/fi1;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/sq;->b:Lcom/shabakaty/downloader/fi1;

    iget-object v3, p1, Lcom/shabakaty/downloader/sq;->b:Lcom/shabakaty/downloader/fi1;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/sq;->c:Lcom/shabakaty/downloader/hw2;

    iget-object v3, p1, Lcom/shabakaty/downloader/sq;->c:Lcom/shabakaty/downloader/hw2;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/sq;->d:Lcom/shabakaty/downloader/fi1;

    iget-object p1, p1, Lcom/shabakaty/downloader/sq;->d:Lcom/shabakaty/downloader/fi1;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/sq;->a:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/sq;->b:Lcom/shabakaty/downloader/fi1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/sq;->c:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/hw2;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/downloader/sq;->d:Lcom/shabakaty/downloader/fi1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/sq;->a:Lcom/shabakaty/downloader/fi1;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName.asString()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/sq;->b:Lcom/shabakaty/downloader/fi1;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sq;->c:Lcom/shabakaty/downloader/hw2;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
