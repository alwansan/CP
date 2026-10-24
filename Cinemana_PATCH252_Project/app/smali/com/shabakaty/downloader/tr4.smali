.class public final Lcom/shabakaty/downloader/tr4;
.super Lcom/shabakaty/downloader/z64;
.source "Tx3gDecoder.java"


# instance fields
.field public final n:Lcom/shabakaty/downloader/ka3;

.field public final o:Z

.field public final p:I

.field public final q:I

.field public final r:Ljava/lang/String;

.field public final s:F

.field public final t:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "Tx3gDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/z64;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    .line 4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    .line 5
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    .line 6
    aget-byte v5, p1, v0

    iput v5, p0, Lcom/shabakaty/downloader/tr4;->p:I

    const/16 v5, 0x1a

    .line 7
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Lcom/shabakaty/downloader/tr4;->q:I

    .line 8
    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    .line 9
    invoke-static {p1, v5, v0}, Lcom/shabakaty/downloader/sy4;->p([BII)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Serif"

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "serif"

    :cond_1
    iput-object v2, p0, Lcom/shabakaty/downloader/tr4;->r:Ljava/lang/String;

    const/16 v0, 0x19

    .line 11
    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/shabakaty/downloader/tr4;->t:I

    .line 12
    aget-byte v2, p1, v4

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/shabakaty/downloader/tr4;->o:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    .line 13
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    .line 14
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/sy4;->h(FFF)F

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/tr4;->s:F

    goto :goto_1

    .line 15
    :cond_3
    iput v1, p0, Lcom/shabakaty/downloader/tr4;->s:F

    goto :goto_1

    .line 16
    :cond_4
    iput v4, p0, Lcom/shabakaty/downloader/tr4;->p:I

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/shabakaty/downloader/tr4;->q:I

    .line 18
    iput-object v2, p0, Lcom/shabakaty/downloader/tr4;->r:Ljava/lang/String;

    .line 19
    iput-boolean v4, p0, Lcom/shabakaty/downloader/tr4;->o:Z

    .line 20
    iput v1, p0, Lcom/shabakaty/downloader/tr4;->s:F

    .line 21
    iput p1, p0, Lcom/shabakaty/downloader/tr4;->t:I

    :goto_1
    return-void
.end method

.method public static l(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/dg4;

    const-string v0, "Unexpected subtitle format."

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/dg4;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    .line 1
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 2
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 3
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 4
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 5
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method


# virtual methods
.method public k([BIZ)Lcom/shabakaty/downloader/bg4;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    move/from16 v2, p2

    .line 3
    iput v2, v1, Lcom/shabakaty/downloader/ka3;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/shabakaty/downloader/tr4;->l(Z)V

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v3

    const/16 v6, 0x8

    if-nez v3, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v7

    if-lt v7, v4, :cond_3

    .line 8
    iget-object v7, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v8, v1, Lcom/shabakaty/downloader/ka3;->b:I

    aget-byte v9, v7, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v6

    add-int/2addr v8, v5

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    int-to-char v7, v7

    const v8, 0xfeff

    if-eq v7, v8, :cond_2

    const v8, 0xfffe

    if-ne v7, v8, :cond_3

    .line 9
    :cond_2
    sget-object v7, Lcom/shabakaty/downloader/iz;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3, v7}, Lcom/shabakaty/downloader/ka3;->r(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_3
    sget-object v7, Lcom/shabakaty/downloader/iz;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3, v7}, Lcom/shabakaty/downloader/ka3;->r(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/ur4;->s:Lcom/shabakaty/downloader/ur4;

    return-object v1

    .line 13
    :cond_4
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    iget v8, v0, Lcom/shabakaty/downloader/tr4;->p:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 15
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/high16 v12, 0xff0000

    move-object v7, v15

    .line 16
    invoke-static/range {v7 .. v12}, Lcom/shabakaty/downloader/tr4;->m(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 17
    iget v1, v0, Lcom/shabakaty/downloader/tr4;->q:I

    const/4 v3, -0x1

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const v8, 0xff0021

    if-eq v1, v3, :cond_5

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x18

    ushr-int/2addr v1, v6

    or-int/2addr v1, v3

    .line 18
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v15, v3, v2, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 19
    :cond_5
    iget-object v1, v0, Lcom/shabakaty/downloader/tr4;->r:Ljava/lang/String;

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-string v7, "sans-serif"

    if-eq v1, v7, :cond_6

    .line 20
    new-instance v7, Landroid/text/style/TypefaceSpan;

    invoke-direct {v7, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 21
    :cond_6
    iget v1, v0, Lcom/shabakaty/downloader/tr4;->s:F

    .line 22
    :goto_2
    iget-object v2, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    if-lt v2, v6, :cond_f

    .line 23
    iget-object v2, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    .line 24
    iget v8, v2, Lcom/shabakaty/downloader/ka3;->b:I

    .line 25
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v9

    .line 26
    iget-object v2, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v2

    const v3, 0x7374796c

    if-ne v2, v3, :cond_c

    .line 27
    iget-object v2, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    if-lt v2, v4, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lcom/shabakaty/downloader/tr4;->l(Z)V

    .line 28
    iget-object v2, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v10

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_e

    .line 29
    iget-object v2, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v3

    const/16 v6, 0xc

    if-lt v3, v6, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Lcom/shabakaty/downloader/tr4;->l(Z)V

    .line 31
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v12

    .line 32
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v3

    .line 33
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 34
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    .line 35
    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 36
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v13

    .line 37
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v5, ")."

    const-string v6, "Tx3gDecoder"

    if-le v3, v2, :cond_9

    .line 38
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v7, 0x44

    const-string v14, "Truncating styl end ("

    move/from16 p1, v10

    const-string v10, ") to cueText.length() ("

    invoke-static {v7, v14, v3, v10, v2}, Lcom/shabakaty/downloader/pe;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_6

    :cond_9
    move/from16 p1, v10

    :goto_6
    move v10, v3

    if-lt v12, v10, :cond_a

    const/16 v2, 0x3c

    const-string v3, "Ignoring styl with start ("

    const-string v4, ") >= end ("

    .line 41
    invoke-static {v2, v3, v12, v4, v10}, Lcom/shabakaty/downloader/pe;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 43
    :cond_a
    iget v5, v0, Lcom/shabakaty/downloader/tr4;->p:I

    const/4 v7, 0x0

    move-object v2, v15

    move v3, v4

    move v4, v5

    move v5, v12

    move v6, v10

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/tr4;->m(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 44
    iget v2, v0, Lcom/shabakaty/downloader/tr4;->q:I

    if-eq v13, v2, :cond_b

    and-int/lit16 v2, v13, 0xff

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v3, v13, 0x8

    or-int/2addr v2, v3

    .line 45
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-virtual {v15, v3, v12, v10, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    :goto_7
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move/from16 v10, p1

    goto/16 :goto_4

    :cond_c
    const v3, 0x74626f78

    if-ne v2, v3, :cond_e

    .line 46
    iget-boolean v2, v0, Lcom/shabakaty/downloader/tr4;->o:Z

    if-eqz v2, :cond_e

    .line 47
    iget-object v1, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lcom/shabakaty/downloader/tr4;->l(Z)V

    .line 48
    iget-object v1, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v1

    int-to-float v1, v1

    .line 49
    iget v2, v0, Lcom/shabakaty/downloader/tr4;->t:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const v3, 0x3f733333    # 0.95f

    .line 50
    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/sy4;->h(FFF)F

    move-result v1

    .line 51
    :cond_e
    iget-object v2, v0, Lcom/shabakaty/downloader/tr4;->n:Lcom/shabakaty/downloader/ka3;

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x8

    goto/16 :goto_2

    .line 52
    :cond_f
    new-instance v7, Lcom/shabakaty/downloader/ur4;

    const/16 v19, 0x0

    const/4 v5, 0x0

    move-object v4, v5

    move-object v6, v5

    const v10, -0x800001

    move v13, v10

    move v14, v10

    move-object v3, v15

    move v15, v10

    const/high16 v18, -0x80000000

    move/from16 v11, v18

    move/from16 v12, v18

    const/16 v16, 0x0

    const/high16 v17, -0x1000000

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 53
    new-instance v2, Lcom/shabakaty/downloader/vg0;

    move-object/from16 p1, v2

    const/16 v20, 0x0

    move-object v0, v7

    move v7, v1

    invoke-direct/range {v2 .. v20}, Lcom/shabakaty/downloader/vg0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/shabakaty/downloader/vg0$a;)V

    move-object/from16 v1, p1

    .line 54
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ur4;-><init>(Lcom/shabakaty/downloader/vg0;)V

    return-object v0
.end method
