.class public abstract Lcom/shabakaty/downloader/qe2;
.super Ljava/lang/Object;
.source "KotlinType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/h8;
.implements Lcom/shabakaty/downloader/te2;


# instance fields
.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract S0()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract T0()Lcom/shabakaty/downloader/ts4;
.end method

.method public abstract U0()Z
.end method

.method public abstract V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
.end method

.method public abstract W0()Lcom/shabakaty/downloader/qw4;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/qe2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v1

    check-cast p1, Lcom/shabakaty/downloader/qe2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    const-string v2, "a"

    .line 3
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "b"

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v4, Lcom/shabakaty/downloader/q64;->a:Lcom/shabakaty/downloader/q64;

    const-string v5, "context"

    .line 5
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v4, v1, p1}, Lcom/shabakaty/downloader/f1;->b(Lcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/qe2;->r:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v0

    add-int/2addr v0, v1

    .line 6
    :goto_0
    iput v0, p0, Lcom/shabakaty/downloader/qe2;->r:I

    return v0
.end method

.method public abstract s()Lcom/shabakaty/downloader/mr2;
.end method
