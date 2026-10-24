.class public final Lcom/shabakaty/downloader/r72;
.super Ljava/lang/Object;
.source "JavaNullabilityAnnotationsStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/r72$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/r72$a;

.field public static final e:Lcom/shabakaty/downloader/r72;


# instance fields
.field public final a:Lcom/shabakaty/downloader/tr3;

.field public final b:Lcom/shabakaty/downloader/xe2;

.field public final c:Lcom/shabakaty/downloader/tr3;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/shabakaty/downloader/r72$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/r72$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/r72;->d:Lcom/shabakaty/downloader/r72$a;

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/r72;

    sget-object v2, Lcom/shabakaty/downloader/tr3;->u:Lcom/shabakaty/downloader/tr3;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/shabakaty/downloader/r72;-><init>(Lcom/shabakaty/downloader/tr3;Lcom/shabakaty/downloader/xe2;Lcom/shabakaty/downloader/tr3;I)V

    sput-object v0, Lcom/shabakaty/downloader/r72;->e:Lcom/shabakaty/downloader/r72;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tr3;Lcom/shabakaty/downloader/xe2;Lcom/shabakaty/downloader/tr3;)V
    .locals 1

    const-string v0, "reportLevelBefore"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportLevelAfter"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/r72;->a:Lcom/shabakaty/downloader/tr3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/r72;->b:Lcom/shabakaty/downloader/xe2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/r72;->c:Lcom/shabakaty/downloader/tr3;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tr3;Lcom/shabakaty/downloader/xe2;Lcom/shabakaty/downloader/tr3;I)V
    .locals 2

    and-int/lit8 p2, p4, 0x2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/xe2;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6
    invoke-direct {p2, v0, v1, v1}, Lcom/shabakaty/downloader/xe2;-><init>(III)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, p1

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/r72;-><init>(Lcom/shabakaty/downloader/tr3;Lcom/shabakaty/downloader/xe2;Lcom/shabakaty/downloader/tr3;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/r72;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/r72;

    iget-object v1, p0, Lcom/shabakaty/downloader/r72;->a:Lcom/shabakaty/downloader/tr3;

    iget-object v3, p1, Lcom/shabakaty/downloader/r72;->a:Lcom/shabakaty/downloader/tr3;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/r72;->b:Lcom/shabakaty/downloader/xe2;

    iget-object v3, p1, Lcom/shabakaty/downloader/r72;->b:Lcom/shabakaty/downloader/xe2;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/r72;->c:Lcom/shabakaty/downloader/tr3;

    iget-object p1, p1, Lcom/shabakaty/downloader/r72;->c:Lcom/shabakaty/downloader/tr3;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/r72;->a:Lcom/shabakaty/downloader/tr3;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/r72;->b:Lcom/shabakaty/downloader/xe2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget v1, v1, Lcom/shabakaty/downloader/xe2;->u:I

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/r72;->c:Lcom/shabakaty/downloader/tr3;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "JavaNullabilityAnnotationsStatus(reportLevelBefore="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/r72;->a:Lcom/shabakaty/downloader/tr3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sinceVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/r72;->b:Lcom/shabakaty/downloader/xe2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reportLevelAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/r72;->c:Lcom/shabakaty/downloader/tr3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
