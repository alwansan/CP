.class public final Lcom/shabakaty/downloader/dz;
.super Lcom/shabakaty/downloader/t22;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/t22<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/t22;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "module"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/sf3;->x:Lcom/shabakaty/downloader/sf3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zd2;->u(Lcom/shabakaty/downloader/sf3;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0x3e

    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 2
    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 4
    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    const-string v2, "\\b"

    goto :goto_0

    :cond_0
    const/16 v4, 0x9

    if-ne v2, v4, :cond_1

    const-string v2, "\\t"

    goto :goto_0

    :cond_1
    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    const-string v2, "\\n"

    goto :goto_0

    :cond_2
    const/16 v4, 0xc

    if-ne v2, v4, :cond_3

    const-string v2, "\\f"

    goto :goto_0

    :cond_3
    const/16 v4, 0xd

    if-ne v2, v4, :cond_4

    const-string v2, "\\r"

    goto :goto_0

    .line 5
    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v6

    int-to-byte v6, v6

    if-eqz v6, :cond_5

    if-eq v6, v4, :cond_5

    const/16 v4, 0xe

    if-eq v6, v4, :cond_5

    const/16 v4, 0xf

    if-eq v6, v4, :cond_5

    const/16 v4, 0x10

    if-eq v6, v4, :cond_5

    const/16 v4, 0x12

    if-eq v6, v4, :cond_5

    const/16 v4, 0x13

    if-eq v6, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string v2, "?"

    :goto_0
    aput-object v2, v1, v5

    .line 7
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\\u%04X (\'%s\')"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(this, *args)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
