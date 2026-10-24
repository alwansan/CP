.class public final Lcom/shabakaty/downloader/ra2;
.super Ljava/lang/Object;
.source "Jsr305Settings.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/tr3;

.field public final b:Lcom/shabakaty/downloader/tr3;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/tr3;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/kf2;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tr3;Lcom/shabakaty/downloader/tr3;Ljava/util/Map;I)V
    .locals 1

    and-int/lit8 p3, p4, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    :cond_1
    const-string p3, "userDefinedLevelForSpecificAnnotation"

    .line 2
    invoke-static {v0, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/ra2;->a:Lcom/shabakaty/downloader/tr3;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/ra2;->b:Lcom/shabakaty/downloader/tr3;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/ra2;->c:Ljava/util/Map;

    .line 7
    new-instance p3, Lcom/shabakaty/downloader/qa2;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/qa2;-><init>(Lcom/shabakaty/downloader/ra2;)V

    invoke-static {p3}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/ra2;->d:Lcom/shabakaty/downloader/kf2;

    .line 8
    sget-object p3, Lcom/shabakaty/downloader/tr3;->s:Lcom/shabakaty/downloader/tr3;

    if-ne p1, p3, :cond_2

    if-ne p2, p3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ra2;->e:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/ra2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/ra2;

    iget-object v1, p0, Lcom/shabakaty/downloader/ra2;->a:Lcom/shabakaty/downloader/tr3;

    iget-object v3, p1, Lcom/shabakaty/downloader/ra2;->a:Lcom/shabakaty/downloader/tr3;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ra2;->b:Lcom/shabakaty/downloader/tr3;

    iget-object v3, p1, Lcom/shabakaty/downloader/ra2;->b:Lcom/shabakaty/downloader/tr3;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/ra2;->c:Ljava/util/Map;

    iget-object p1, p1, Lcom/shabakaty/downloader/ra2;->c:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/ra2;->a:Lcom/shabakaty/downloader/tr3;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/ra2;->b:Lcom/shabakaty/downloader/tr3;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/ra2;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Jsr305Settings(globalLevel="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ra2;->a:Lcom/shabakaty/downloader/tr3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", migrationLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ra2;->b:Lcom/shabakaty/downloader/tr3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userDefinedLevelForSpecificAnnotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ra2;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
