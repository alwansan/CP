.class public final Lcom/shabakaty/downloader/pg4;
.super Ljava/lang/Object;
.source "SettingsEntity.kt"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lcom/shabakaty/downloader/fg4;

.field public final e:Lcom/shabakaty/downloader/hg4;

.field public final f:Lcom/shabakaty/downloader/gg4;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/pg4;-><init>(IIILcom/shabakaty/downloader/fg4;Lcom/shabakaty/downloader/hg4;Lcom/shabakaty/downloader/gg4;I)V

    return-void
.end method

.method public constructor <init>(IIILcom/shabakaty/downloader/fg4;Lcom/shabakaty/downloader/hg4;Lcom/shabakaty/downloader/gg4;)V
    .locals 1

    const-string v0, "subtitleEdge"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleFontScale"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleFontFamily"

    invoke-static {p6, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/pg4;->a:I

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/pg4;->b:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/pg4;->c:I

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/pg4;->e:Lcom/shabakaty/downloader/hg4;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    return-void
.end method

.method public constructor <init>(IIILcom/shabakaty/downloader/fg4;Lcom/shabakaty/downloader/hg4;Lcom/shabakaty/downloader/gg4;I)V
    .locals 7

    and-int/lit8 p4, p7, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    .line 8
    sget p2, Lcom/shabakaty/downloader/y24;->a:I

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move v3, p3

    :goto_1
    and-int/lit8 p1, p7, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/fg4$b;->c:Lcom/shabakaty/downloader/fg4$b;

    move-object v4, p1

    goto :goto_2

    :cond_3
    move-object v4, p2

    :goto_2
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/hg4$e;->c:Lcom/shabakaty/downloader/hg4$e;

    move-object v5, p1

    goto :goto_3

    :cond_4
    move-object v5, p2

    :goto_3
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/gg4$c;->e:Lcom/shabakaty/downloader/gg4$c;

    move-object v6, p1

    goto :goto_4

    :cond_5
    move-object v6, p2

    :goto_4
    move-object v0, p0

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/pg4;-><init>(IIILcom/shabakaty/downloader/fg4;Lcom/shabakaty/downloader/hg4;Lcom/shabakaty/downloader/gg4;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/pg4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/pg4;

    iget v1, p0, Lcom/shabakaty/downloader/pg4;->a:I

    iget v3, p1, Lcom/shabakaty/downloader/pg4;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/pg4;->b:I

    iget v3, p1, Lcom/shabakaty/downloader/pg4;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/pg4;->c:I

    iget v3, p1, Lcom/shabakaty/downloader/pg4;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    iget-object v3, p1, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/pg4;->e:Lcom/shabakaty/downloader/hg4;

    iget-object v3, p1, Lcom/shabakaty/downloader/pg4;->e:Lcom/shabakaty/downloader/hg4;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    iget-object p1, p1, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/pg4;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shabakaty/downloader/pg4;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shabakaty/downloader/pg4;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/downloader/pg4;->e:Lcom/shabakaty/downloader/hg4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SubtitlesSettingsEntity(subtitleColor="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/downloader/pg4;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleEdgeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/pg4;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/pg4;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/pg4;->d:Lcom/shabakaty/downloader/fg4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleFontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/pg4;->e:Lcom/shabakaty/downloader/hg4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleFontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/pg4;->f:Lcom/shabakaty/downloader/gg4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
