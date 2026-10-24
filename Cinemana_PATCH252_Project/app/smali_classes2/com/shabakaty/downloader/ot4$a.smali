.class public final Lcom/shabakaty/downloader/ot4$a;
.super Ljava/lang/Object;
.source "TypeParameterUpperBoundEraser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ot4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/kt4;

.field public final b:Z

.field public final c:Lcom/shabakaty/downloader/i82;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/i82;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ot4$a;->a:Lcom/shabakaty/downloader/kt4;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ot4$a;->b:Z

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ot4$a;->c:Lcom/shabakaty/downloader/i82;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ot4$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/ot4$a;

    iget-object v0, p1, Lcom/shabakaty/downloader/ot4$a;->a:Lcom/shabakaty/downloader/kt4;

    iget-object v2, p0, Lcom/shabakaty/downloader/ot4$a;->a:Lcom/shabakaty/downloader/kt4;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p1, Lcom/shabakaty/downloader/ot4$a;->b:Z

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ot4$a;->b:Z

    if-ne v0, v2, :cond_1

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/ot4$a;->c:Lcom/shabakaty/downloader/i82;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/i82;->b:Lcom/shabakaty/downloader/l82;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/ot4$a;->c:Lcom/shabakaty/downloader/i82;

    .line 7
    iget-object v3, v2, Lcom/shabakaty/downloader/i82;->b:Lcom/shabakaty/downloader/l82;

    if-ne v0, v3, :cond_1

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/i82;->a:Lcom/shabakaty/downloader/du4;

    iget-object v3, v2, Lcom/shabakaty/downloader/i82;->a:Lcom/shabakaty/downloader/du4;

    if-ne v0, v3, :cond_1

    .line 9
    iget-boolean v0, p1, Lcom/shabakaty/downloader/i82;->c:Z

    iget-boolean v3, v2, Lcom/shabakaty/downloader/i82;->c:Z

    if-ne v0, v3, :cond_1

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/i82;->e:Lcom/shabakaty/downloader/b74;

    iget-object v0, v2, Lcom/shabakaty/downloader/i82;->e:Lcom/shabakaty/downloader/b74;

    .line 11
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ot4$a;->a:Lcom/shabakaty/downloader/kt4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    .line 2
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ot4$a;->b:Z

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x1f

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ot4$a;->c:Lcom/shabakaty/downloader/i82;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/i82;->b:Lcom/shabakaty/downloader/l82;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    mul-int/lit8 v0, v2, 0x1f

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/ot4$a;->c:Lcom/shabakaty/downloader/i82;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/i82;->a:Lcom/shabakaty/downloader/du4;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/ot4$a;->c:Lcom/shabakaty/downloader/i82;

    .line 10
    iget-boolean v3, v2, Lcom/shabakaty/downloader/i82;->c:Z

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/i82;->e:Lcom/shabakaty/downloader/b74;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qe2;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DataToEraseUpperBound(typeParameter="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ot4$a;->a:Lcom/shabakaty/downloader/kt4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/ot4$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", typeAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ot4$a;->c:Lcom/shabakaty/downloader/i82;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
