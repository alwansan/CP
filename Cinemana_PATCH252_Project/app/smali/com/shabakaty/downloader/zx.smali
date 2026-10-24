.class public final Lcom/shabakaty/downloader/zx;
.super Lcom/shabakaty/downloader/ay;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zx$a;,
        Lcom/shabakaty/downloader/zx$b;,
        Lcom/shabakaty/downloader/zx$c;
    }
.end annotation


# instance fields
.field public final g:Lcom/shabakaty/downloader/ka3;

.field public final h:Lcom/shabakaty/downloader/a55;

.field public i:I

.field public final j:I

.field public final k:[Lcom/shabakaty/downloader/zx$b;

.field public l:Lcom/shabakaty/downloader/zx$b;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vg0;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vg0;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/shabakaty/downloader/zx$c;

.field public p:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ay;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->g:Lcom/shabakaty/downloader/ka3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/a55;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a55;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/zx;->i:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 5
    :cond_0
    iput p1, p0, Lcom/shabakaty/downloader/zx;->j:I

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v1, :cond_1

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    aget-byte p2, p2, p1

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    const/16 p2, 0x8

    new-array v0, p2, [Lcom/shabakaty/downloader/zx$b;

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_3

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    new-instance v2, Lcom/shabakaty/downloader/zx$b;

    invoke-direct {v2}, Lcom/shabakaty/downloader/zx$b;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    return-void
.end method


# virtual methods
.method public f()Lcom/shabakaty/downloader/bg4;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->n:Ljava/util/List;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/by;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/by;-><init>(Ljava/util/List;I)V

    return-object v1
.end method

.method public flush()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ay;->flush()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->m:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->n:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/shabakaty/downloader/zx;->p:I

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zx;->m()V

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->o:Lcom/shabakaty/downloader/zx$c;

    return-void
.end method

.method public g(Lcom/shabakaty/downloader/lg4;)V
    .locals 7

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/zx;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/zx;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_1
    iget-object v4, p0, Lcom/shabakaty/downloader/zx;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    int-to-byte v4, v4

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/zx;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zx;->k()V

    and-int/lit16 v0, v4, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 10
    iget v1, p0, Lcom/shabakaty/downloader/zx;->i:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zx;->m()V

    .line 12
    iget v1, p0, Lcom/shabakaty/downloader/zx;->i:I

    const/16 v2, 0x47

    const-string v3, "Sequence number discontinuity. previous="

    const-string v6, " current="

    invoke-static {v2, v3, v1, v6, v0}, Lcom/shabakaty/downloader/t74;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_4
    iput v0, p0, Lcom/shabakaty/downloader/zx;->i:I

    and-int/lit8 p1, v4, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    .line 15
    :cond_5
    new-instance v1, Lcom/shabakaty/downloader/zx$c;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/zx$c;-><init>(II)V

    iput-object v1, p0, Lcom/shabakaty/downloader/zx;->o:Lcom/shabakaty/downloader/zx$c;

    .line 16
    iget-object p1, v1, Lcom/shabakaty/downloader/zx$c;->c:[B

    iget v0, v1, Lcom/shabakaty/downloader/zx$c;->d:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lcom/shabakaty/downloader/zx$c;->d:I

    aput-byte v5, p1, v0

    goto :goto_2

    :cond_6
    if-ne v1, v6, :cond_7

    const/4 v3, 0x1

    .line 17
    :cond_7
    invoke-static {v3}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->o:Lcom/shabakaty/downloader/zx$c;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 20
    :cond_8
    iget-object p1, v0, Lcom/shabakaty/downloader/zx$c;->c:[B

    iget v1, v0, Lcom/shabakaty/downloader/zx$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/shabakaty/downloader/zx$c;->d:I

    aput-byte v4, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 21
    iput v1, v0, Lcom/shabakaty/downloader/zx$c;->d:I

    aput-byte v5, p1, v2

    .line 22
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/zx;->o:Lcom/shabakaty/downloader/zx$c;

    iget v0, p1, Lcom/shabakaty/downloader/zx$c;->d:I

    iget p1, p1, Lcom/shabakaty/downloader/zx$c;->b:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zx;->k()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->n:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->o:Lcom/shabakaty/downloader/zx$c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Lcom/shabakaty/downloader/zx$c;->d:I

    iget v2, v0, Lcom/shabakaty/downloader/zx$c;->b:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    const-string v4, "Cea708Decoder"

    if-eq v1, v2, :cond_1

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/zx$c;->a:I

    const/16 v5, 0x73

    const-string v6, "DtvCcPacket ended prematurely; size is "

    const-string v7, ", but current index is "

    invoke-static {v5, v6, v2, v7, v1}, Lcom/shabakaty/downloader/pe;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (sequence number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->o:Lcom/shabakaty/downloader/zx$c;

    iget-object v2, v1, Lcom/shabakaty/downloader/zx$c;->c:[B

    iget v1, v1, Lcom/shabakaty/downloader/zx$c;->d:I

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/a55;->q([BI)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    const/16 v5, 0x2c

    const/4 v6, 0x7

    const/4 v7, 0x6

    if-ne v0, v6, :cond_2

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    if-ge v0, v6, :cond_2

    const-string v8, "Invalid extended service number: "

    .line 10
    invoke-static {v5, v8, v0, v4}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_35

    const/16 v1, 0x3b

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "serviceNumber is non-zero ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 13
    :cond_3
    iget v2, p0, Lcom/shabakaty/downloader/zx;->j:I

    if-eq v0, v2, :cond_4

    goto/16 :goto_a

    :cond_4
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/a55;->b()I

    move-result v2

    if-lez v2, :cond_34

    .line 15
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    const/16 v8, 0x17

    const/16 v9, 0x9f

    const/16 v10, 0x18

    const/16 v11, 0x7f

    const/16 v12, 0x10

    const/16 v13, 0x1f

    if-eq v2, v12, :cond_1d

    const/16 v14, 0xa

    if-gt v2, v13, :cond_9

    if-eqz v2, :cond_33

    if-eq v2, v1, :cond_8

    if-eq v2, v5, :cond_7

    packed-switch v2, :pswitch_data_0

    const/16 v1, 0x11

    if-lt v2, v1, :cond_5

    if-gt v2, v8, :cond_5

    const/16 v1, 0x37

    const-string v6, "Currently unsupported COMMAND_EXT1 Command: "

    .line 16
    invoke-static {v1, v6, v2, v4}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_9

    .line 18
    :pswitch_0
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    invoke-virtual {v1, v14}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_9

    .line 19
    :pswitch_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zx;->m()V

    goto/16 :goto_9

    :cond_5
    if-lt v2, v10, :cond_6

    if-gt v2, v13, :cond_6

    const/16 v1, 0x36

    const-string v5, "Currently unsupported COMMAND_P16 Command: "

    .line 20
    invoke-static {v1, v5, v2, v4}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v12}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_9

    :cond_6
    const-string v1, "Invalid C0 command: "

    .line 22
    invoke-static {v13, v1, v2, v4}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 23
    :cond_7
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    .line 24
    iget-object v2, v1, Lcom/shabakaty/downloader/zx$b;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 25
    iget-object v1, v1, Lcom/shabakaty/downloader/zx$b;->b:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v5, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_9

    .line 26
    :cond_8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zx;->l()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/zx;->m:Ljava/util/List;

    goto/16 :goto_9

    :cond_9
    if-gt v2, v11, :cond_b

    if-ne v2, v11, :cond_a

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x266b

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 28
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    and-int/lit16 v1, v2, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    :cond_b
    if-gt v2, v9, :cond_1b

    const/4 v0, 0x4

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    const-string v0, "Invalid C1 command: "

    .line 29
    invoke-static {v13, v0, v2}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_3
    add-int/lit16 v2, v2, -0x98

    .line 30
    iget-object v8, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    aget-object v8, v8, v2

    .line 31
    iget-object v9, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v9, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 32
    iget-object v9, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v9

    .line 33
    iget-object v10, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v10

    .line 34
    iget-object v11, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    .line 35
    iget-object v11, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v11, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v11

    .line 36
    iget-object v12, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v12}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v12

    .line 37
    iget-object v13, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v13, v6}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v6

    .line 38
    iget-object v13, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v13, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    .line 39
    iget-object v13, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v13, v0}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v13

    .line 40
    iget-object v14, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v14, v0}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    .line 41
    iget-object v14, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v14, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 42
    iget-object v14, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v14, v7}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 43
    iget-object v7, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v7, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 44
    iget-object v7, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v7, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    .line 45
    iget-object v14, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v14, v1}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    const/4 v14, 0x1

    .line 46
    iput-boolean v14, v8, Lcom/shabakaty/downloader/zx$b;->c:Z

    .line 47
    iput-boolean v9, v8, Lcom/shabakaty/downloader/zx$b;->d:Z

    .line 48
    iput-boolean v10, v8, Lcom/shabakaty/downloader/zx$b;->k:Z

    .line 49
    iput v11, v8, Lcom/shabakaty/downloader/zx$b;->e:I

    .line 50
    iput-boolean v12, v8, Lcom/shabakaty/downloader/zx$b;->f:Z

    .line 51
    iput v6, v8, Lcom/shabakaty/downloader/zx$b;->g:I

    .line 52
    iput v5, v8, Lcom/shabakaty/downloader/zx$b;->h:I

    .line 53
    iput v13, v8, Lcom/shabakaty/downloader/zx$b;->i:I

    .line 54
    iget v5, v8, Lcom/shabakaty/downloader/zx$b;->j:I

    add-int/2addr v0, v14

    if-eq v5, v0, :cond_e

    .line 55
    iput v0, v8, Lcom/shabakaty/downloader/zx$b;->j:I

    :goto_1
    if-eqz v10, :cond_c

    .line 56
    iget-object v0, v8, Lcom/shabakaty/downloader/zx$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v5, v8, Lcom/shabakaty/downloader/zx$b;->j:I

    if-ge v0, v5, :cond_d

    :cond_c
    iget-object v0, v8, Lcom/shabakaty/downloader/zx$b;->a:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v5, 0xf

    if-lt v0, v5, :cond_e

    .line 58
    :cond_d
    iget-object v0, v8, Lcom/shabakaty/downloader/zx$b;->a:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_e
    if-eqz v7, :cond_f

    .line 59
    iget v0, v8, Lcom/shabakaty/downloader/zx$b;->m:I

    if-eq v0, v7, :cond_f

    .line 60
    iput v7, v8, Lcom/shabakaty/downloader/zx$b;->m:I

    add-int/lit8 v7, v7, -0x1

    .line 61
    sget-object v0, Lcom/shabakaty/downloader/zx$b;->C:[I

    aget v0, v0, v7

    sget-object v5, Lcom/shabakaty/downloader/zx$b;->B:[Z

    aget-boolean v5, v5, v7

    sget-object v5, Lcom/shabakaty/downloader/zx$b;->z:[I

    aget v5, v5, v7

    sget-object v5, Lcom/shabakaty/downloader/zx$b;->A:[I

    aget v5, v5, v7

    sget-object v5, Lcom/shabakaty/downloader/zx$b;->y:[I

    aget v5, v5, v7

    .line 62
    iput v0, v8, Lcom/shabakaty/downloader/zx$b;->o:I

    .line 63
    iput v5, v8, Lcom/shabakaty/downloader/zx$b;->l:I

    :cond_f
    if-eqz v1, :cond_10

    .line 64
    iget v0, v8, Lcom/shabakaty/downloader/zx$b;->n:I

    if-eq v0, v1, :cond_10

    .line 65
    iput v1, v8, Lcom/shabakaty/downloader/zx$b;->n:I

    add-int/lit8 v1, v1, -0x1

    .line 66
    sget-object v0, Lcom/shabakaty/downloader/zx$b;->E:[I

    aget v0, v0, v1

    sget-object v0, Lcom/shabakaty/downloader/zx$b;->D:[I

    aget v0, v0, v1

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v0}, Lcom/shabakaty/downloader/zx$b;->g(ZZ)V

    .line 67
    sget v0, Lcom/shabakaty/downloader/zx$b;->w:I

    sget-object v5, Lcom/shabakaty/downloader/zx$b;->F:[I

    aget v1, v5, v1

    invoke-virtual {v8, v0, v1}, Lcom/shabakaty/downloader/zx$b;->h(II)V

    .line 68
    :cond_10
    iget v0, p0, Lcom/shabakaty/downloader/zx;->p:I

    if-eq v0, v2, :cond_31

    .line 69
    iput v2, p0, Lcom/shabakaty/downloader/zx;->p:I

    .line 70
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    goto/16 :goto_8

    .line 71
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    .line 72
    iget-boolean v0, v0, Lcom/shabakaty/downloader/zx$b;->c:Z

    if-nez v0, :cond_11

    .line 73
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_8

    .line 74
    :cond_11
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 76
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    .line 77
    iget-object v6, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v6

    .line 78
    invoke-static {v1, v2, v6, v0}, Lcom/shabakaty/downloader/zx$b;->d(IIII)I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 80
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    .line 82
    iget-object v6, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v6

    const/4 v7, 0x0

    .line 83
    invoke-static {v1, v2, v6, v7}, Lcom/shabakaty/downloader/zx$b;->d(IIII)I

    .line 84
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/a55;->j()Z

    .line 85
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/a55;->j()Z

    .line 86
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 87
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 88
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 90
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    .line 91
    iput v0, v2, Lcom/shabakaty/downloader/zx$b;->o:I

    .line 92
    iput v1, v2, Lcom/shabakaty/downloader/zx$b;->l:I

    goto/16 :goto_8

    .line 93
    :pswitch_5
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    .line 94
    iget-boolean v1, v1, Lcom/shabakaty/downloader/zx$b;->c:Z

    if-nez v1, :cond_12

    .line 95
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_8

    .line 96
    :cond_12
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 97
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 99
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 100
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    .line 101
    iget v2, v1, Lcom/shabakaty/downloader/zx$b;->v:I

    if-eq v2, v0, :cond_13

    .line 102
    invoke-virtual {v1, v14}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    .line 103
    :cond_13
    iput v0, v1, Lcom/shabakaty/downloader/zx$b;->v:I

    goto/16 :goto_8

    .line 104
    :pswitch_6
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    .line 105
    iget-boolean v0, v0, Lcom/shabakaty/downloader/zx$b;->c:Z

    if-nez v0, :cond_14

    .line 106
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_8

    .line 107
    :cond_14
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    .line 110
    iget-object v5, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    .line 111
    invoke-static {v1, v2, v5, v0}, Lcom/shabakaty/downloader/zx$b;->d(IIII)I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 113
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    .line 114
    iget-object v5, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    .line 115
    iget-object v6, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v6

    .line 116
    invoke-static {v2, v5, v6, v1}, Lcom/shabakaty/downloader/zx$b;->d(IIII)I

    move-result v1

    .line 117
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 118
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    .line 119
    iget-object v5, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    .line 120
    iget-object v6, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v6

    const/4 v7, 0x0

    .line 121
    invoke-static {v2, v5, v6, v7}, Lcom/shabakaty/downloader/zx$b;->d(IIII)I

    .line 122
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/zx$b;->h(II)V

    goto/16 :goto_8

    .line 123
    :pswitch_7
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    .line 124
    iget-boolean v1, v1, Lcom/shabakaty/downloader/zx$b;->c:Z

    if-nez v1, :cond_15

    .line 125
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v12}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_8

    .line 126
    :cond_15
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 127
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 128
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 129
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 132
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    .line 133
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/zx$b;->g(ZZ)V

    goto/16 :goto_8

    .line 134
    :pswitch_8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zx;->m()V

    goto/16 :goto_8

    .line 135
    :pswitch_9
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_8

    :pswitch_a
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v5, :cond_31

    .line 136
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 137
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    rsub-int/lit8 v2, v0, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zx$b;->f()V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_b
    const/4 v0, 0x1

    :goto_3
    if-gt v0, v5, :cond_31

    .line 138
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 139
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    rsub-int/lit8 v2, v0, 0x8

    aget-object v1, v1, v2

    .line 140
    iget-boolean v2, v1, Lcom/shabakaty/downloader/zx$b;->d:Z

    xor-int/lit8 v2, v2, 0x1

    .line 141
    iput-boolean v2, v1, Lcom/shabakaty/downloader/zx$b;->d:Z

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_c
    const/4 v0, 0x1

    :goto_4
    if-gt v0, v5, :cond_31

    .line 142
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 143
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    rsub-int/lit8 v2, v0, 0x8

    aget-object v1, v1, v2

    const/4 v2, 0x0

    .line 144
    iput-boolean v2, v1, Lcom/shabakaty/downloader/zx$b;->d:Z

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_d
    const/4 v0, 0x1

    :goto_5
    if-gt v0, v5, :cond_31

    .line 145
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 146
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    rsub-int/lit8 v2, v0, 0x8

    aget-object v1, v1, v2

    const/4 v2, 0x1

    .line 147
    iput-boolean v2, v1, Lcom/shabakaty/downloader/zx$b;->d:Z

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_e
    const/4 v0, 0x1

    :goto_6
    if-gt v0, v5, :cond_31

    .line 148
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 149
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    rsub-int/lit8 v2, v0, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zx$b;->c()V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_f
    add-int/lit8 v2, v2, -0x80

    .line 150
    iget v0, p0, Lcom/shabakaty/downloader/zx;->p:I

    if-eq v0, v2, :cond_31

    .line 151
    iput v2, p0, Lcom/shabakaty/downloader/zx;->p:I

    .line 152
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    goto/16 :goto_8

    .line 153
    :goto_7
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1b
    const/16 v1, 0xff

    if-gt v2, v1, :cond_1c

    .line 154
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    and-int/lit16 v1, v2, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    :cond_1c
    const/16 v1, 0x21

    const-string v5, "Invalid base command: "

    .line 155
    invoke-static {v1, v5, v2, v4}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_9

    .line 156
    :cond_1d
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    if-gt v1, v13, :cond_21

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1e

    goto/16 :goto_9

    :cond_1e
    const/16 v2, 0xf

    if-gt v1, v2, :cond_1f

    .line 157
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_9

    :cond_1f
    if-gt v1, v8, :cond_20

    .line 158
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v12}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_9

    :cond_20
    if-gt v1, v13, :cond_33

    .line 159
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v10}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto/16 :goto_9

    :cond_21
    const/16 v2, 0x25

    const/16 v5, 0xa0

    if-gt v1, v11, :cond_2c

    const/16 v0, 0x20

    if-eq v1, v0, :cond_2b

    const/16 v0, 0x21

    if-eq v1, v0, :cond_2a

    if-eq v1, v2, :cond_29

    const/16 v0, 0x2a

    if-eq v1, v0, :cond_28

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_27

    const/16 v0, 0x3f

    if-eq v1, v0, :cond_26

    const/16 v0, 0x39

    if-eq v1, v0, :cond_25

    const/16 v0, 0x3a

    if-eq v1, v0, :cond_24

    const/16 v0, 0x3c

    if-eq v1, v0, :cond_23

    const/16 v0, 0x3d

    if-eq v1, v0, :cond_22

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    const/16 v0, 0x21

    const-string v2, "Invalid G2 character: "

    .line 160
    invoke-static {v0, v2, v1, v4}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_8

    .line 161
    :pswitch_10
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2022

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 162
    :pswitch_11
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x201d

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 163
    :pswitch_12
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x201c

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 164
    :pswitch_13
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2019

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 165
    :pswitch_14
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2018

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 166
    :pswitch_15
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2588

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 167
    :pswitch_16
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x250c

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 168
    :pswitch_17
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2518

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 169
    :pswitch_18
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2500

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 170
    :pswitch_19
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2514

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 171
    :pswitch_1a
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2510

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 172
    :pswitch_1b
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2502

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 173
    :pswitch_1c
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x215e

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 174
    :pswitch_1d
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x215d

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 175
    :pswitch_1e
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x215c

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 176
    :pswitch_1f
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x215b

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 177
    :cond_22
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2120

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 178
    :cond_23
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x153

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 179
    :cond_24
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x161

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 180
    :cond_25
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2122

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 181
    :cond_26
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x178

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 182
    :cond_27
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x152

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto/16 :goto_8

    .line 183
    :cond_28
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x160

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto :goto_8

    .line 184
    :cond_29
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x2026

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto :goto_8

    .line 185
    :cond_2a
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto :goto_8

    .line 186
    :cond_2b
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto :goto_8

    :cond_2c
    const/16 v6, 0x20

    if-gt v1, v9, :cond_2f

    const/16 v2, 0x87

    if-gt v1, v2, :cond_2d

    .line 187
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto :goto_9

    :cond_2d
    const/16 v2, 0x8f

    if-gt v1, v2, :cond_2e

    .line 188
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto :goto_9

    :cond_2e
    if-gt v1, v9, :cond_33

    .line 189
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 190
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/shabakaty/downloader/zx;->h:Lcom/shabakaty/downloader/a55;

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/a55;->v(I)V

    goto :goto_9

    :cond_2f
    const/16 v6, 0xff

    if-gt v1, v6, :cond_32

    if-ne v1, v5, :cond_30

    .line 192
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x33c4

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    goto :goto_8

    :cond_30
    const/16 v0, 0x21

    const-string v2, "Invalid G3 character: "

    .line 193
    invoke-static {v0, v2, v1, v4}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/shabakaty/downloader/zx;->l:Lcom/shabakaty/downloader/zx$b;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zx$b;->a(C)V

    :cond_31
    :goto_8
    :pswitch_20
    const/4 v0, 0x1

    goto :goto_9

    :cond_32
    const-string v5, "Invalid extended command: "

    .line 195
    invoke-static {v2, v5, v1, v4}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    :cond_33
    :goto_9
    :pswitch_21
    const/4 v1, 0x3

    const/4 v6, 0x7

    const/4 v7, 0x6

    goto/16 :goto_0

    :cond_34
    if-eqz v0, :cond_35

    .line 196
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zx;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->m:Ljava/util/List;

    :cond_35
    :goto_a
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/shabakaty/downloader/zx;->o:Lcom/shabakaty/downloader/zx$c;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_21
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_20
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x76
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method

.method public final l()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vg0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_d

    .line 2
    iget-object v4, v0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/shabakaty/downloader/zx$b;->e()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    aget-object v5, v4, v3

    .line 3
    iget-boolean v5, v5, Lcom/shabakaty/downloader/zx$b;->d:Z

    if-eqz v5, :cond_c

    .line 4
    aget-object v4, v4, v3

    .line 5
    invoke-virtual {v4}, Lcom/shabakaty/downloader/zx$b;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_8

    .line 6
    :cond_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 7
    :goto_1
    iget-object v7, v4, Lcom/shabakaty/downloader/zx$b;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 8
    iget-object v7, v4, Lcom/shabakaty/downloader/zx$b;->a:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v7, 0xa

    .line 9
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4}, Lcom/shabakaty/downloader/zx$b;->b()Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    iget v5, v4, Lcom/shabakaty/downloader/zx$b;->l:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget v2, v4, Lcom/shabakaty/downloader/zx$b;->l:I

    const/16 v3, 0x2b

    const-string v4, "Unexpected justification value: "

    invoke-static {v3, v4, v2}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 14
    :cond_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 15
    :cond_5
    :goto_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_3
    move-object v7, v5

    .line 16
    iget-boolean v5, v4, Lcom/shabakaty/downloader/zx$b;->f:Z

    if-eqz v5, :cond_6

    .line 17
    iget v5, v4, Lcom/shabakaty/downloader/zx$b;->h:I

    int-to-float v5, v5

    const/high16 v9, 0x42c60000    # 99.0f

    div-float/2addr v5, v9

    .line 18
    iget v10, v4, Lcom/shabakaty/downloader/zx$b;->g:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    goto :goto_4

    .line 19
    :cond_6
    iget v5, v4, Lcom/shabakaty/downloader/zx$b;->h:I

    int-to-float v5, v5

    const/high16 v9, 0x43510000    # 209.0f

    div-float/2addr v5, v9

    .line 20
    iget v9, v4, Lcom/shabakaty/downloader/zx$b;->g:I

    int-to-float v9, v9

    const/high16 v10, 0x42940000    # 74.0f

    div-float v10, v9, v10

    :goto_4
    const v9, 0x3f666666    # 0.9f

    mul-float v5, v5, v9

    const v11, 0x3d4ccccd    # 0.05f

    add-float v12, v5, v11

    mul-float v10, v10, v9

    add-float v9, v10, v11

    .line 21
    iget v5, v4, Lcom/shabakaty/downloader/zx$b;->i:I

    div-int/lit8 v10, v5, 0x3

    if-nez v10, :cond_7

    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    if-ne v10, v8, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x2

    .line 22
    :goto_5
    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_9

    const/4 v5, 0x0

    const/4 v13, 0x0

    goto :goto_6

    :cond_9
    if-ne v5, v8, :cond_a

    const/4 v5, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x2

    const/4 v13, 0x2

    .line 23
    :goto_6
    iget v5, v4, Lcom/shabakaty/downloader/zx$b;->o:I

    sget v8, Lcom/shabakaty/downloader/zx$b;->x:I

    if-eq v5, v8, :cond_b

    const/4 v5, 0x1

    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    const/4 v14, 0x0

    .line 24
    :goto_7
    new-instance v17, Lcom/shabakaty/downloader/zx$a;

    const/4 v11, 0x0

    const v15, -0x800001

    iget v8, v4, Lcom/shabakaty/downloader/zx$b;->o:I

    iget v4, v4, Lcom/shabakaty/downloader/zx$b;->e:I

    move-object/from16 v5, v17

    move/from16 v16, v8

    move v8, v9

    move v9, v11

    move v11, v12

    move v12, v13

    move v13, v15

    move/from16 v15, v16

    move/from16 v16, v4

    invoke-direct/range {v5 .. v16}, Lcom/shabakaty/downloader/zx$a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    move-object/from16 v4, v17

    :goto_8
    if-eqz v4, :cond_c

    .line 25
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 26
    :cond_d
    sget-object v3, Lcom/shabakaty/downloader/zx$a;->c:Ljava/util/Comparator;

    sget-object v3, Lcom/shabakaty/downloader/zx$a;->c:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/zx$a;

    iget-object v4, v4, Lcom/shabakaty/downloader/zx$a;->a:Lcom/shabakaty/downloader/vg0;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 30
    :cond_e
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/zx;->k:[Lcom/shabakaty/downloader/zx$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zx$b;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
