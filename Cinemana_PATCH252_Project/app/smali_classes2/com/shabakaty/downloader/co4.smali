.class public final Lcom/shabakaty/downloader/co4;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field public static final r:[C

.field public static final s:[I


# instance fields
.field public final a:Lcom/shabakaty/downloader/ez;

.field public final b:Lcom/shabakaty/downloader/la3;

.field public c:Lcom/shabakaty/downloader/do4;

.field public d:Lcom/shabakaty/downloader/zn4;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/StringBuilder;

.field public h:Ljava/lang/StringBuilder;

.field public i:Lcom/shabakaty/downloader/zn4$i;

.field public j:Lcom/shabakaty/downloader/zn4$h;

.field public k:Lcom/shabakaty/downloader/zn4$g;

.field public l:Lcom/shabakaty/downloader/zn4$c;

.field public m:Lcom/shabakaty/downloader/zn4$e;

.field public n:Lcom/shabakaty/downloader/zn4$d;

.field public o:Ljava/lang/String;

.field public final p:[I

.field public final q:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/co4;->r:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/shabakaty/downloader/co4;->s:[I

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ez;Lcom/shabakaty/downloader/la3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/co4;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->f:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->g:Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/zn4$h;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$h;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->j:Lcom/shabakaty/downloader/zn4$h;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/zn4$g;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$g;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->k:Lcom/shabakaty/downloader/zn4$g;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/zn4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$c;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->l:Lcom/shabakaty/downloader/zn4$c;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/zn4$e;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$e;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/zn4$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zn4$d;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->n:Lcom/shabakaty/downloader/zn4$d;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->p:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Lcom/shabakaty/downloader/co4;->q:[I

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    .line 15
    iput-object p2, p0, Lcom/shabakaty/downloader/co4;->b:Lcom/shabakaty/downloader/la3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->b:Lcom/shabakaty/downloader/la3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/la3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->b:Lcom/shabakaty/downloader/la3;

    new-instance v1, Lcom/shabakaty/downloader/k66;

    iget-object v2, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ez;->s()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Invalid character reference: %s"

    invoke-direct {v1, v2, p1, v3}, Lcom/shabakaty/downloader/k66;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Character;Z)[I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->j()C

    move-result v0

    if-ne p1, v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    sget-object v0, Lcom/shabakaty/downloader/co4;->r:[C

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ez;->b()V

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ez;->k()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/shabakaty/downloader/ez;->a:[C

    iget p1, p1, Lcom/shabakaty/downloader/ez;->e:I

    aget-char p1, v2, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    return-object v1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/co4;->p:[I

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    .line 8
    iget v2, v0, Lcom/shabakaty/downloader/ez;->e:I

    iput v2, v0, Lcom/shabakaty/downloader/ez;->g:I

    const-string v2, "#"

    .line 9
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ez;->m(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "missing semicolon"

    const-string v5, ";"

    const/16 v6, 0x61

    const/16 v7, 0x41

    const/16 v8, 0x39

    const/16 v9, 0x30

    const/4 v10, -0x1

    if-eqz v0, :cond_11

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->n(Ljava/lang/String;)Z

    move-result p2

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    if-eqz p2, :cond_8

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->b()V

    .line 13
    iget v4, v0, Lcom/shabakaty/downloader/ez;->e:I

    .line 14
    :goto_1
    iget v11, v0, Lcom/shabakaty/downloader/ez;->e:I

    iget v12, v0, Lcom/shabakaty/downloader/ez;->c:I

    if-ge v11, v12, :cond_7

    .line 15
    iget-object v12, v0, Lcom/shabakaty/downloader/ez;->a:[C

    aget-char v12, v12, v11

    if-lt v12, v9, :cond_4

    if-le v12, v8, :cond_6

    :cond_4
    if-lt v12, v7, :cond_5

    const/16 v7, 0x46

    if-le v12, v7, :cond_6

    :cond_5
    if-lt v12, v6, :cond_7

    const/16 v7, 0x66

    if-gt v12, v7, :cond_7

    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 16
    iput v11, v0, Lcom/shabakaty/downloader/ez;->e:I

    const/16 v7, 0x41

    goto :goto_1

    .line 17
    :cond_7
    iget-object v6, v0, Lcom/shabakaty/downloader/ez;->a:[C

    iget-object v0, v0, Lcom/shabakaty/downloader/ez;->h:[Ljava/lang/String;

    sub-int/2addr v11, v4

    invoke-static {v6, v0, v4, v11}, Lcom/shabakaty/downloader/ez;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 18
    :cond_8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->b()V

    .line 19
    iget v4, v0, Lcom/shabakaty/downloader/ez;->e:I

    .line 20
    :goto_2
    iget v6, v0, Lcom/shabakaty/downloader/ez;->e:I

    iget v7, v0, Lcom/shabakaty/downloader/ez;->c:I

    if-ge v6, v7, :cond_9

    .line 21
    iget-object v7, v0, Lcom/shabakaty/downloader/ez;->a:[C

    aget-char v7, v7, v6

    if-lt v7, v9, :cond_9

    if-gt v7, v8, :cond_9

    add-int/lit8 v6, v6, 0x1

    .line 22
    iput v6, v0, Lcom/shabakaty/downloader/ez;->e:I

    goto :goto_2

    .line 23
    :cond_9
    iget-object v7, v0, Lcom/shabakaty/downloader/ez;->a:[C

    iget-object v0, v0, Lcom/shabakaty/downloader/ez;->h:[Ljava/lang/String;

    sub-int/2addr v6, v4

    invoke-static {v7, v0, v4, v6}, Lcom/shabakaty/downloader/ez;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    const-string p1, "numeric reference with no numerals"

    .line 25
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/co4;->a(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    .line 27
    iget p2, p1, Lcom/shabakaty/downloader/ez;->g:I

    iput p2, p1, Lcom/shabakaty/downloader/ez;->e:I

    return-object v1

    .line 28
    :cond_a
    iget-object v1, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ez;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 29
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/co4;->a(Ljava/lang/String;)V

    :cond_b
    if-eqz p2, :cond_c

    const/16 p2, 0x10

    goto :goto_4

    :cond_c
    const/16 p2, 0xa

    .line 30
    :goto_4
    :try_start_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 p2, -0x1

    :goto_5
    if-eq p2, v10, :cond_10

    const v0, 0xd800

    if-lt p2, v0, :cond_d

    const v0, 0xdfff

    if-le p2, v0, :cond_10

    :cond_d
    const v0, 0x10ffff

    if-le p2, v0, :cond_e

    goto :goto_6

    :cond_e
    const/16 v0, 0x80

    if-lt p2, v0, :cond_f

    .line 31
    sget-object v1, Lcom/shabakaty/downloader/co4;->s:[I

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_f

    const-string v0, "character is not a valid unicode code point"

    .line 32
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/co4;->a(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x80

    .line 33
    aget p2, v1, p2

    .line 34
    :cond_f
    aput p2, p1, v3

    return-object p1

    :cond_10
    :goto_6
    const-string p2, "character outside of valid range"

    .line 35
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/co4;->a(Ljava/lang/String;)V

    const p2, 0xfffd

    .line 36
    aput p2, p1, v3

    return-object p1

    .line 37
    :cond_11
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    .line 38
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->b()V

    .line 39
    iget v7, v0, Lcom/shabakaty/downloader/ez;->e:I

    .line 40
    :goto_7
    iget v11, v0, Lcom/shabakaty/downloader/ez;->e:I

    iget v12, v0, Lcom/shabakaty/downloader/ez;->c:I

    if-ge v11, v12, :cond_15

    .line 41
    iget-object v12, v0, Lcom/shabakaty/downloader/ez;->a:[C

    aget-char v11, v12, v11

    const/16 v12, 0x41

    if-lt v11, v12, :cond_12

    const/16 v12, 0x5a

    if-le v11, v12, :cond_14

    :cond_12
    if-lt v11, v6, :cond_13

    const/16 v12, 0x7a

    if-le v11, v12, :cond_14

    .line 42
    :cond_13
    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 43
    :cond_14
    iget v11, v0, Lcom/shabakaty/downloader/ez;->e:I

    add-int/2addr v11, v4

    iput v11, v0, Lcom/shabakaty/downloader/ez;->e:I

    goto :goto_7

    .line 44
    :cond_15
    :goto_8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->l()Z

    move-result v6

    if-nez v6, :cond_16

    .line 45
    iget-object v6, v0, Lcom/shabakaty/downloader/ez;->a:[C

    iget v11, v0, Lcom/shabakaty/downloader/ez;->e:I

    aget-char v6, v6, v11

    if-lt v6, v9, :cond_16

    if-gt v6, v8, :cond_16

    add-int/lit8 v11, v11, 0x1

    .line 46
    iput v11, v0, Lcom/shabakaty/downloader/ez;->e:I

    goto :goto_8

    .line 47
    :cond_16
    iget-object v6, v0, Lcom/shabakaty/downloader/ez;->a:[C

    iget-object v11, v0, Lcom/shabakaty/downloader/ez;->h:[Ljava/lang/String;

    iget v0, v0, Lcom/shabakaty/downloader/ez;->e:I

    sub-int/2addr v0, v7

    invoke-static {v6, v11, v7, v0}, Lcom/shabakaty/downloader/ez;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v6, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/ez;->o(C)Z

    move-result v6

    .line 49
    sget-object v7, Lcom/shabakaty/downloader/v31;->a:[C

    .line 50
    sget-object v7, Lcom/shabakaty/downloader/v31$a;->w:Lcom/shabakaty/downloader/v31$a;

    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/v31$a;->f(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_17

    const/4 v7, 0x1

    goto :goto_9

    :cond_17
    const/4 v7, 0x0

    :goto_9
    if-nez v7, :cond_1a

    .line 51
    sget-object v7, Lcom/shabakaty/downloader/v31$a;->x:Lcom/shabakaty/downloader/v31$a;

    invoke-virtual {v7, v0}, Lcom/shabakaty/downloader/v31$a;->f(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_18

    const/4 v7, 0x1

    goto :goto_a

    :cond_18
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_19

    if-eqz v6, :cond_19

    goto :goto_b

    :cond_19
    const/4 v7, 0x0

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v7, 0x1

    :goto_c
    if-nez v7, :cond_1c

    .line 52
    iget-object p1, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    .line 53
    iget p2, p1, Lcom/shabakaty/downloader/ez;->g:I

    iput p2, p1, Lcom/shabakaty/downloader/ez;->e:I

    if-eqz v6, :cond_1b

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v3

    const-string p2, "invalid named referenece \'%s\'"

    .line 54
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/co4;->a(Ljava/lang/String;)V

    :cond_1b
    return-object v1

    :cond_1c
    if-eqz p2, :cond_20

    .line 55
    iget-object p2, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->q()Z

    move-result p2

    if-nez p2, :cond_1f

    iget-object p2, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    .line 56
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->k()Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_d

    .line 57
    :cond_1d
    iget-object v6, p2, Lcom/shabakaty/downloader/ez;->a:[C

    iget p2, p2, Lcom/shabakaty/downloader/ez;->e:I

    aget-char p2, v6, p2

    if-lt p2, v9, :cond_1e

    if-gt p2, v8, :cond_1e

    const/4 p2, 0x1

    goto :goto_e

    :cond_1e
    :goto_d
    const/4 p2, 0x0

    :goto_e
    if-nez p2, :cond_1f

    .line 58
    iget-object p2, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    const/4 v6, 0x3

    new-array v6, v6, [C

    fill-array-data v6, :array_0

    invoke-virtual {p2, v6}, Lcom/shabakaty/downloader/ez;->p([C)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 59
    :cond_1f
    iget-object p1, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    .line 60
    iget p2, p1, Lcom/shabakaty/downloader/ez;->g:I

    iput p2, p1, Lcom/shabakaty/downloader/ez;->e:I

    return-object v1

    .line 61
    :cond_20
    iget-object p2, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {p2, v5}, Lcom/shabakaty/downloader/ez;->m(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_21

    .line 62
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/co4;->a(Ljava/lang/String;)V

    .line 63
    :cond_21
    iget-object p2, p0, Lcom/shabakaty/downloader/co4;->q:[I

    .line 64
    sget-object v1, Lcom/shabakaty/downloader/v31;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    if-eqz v1, :cond_22

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    aput v5, p2, v3

    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    aput v1, p2, v4

    const/4 p2, 0x2

    goto :goto_f

    .line 67
    :cond_22
    sget-object v1, Lcom/shabakaty/downloader/v31$a;->x:Lcom/shabakaty/downloader/v31$a;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/v31$a;->f(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_23

    .line 68
    aput v1, p2, v3

    const/4 p2, 0x1

    goto :goto_f

    :cond_23
    const/4 p2, 0x0

    :goto_f
    if-ne p2, v4, :cond_24

    .line 69
    iget-object p2, p0, Lcom/shabakaty/downloader/co4;->q:[I

    aget p2, p2, v3

    aput p2, p1, v3

    return-object p1

    :cond_24
    if-ne p2, v2, :cond_25

    .line 70
    iget-object p1, p0, Lcom/shabakaty/downloader/co4;->q:[I

    return-object p1

    :cond_25
    const-string p1, "Unexpected characters returned for "

    .line 71
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public c(Z)Lcom/shabakaty/downloader/zn4$i;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/co4;->j:Lcom/shabakaty/downloader/zn4$h;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4$h;->s()Lcom/shabakaty/downloader/zn4$i;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/co4;->k:Lcom/shabakaty/downloader/zn4$g;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4$i;->s()Lcom/shabakaty/downloader/zn4$i;

    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    return-object p1
.end method

.method public d(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/co4;->f(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/zn4;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/co4;->e:Z

    const-string v1, "There is an unread token pending!"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->m(ZLjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/co4;->d:Lcom/shabakaty/downloader/zn4;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/co4;->e:Z

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    sget-object v1, Lcom/shabakaty/downloader/zn4$j;->s:Lcom/shabakaty/downloader/zn4$j;

    if-ne v0, v1, :cond_0

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/zn4$h;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$i;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/shabakaty/downloader/co4;->o:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/zn4$j;->t:Lcom/shabakaty/downloader/zn4$j;

    if-ne v0, v1, :cond_1

    .line 8
    check-cast p1, Lcom/shabakaty/downloader/zn4$g;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    if-eqz p1, :cond_1

    const-string p1, "Attributes incorrectly present on end tag"

    .line 10
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/co4;->j(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/co4;->f:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/co4;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/zn4$i;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn4$i;->r()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/do4;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->b:Lcom/shabakaty/downloader/la3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/la3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->b:Lcom/shabakaty/downloader/la3;

    new-instance v1, Lcom/shabakaty/downloader/k66;

    iget-object v2, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ez;->s()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lcom/shabakaty/downloader/k66;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public i(Lcom/shabakaty/downloader/do4;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->b:Lcom/shabakaty/downloader/la3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/la3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->b:Lcom/shabakaty/downloader/la3;

    new-instance v1, Lcom/shabakaty/downloader/k66;

    iget-object v2, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ez;->s()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ez;->j()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lcom/shabakaty/downloader/k66;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->b:Lcom/shabakaty/downloader/la3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/la3;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->b:Lcom/shabakaty/downloader/la3;

    new-instance v1, Lcom/shabakaty/downloader/k66;

    iget-object v2, p0, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ez;->s()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, p1, v3}, Lcom/shabakaty/downloader/k66;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zn4$i;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/co4;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
