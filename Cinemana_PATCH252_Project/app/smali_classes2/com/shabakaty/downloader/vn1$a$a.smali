.class public final Lcom/shabakaty/downloader/vn1$a$a;
.super Ljava/lang/Object;
.source "FunctionClassKind.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/vn1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/vn1;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vn1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vn1$a$a;->a:Lcom/shabakaty/downloader/vn1;

    iput p2, p0, Lcom/shabakaty/downloader/vn1$a$a;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/vn1$a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/vn1$a$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/vn1$a$a;->a:Lcom/shabakaty/downloader/vn1;

    iget-object v3, p1, Lcom/shabakaty/downloader/vn1$a$a;->a:Lcom/shabakaty/downloader/vn1;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/vn1$a$a;->b:I

    iget p1, p1, Lcom/shabakaty/downloader/vn1$a$a;->b:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/vn1$a$a;->a:Lcom/shabakaty/downloader/vn1;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shabakaty/downloader/vn1$a$a;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "KindWithArity(kind="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/vn1$a$a;->a:Lcom/shabakaty/downloader/vn1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", arity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/vn1$a$a;->b:I

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/q12;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
