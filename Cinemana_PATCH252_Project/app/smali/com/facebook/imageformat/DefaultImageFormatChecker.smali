.class public Lcom/facebook/imageformat/DefaultImageFormatChecker;
.super Ljava/lang/Object;
.source "DefaultImageFormatChecker.java"

# interfaces
.implements Lcom/facebook/imageformat/ImageFormat$FormatChecker;


# static fields
.field public static final b:[B

.field public static final c:I

.field public static final d:[B

.field public static final e:I

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:I

.field public static final j:[B

.field public static final k:I

.field public static final l:[B

.field public static final m:[[B

.field public static final n:[B

.field public static final o:[B

.field public static final p:I


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->b:[B

    .line 2
    array-length v1, v1

    sput v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 3
    fill-array-data v1, :array_1

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->d:[B

    .line 4
    array-length v1, v1

    sput v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->e:I

    const-string v1, "GIF87a"

    .line 5
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->f:[B

    const-string v1, "GIF89a"

    .line 6
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->g:[B

    const-string v1, "BM"

    .line 7
    invoke-static {v1}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->h:[B

    .line 8
    array-length v1, v1

    sput v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->i:I

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 9
    fill-array-data v2, :array_2

    sput-object v2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->j:[B

    .line 10
    array-length v2, v2

    sput v2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->k:I

    const-string v2, "ftyp"

    .line 11
    invoke-static {v2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v2

    sput-object v2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->l:[B

    const/4 v2, 0x6

    new-array v2, v2, [[B

    const-string v3, "heic"

    .line 12
    invoke-static {v3}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "heix"

    .line 13
    invoke-static {v3}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "hevc"

    .line 14
    invoke-static {v3}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "hevx"

    .line 15
    invoke-static {v3}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "mif1"

    .line 16
    invoke-static {v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "msf1"

    .line 17
    invoke-static {v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    sput-object v2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->m:[[B

    new-array v0, v1, [B

    .line 18
    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->n:[B

    new-array v1, v1, [B

    .line 19
    fill-array-data v1, :array_4

    sput-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->o:[B

    .line 20
    array-length v0, v0

    sput v0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->p:I

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x49t
        0x49t
        0x2at
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x15

    aput v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x14

    aput v4, v1, v3

    .line 2
    sget v4, Lcom/facebook/imageformat/DefaultImageFormatChecker;->c:I

    const/4 v5, 0x2

    aput v4, v1, v5

    sget v4, Lcom/facebook/imageformat/DefaultImageFormatChecker;->e:I

    const/4 v5, 0x3

    aput v4, v1, v5

    const/4 v4, 0x4

    const/4 v5, 0x6

    aput v5, v1, v4

    sget v4, Lcom/facebook/imageformat/DefaultImageFormatChecker;->i:I

    const/4 v6, 0x5

    aput v4, v1, v6

    sget v4, Lcom/facebook/imageformat/DefaultImageFormatChecker;->k:I

    aput v4, v1, v5

    const/4 v4, 0x7

    const/16 v5, 0xc

    aput v5, v1, v4

    .line 3
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 4
    aget v2, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 5
    aget v4, v1, v3

    if-le v4, v2, :cond_0

    .line 6
    aget v2, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput v2, p0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->a:I

    return-void
.end method

.method public static c([BI)Lcom/facebook/imageformat/ImageFormat;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/facebook/common/webp/WebpSupportStatus;->b([BII)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 2
    sget-object v1, Lcom/facebook/common/webp/WebpSupportStatus;->e:[B

    const/16 v2, 0xc

    invoke-static {p0, v2, v1}, Lcom/facebook/common/webp/WebpSupportStatus;->d([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/facebook/imageformat/DefaultImageFormats;->f:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/facebook/common/webp/WebpSupportStatus;->f:[B

    invoke-static {p0, v2, v1}, Lcom/facebook/common/webp/WebpSupportStatus;->d([BI[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object p0, Lcom/facebook/imageformat/DefaultImageFormats;->g:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    :cond_1
    const/16 v1, 0x15

    const/4 v3, 0x1

    if-lt p1, v1, :cond_2

    .line 6
    sget-object p1, Lcom/facebook/common/webp/WebpSupportStatus;->g:[B

    .line 7
    invoke-static {p0, v2, p1}, Lcom/facebook/common/webp/WebpSupportStatus;->d([BI[B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_9

    .line 8
    sget-object p1, Lcom/facebook/common/webp/WebpSupportStatus;->g:[B

    invoke-static {p0, v2, p1}, Lcom/facebook/common/webp/WebpSupportStatus;->d([BI[B)Z

    move-result v1

    const/16 v4, 0x14

    .line 9
    aget-byte v5, p0, v4

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 10
    sget-object p0, Lcom/facebook/imageformat/DefaultImageFormats;->j:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 11
    :cond_5
    invoke-static {p0, v2, p1}, Lcom/facebook/common/webp/WebpSupportStatus;->d([BI[B)Z

    move-result p1

    .line 12
    aget-byte p0, p0, v4

    const/16 v1, 0x10

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_6

    const/4 p0, 0x1

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    if-eqz p1, :cond_7

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_8

    .line 13
    sget-object p0, Lcom/facebook/imageformat/DefaultImageFormats;->i:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 14
    :cond_8
    sget-object p0, Lcom/facebook/imageformat/DefaultImageFormats;->h:Lcom/facebook/imageformat/ImageFormat;

    return-object p0

    .line 15
    :cond_9
    sget-object p0, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imageformat/DefaultImageFormatChecker;->a:I

    return v0
.end method

.method public final b([BI)Lcom/facebook/imageformat/ImageFormat;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0, p2}, Lcom/facebook/common/webp/WebpSupportStatus;->b([BII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/facebook/imageformat/DefaultImageFormatChecker;->c([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->b:[B

    array-length v2, v1

    const/4 v3, 0x1

    if-lt p2, v2, :cond_1

    .line 4
    invoke-static {p1, v1, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 5
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->a:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 6
    :cond_2
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->d:[B

    array-length v2, v1

    if-lt p2, v2, :cond_3

    .line 7
    invoke-static {p1, v1, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->b:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    :cond_4
    const/4 v1, 0x6

    if-ge p2, v1, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->f:[B

    .line 10
    invoke-static {p1, v1, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result v1

    if-nez v1, :cond_7

    .line 11
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->g:[B

    .line 12
    invoke-static {p1, v1, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_8

    .line 13
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->c:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 14
    :cond_8
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->h:[B

    array-length v2, v1

    if-ge p2, v2, :cond_9

    const/4 v1, 0x0

    goto :goto_5

    .line 15
    :cond_9
    invoke-static {p1, v1, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_a

    .line 16
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->d:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 17
    :cond_a
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->j:[B

    array-length v2, v1

    if-ge p2, v2, :cond_b

    const/4 v1, 0x0

    goto :goto_6

    .line 18
    :cond_b
    invoke-static {p1, v1, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result v1

    :goto_6
    if-eqz v1, :cond_c

    .line 19
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->e:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    :cond_c
    const/16 v1, 0xc

    if-ge p2, v1, :cond_d

    goto :goto_8

    :cond_d
    const/4 v1, 0x3

    .line 20
    aget-byte v1, p1, v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    goto :goto_8

    .line 21
    :cond_e
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->l:[B

    const/4 v4, 0x4

    invoke-static {p1, v1, v4}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_8

    .line 22
    :cond_f
    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->m:[[B

    array-length v4, v1

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_11

    aget-object v6, v1, v5

    .line 23
    invoke-static {p1, v6, v2}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_12

    .line 24
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->k:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 25
    :cond_12
    sget v1, Lcom/facebook/imageformat/DefaultImageFormatChecker;->p:I

    if-lt p2, v1, :cond_14

    sget-object p2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->n:[B

    .line 26
    invoke-static {p1, p2, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result p2

    if-nez p2, :cond_13

    .line 27
    sget-object p2, Lcom/facebook/imageformat/DefaultImageFormatChecker;->o:[B

    .line 28
    invoke-static {p1, p2, v0}, Lcom/facebook/imageformat/ImageFormatCheckerUtils;->b([B[BI)Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_13
    const/4 v0, 0x1

    :cond_14
    if-eqz v0, :cond_15

    .line 29
    sget-object p1, Lcom/facebook/imageformat/DefaultImageFormats;->l:Lcom/facebook/imageformat/ImageFormat;

    return-object p1

    .line 30
    :cond_15
    sget-object p1, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    return-object p1
.end method
