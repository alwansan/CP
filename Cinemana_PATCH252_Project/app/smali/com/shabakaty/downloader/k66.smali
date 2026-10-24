.class public Lcom/shabakaty/downloader/k66;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/k66;->a:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/shabakaty/downloader/k66;->c:I

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/shabakaty/downloader/k66;->c:I

    .line 14
    iput-object p2, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/k66;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    .line 8
    iput p1, p0, Lcom/shabakaty/downloader/k66;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    iput p2, p0, Lcom/shabakaty/downloader/k66;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iput v0, p0, Lcom/shabakaty/downloader/k66;->c:I

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/k66;->c:I

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    return-void
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/de4;->g()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v4, p0, v2

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_0

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_1

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(CC)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->g()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_3

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->b()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    if-eqz v0, :cond_2

    const/16 v8, 0x5c

    if-eq v0, v8, :cond_7

    :cond_2
    const/16 v8, 0x27

    .line 3
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v8

    if-eq v8, p1, :cond_3

    if-nez v2, :cond_3

    xor-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v8, 0x22

    .line 4
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v8

    if-eq v8, p1, :cond_4

    if-nez v3, :cond_4

    xor-int/lit8 v2, v2, 0x1

    :cond_4
    :goto_0
    if-nez v3, :cond_9

    if-eqz v2, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v4, v4, 0x1

    if-ne v5, v1, :cond_7

    .line 6
    iget v5, p0, Lcom/shabakaty/downloader/k66;->c:I

    goto :goto_1

    .line 7
    :cond_6
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v4, v4, -0x1

    :cond_7
    :goto_1
    if-lez v4, :cond_8

    if-eqz v0, :cond_8

    .line 8
    iget v6, p0, Lcom/shabakaty/downloader/k66;->c:I

    .line 9
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v0

    :cond_9
    :goto_2
    if-gtz v4, :cond_0

    :goto_3
    if-ltz v6, :cond_a

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    const-string p1, ""

    :goto_4
    if-gtz v4, :cond_b

    return-object p1

    :cond_b
    const-string p2, "Did not find balanced marker at \'"

    const-string v0, "\'"

    .line 11
    invoke-static {p2, p1, v0}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b()C
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/k66;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->n()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/k66;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shabakaty/downloader/k66;->c:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue not long enough to consume sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue did not match expected sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/k66;->c:I

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->g()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->k()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    new-array v3, v1, [C

    fill-array-data v3, :array_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->g()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    .line 4
    aget-char v6, v3, v4

    .line 5
    iget-object v7, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v8, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    .line 6
    :cond_3
    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    goto :goto_0

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v2, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->g()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v4, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/shabakaty/downloader/de4;->d(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/k66;->c:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/shabakaty/downloader/k66;->c:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->n()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/k66;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/k66;->c:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v2, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public varargs j([Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/k66;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public k()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k66;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xd800

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    and-int/lit16 v0, v0, 0x1fff

    const/16 v2, 0xd

    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v4, p0, Lcom/shabakaty/downloader/k66;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v1, :cond_1

    and-int/lit16 v3, v3, 0x1fff

    shl-int/2addr v3, v2

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0xd

    goto :goto_0

    :cond_1
    shl-int v1, v3, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    return-object v0
.end method

.method public n()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/k66;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/shabakaty/downloader/k66;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
