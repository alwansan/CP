.class public abstract Lcom/shabakaty/downloader/b74;
.super Lcom/shabakaty/downloader/qw4;
.source "KotlinType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/d74;
.implements Lcom/shabakaty/downloader/ns4;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/qw4;-><init>(Lcom/shabakaty/downloader/nn0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic X0(Z)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1
.end method

.method public abstract a1(Z)Lcom/shabakaty/downloader/b74;
.end method

.method public abstract b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/r8;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "["

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 3
    sget-object v5, Lcom/shabakaty/downloader/wq0;->b:Lcom/shabakaty/downloader/wq0;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v5, v1, v7, v8, v7}, Lcom/shabakaty/downloader/wq0;->r(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/r8;Lcom/shabakaty/downloader/z8;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "] "

    aput-object v1, v4, v8

    const-string v1, "<this>"

    .line 4
    invoke-static {v9, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge v6, v3, :cond_0

    .line 5
    aget-object v1, v4, v6

    add-int/lit8 v6, v6, 0x1

    .line 6
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const-string v2, ", "

    const-string v3, "<"

    const-string v4, ">"

    move-object v1, v9

    invoke-static/range {v0 .. v8}, Lcom/shabakaty/downloader/m50;->e0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/Appendable;

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
