.class public Lcom/shabakaty/downloader/ar1;
.super Ljava/lang/Object;
.source "Grouping.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/ec0;ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)Lcom/shabakaty/downloader/p65;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ec0;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/p65;",
            ">;",
            "Lcom/shabakaty/downloader/p65;",
            ")",
            "Lcom/shabakaty/downloader/p65;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ec0;->o0:I

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ec0;->p0:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    .line 3
    iget v3, p3, Lcom/shabakaty/downloader/p65;->b:I

    if-eq v0, v3, :cond_4

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 5
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/p65;

    .line 6
    iget v5, v4, Lcom/shabakaty/downloader/p65;->b:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p3, p1, v4}, Lcom/shabakaty/downloader/p65;->d(ILcom/shabakaty/downloader/p65;)V

    .line 8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    .line 9
    instance-of v3, p0, Lcom/shabakaty/downloader/bt1;

    if-eqz v3, :cond_a

    .line 10
    move-object v3, p0

    check-cast v3, Lcom/shabakaty/downloader/bt1;

    const/4 v4, 0x0

    .line 11
    :goto_3
    iget v5, v3, Lcom/shabakaty/downloader/bt1;->r0:I

    if-ge v4, v5, :cond_8

    .line 12
    iget-object v5, v3, Lcom/shabakaty/downloader/bt1;->q0:[Lcom/shabakaty/downloader/ec0;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    .line 13
    iget v6, v5, Lcom/shabakaty/downloader/ec0;->o0:I

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    .line 14
    iget v6, v5, Lcom/shabakaty/downloader/ec0;->p0:I

    if-eq v6, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, -0x1

    :goto_4
    if-eq v6, v2, :cond_a

    const/4 v2, 0x0

    .line 15
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 16
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/p65;

    .line 17
    iget v4, v3, Lcom/shabakaty/downloader/p65;->b:I

    if-ne v4, v6, :cond_9

    move-object p3, v3

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    .line 18
    new-instance p3, Lcom/shabakaty/downloader/p65;

    invoke-direct {p3, p1}, Lcom/shabakaty/downloader/p65;-><init>(I)V

    .line 19
    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_c
    invoke-virtual {p3, p0}, Lcom/shabakaty/downloader/p65;->a(Lcom/shabakaty/downloader/ec0;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 21
    instance-of v2, p0, Lcom/shabakaty/downloader/pr1;

    if-eqz v2, :cond_e

    .line 22
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/pr1;

    .line 23
    iget-object v3, v2, Lcom/shabakaty/downloader/pr1;->t0:Lcom/shabakaty/downloader/wb0;

    .line 24
    iget v2, v2, Lcom/shabakaty/downloader/pr1;->u0:I

    if-nez v2, :cond_d

    const/4 v1, 0x1

    .line 25
    :cond_d
    invoke-virtual {v3, v1, p2, p3}, Lcom/shabakaty/downloader/wb0;->c(ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)V

    :cond_e
    if-nez p1, :cond_f

    .line 26
    iget v0, p3, Lcom/shabakaty/downloader/p65;->b:I

    .line 27
    iput v0, p0, Lcom/shabakaty/downloader/ec0;->o0:I

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/ec0;->I:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/wb0;->c(ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)V

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/ec0;->K:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/wb0;->c(ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)V

    goto :goto_7

    .line 30
    :cond_f
    iget v0, p3, Lcom/shabakaty/downloader/p65;->b:I

    .line 31
    iput v0, p0, Lcom/shabakaty/downloader/ec0;->p0:I

    .line 32
    iget-object v0, p0, Lcom/shabakaty/downloader/ec0;->J:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/wb0;->c(ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)V

    .line 33
    iget-object v0, p0, Lcom/shabakaty/downloader/ec0;->M:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/wb0;->c(ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)V

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/ec0;->L:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/wb0;->c(ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)V

    .line 35
    :goto_7
    iget-object p0, p0, Lcom/shabakaty/downloader/ec0;->P:Lcom/shabakaty/downloader/wb0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/wb0;->c(ILjava/util/ArrayList;Lcom/shabakaty/downloader/p65;)V

    :cond_10
    return-object p3
.end method

.method public static b(Ljava/util/ArrayList;I)Lcom/shabakaty/downloader/p65;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/p65;",
            ">;I)",
            "Lcom/shabakaty/downloader/p65;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/p65;

    .line 3
    iget v3, v2, Lcom/shabakaty/downloader/p65;->b:I

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(IIII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p2, v1, :cond_1

    if-eq p2, v3, :cond_1

    if-ne p2, v2, :cond_0

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eq p3, v1, :cond_3

    if-eq p3, v3, :cond_3

    if-ne p3, v2, :cond_2

    if-eq p1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v0

    :cond_5
    :goto_4
    return v1
.end method
