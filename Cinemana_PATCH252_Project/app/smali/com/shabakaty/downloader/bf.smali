.class public final Lcom/shabakaty/downloader/bf;
.super Lcom/shabakaty/downloader/mk4;
.source "AudioTagPayloadReader.java"


# static fields
.field public static final e:[I


# instance fields
.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/bf;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fp4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/mk4;-><init>(Lcom/shabakaty/downloader/fp4;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/ka3;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/bf;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/bf;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x3

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/bf;->e:[I

    aget p1, v0, p1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v2, "audio/mpeg"

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 7
    iput v1, v0, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 8
    iput p1, v0, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 11
    iput-boolean v1, p0, Lcom/shabakaty/downloader/bf;->c:Z

    goto :goto_2

    :cond_0
    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    if-ne v0, p1, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/mk4$a;

    iget v0, p0, Lcom/shabakaty/downloader/bf;->d:I

    const/16 v1, 0x27

    const-string v2, "Audio format not supported: "

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/mk4$a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    const-string p1, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string p1, "audio/g711-mlaw"

    .line 13
    :goto_1
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 14
    iput-object p1, v0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 15
    iput v1, v0, Lcom/shabakaty/downloader/wh1$b;->x:I

    const/16 p1, 0x1f40

    .line 16
    iput p1, v0, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 19
    iput-boolean v1, p0, Lcom/shabakaty/downloader/bf;->c:Z

    .line 20
    :goto_2
    iput-boolean v1, p0, Lcom/shabakaty/downloader/bf;->b:Z

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ka3;->F(I)V

    :goto_3
    return v1
.end method

.method public c(Lcom/shabakaty/downloader/ka3;J)Z
    .locals 12

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bf;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v7

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v0, p1, v7}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p2

    invoke-interface/range {v3 .. v9}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6
    iget-boolean v3, p0, Lcom/shabakaty/downloader/bf;->c:Z

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p2

    new-array p3, p2, [B

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v3, p1, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v0, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v0, p1, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 10
    invoke-static {p3}, Lcom/shabakaty/downloader/c;->f([B)Lcom/shabakaty/downloader/c$b;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {p2}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v0, "audio/mp4a-latm"

    .line 12
    iput-object v0, p2, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/shabakaty/downloader/c$b;->c:Ljava/lang/String;

    .line 14
    iput-object v0, p2, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/shabakaty/downloader/c$b;->b:I

    .line 16
    iput v0, p2, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 17
    iget p1, p1, Lcom/shabakaty/downloader/c$b;->a:I

    .line 18
    iput p1, p2, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 19
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 20
    iput-object p1, p2, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 21
    invoke-virtual {p2}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 23
    iput-boolean v1, p0, Lcom/shabakaty/downloader/bf;->c:Z

    return v2

    .line 24
    :cond_1
    iget v3, p0, Lcom/shabakaty/downloader/bf;->d:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 25
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v9

    .line 26
    iget-object v0, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v0, p1, v9}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 27
    iget-object v5, p0, Lcom/shabakaty/downloader/mk4;->a:Lcom/shabakaty/downloader/fp4;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, p2

    invoke-interface/range {v5 .. v11}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    return v1
.end method
