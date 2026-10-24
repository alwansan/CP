.class public final Lcom/shabakaty/downloader/e82$a;
.super Ljava/lang/Object;
.source "JavaToKotlinClassMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/e82;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/v20;

.field public final b:Lcom/shabakaty/downloader/v20;

.field public final c:Lcom/shabakaty/downloader/v20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/v20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/e82$a;->a:Lcom/shabakaty/downloader/v20;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/e82$a;->b:Lcom/shabakaty/downloader/v20;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/e82$a;->c:Lcom/shabakaty/downloader/v20;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/e82$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/e82$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/e82$a;->a:Lcom/shabakaty/downloader/v20;

    iget-object v3, p1, Lcom/shabakaty/downloader/e82$a;->a:Lcom/shabakaty/downloader/v20;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/e82$a;->b:Lcom/shabakaty/downloader/v20;

    iget-object v3, p1, Lcom/shabakaty/downloader/e82$a;->b:Lcom/shabakaty/downloader/v20;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/e82$a;->c:Lcom/shabakaty/downloader/v20;

    iget-object p1, p1, Lcom/shabakaty/downloader/e82$a;->c:Lcom/shabakaty/downloader/v20;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/e82$a;->a:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/e82$a;->b:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v20;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/shabakaty/downloader/e82$a;->c:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PlatformMutabilityMapping(javaClass="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/e82$a;->a:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kotlinReadOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/e82$a;->b:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kotlinMutable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/e82$a;->c:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
