.class public Lcom/shabakaty/downloader/je4;
.super Lcom/shabakaty/downloader/bp;
.source "Indent.kt"


# direct methods
.method public static final w(Ljava/lang/String;)Lcom/shabakaty/downloader/tm1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p0, Lcom/shabakaty/downloader/je4$a;->r:Lcom/shabakaty/downloader/je4$a;

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/je4$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/je4$b;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 13

    and-int/lit8 p1, p2, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string p1, "|"

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const-string v0, "<this>"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginPrefix"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/re4;->X(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    mul-int/lit8 v1, v1, 0x0

    add-int/2addr v1, p0

    const-string p0, ""

    invoke-static {p0}, Lcom/shabakaty/downloader/je4;->w(Ljava/lang/String;)Lcom/shabakaty/downloader/tm1;

    move-result-object p0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->h(Ljava/util/List;)I

    move-result v3

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_9

    .line 8
    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_1

    if-ne v5, v3, :cond_2

    .line 9
    :cond_1
    invoke-static {v6}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v6, p2

    goto :goto_6

    .line 10
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x0

    :goto_2
    const/4 v9, -0x1

    if-ge v8, v5, :cond_4

    add-int/lit8 v10, v8, 0x1

    .line 11
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 12
    invoke-static {v11}, Lcom/shabakaty/downloader/z02;->r(C)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    move v8, v10

    goto :goto_2

    :cond_4
    const/4 v8, -0x1

    :goto_3
    if-ne v8, v9, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x4

    .line 13
    invoke-static {v6, p1, v8, v2, v5}, Lcom/shabakaty/downloader/ne4;->K(Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object v5, p2

    :goto_5
    if-nez v5, :cond_7

    goto :goto_6

    .line 14
    :cond_7
    invoke-interface {p0, v5}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    :goto_6
    if-nez v6, :cond_8

    goto :goto_7

    .line 15
    :cond_8
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move v5, v7

    goto :goto_1

    .line 16
    :cond_9
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw p2

    .line 17
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7c

    const-string v6, "\n"

    move-object v5, p0

    invoke-static/range {v4 .. v12}, Lcom/shabakaty/downloader/m50;->e0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/Appendable;

    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 19
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "marginPrefix must be non-blank string."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
