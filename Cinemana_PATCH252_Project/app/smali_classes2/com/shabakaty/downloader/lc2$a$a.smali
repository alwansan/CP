.class public final Lcom/shabakaty/downloader/lc2$a$a;
.super Lcom/shabakaty/downloader/lc2$a;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/lc2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qe2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qe2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/lc2$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/lc2$a$a;->a:Lcom/shabakaty/downloader/qe2;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/lc2$a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/lc2$a$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc2$a$a;->a:Lcom/shabakaty/downloader/qe2;

    iget-object p1, p1, Lcom/shabakaty/downloader/lc2$a$a;->a:Lcom/shabakaty/downloader/qe2;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/lc2$a$a;->a:Lcom/shabakaty/downloader/qe2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LocalClass(type="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/lc2$a$a;->a:Lcom/shabakaty/downloader/qe2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
