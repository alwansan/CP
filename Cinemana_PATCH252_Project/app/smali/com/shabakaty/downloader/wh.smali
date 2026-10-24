.class public final Lcom/shabakaty/downloader/wh;
.super Lcom/shabakaty/downloader/ii4;
.source "AutoValue_SurfaceConfig.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/ii4$b;

.field public final b:Lcom/shabakaty/downloader/ii4$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ii4$b;Lcom/shabakaty/downloader/ii4$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ii4;-><init>()V

    const-string v0, "Null configType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/wh;->a:Lcom/shabakaty/downloader/ii4$b;

    const-string p1, "Null configSize"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/wh;->b:Lcom/shabakaty/downloader/ii4$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/ii4$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh;->b:Lcom/shabakaty/downloader/ii4$a;

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/ii4$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh;->a:Lcom/shabakaty/downloader/ii4$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/ii4;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/ii4;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wh;->a:Lcom/shabakaty/downloader/ii4$b;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ii4;->b()Lcom/shabakaty/downloader/ii4$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/wh;->b:Lcom/shabakaty/downloader/ii4$a;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ii4;->a()Lcom/shabakaty/downloader/ii4$a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh;->a:Lcom/shabakaty/downloader/ii4$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wh;->b:Lcom/shabakaty/downloader/ii4$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SurfaceConfig{configType="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/wh;->a:Lcom/shabakaty/downloader/ii4$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/wh;->b:Lcom/shabakaty/downloader/ii4$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
