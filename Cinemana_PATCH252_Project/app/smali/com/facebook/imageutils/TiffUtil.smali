.class public Lcom/facebook/imageutils/TiffUtil;
.super Ljava/lang/Object;
.source "TiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageutils/TiffUtil$TiffHeader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;I)I
    .locals 11

    .line 1
    new-instance v0, Lcom/facebook/imageutils/TiffUtil$TiffHeader;

    .line 2
    invoke-direct {v0}, Lcom/facebook/imageutils/TiffUtil$TiffHeader;-><init>()V

    .line 3
    const-class v1, Lcom/facebook/imageutils/TiffUtil;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-gt p1, v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p0, v4, v3}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v6

    add-int/lit8 p1, p1, -0x4

    const v7, 0x49492a00    # 823968.0f

    if-eq v6, v7, :cond_1

    const v8, 0x4d4d002a    # 2.1495875E8f

    if-eq v6, v8, :cond_1

    const-string p1, "Invalid TIFF header"

    .line 5
    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 6
    :goto_0
    iput-boolean v6, v0, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->a:Z

    .line 7
    invoke-static {p0, v4, v6}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v6

    iput v6, v0, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->b:I

    add-int/lit8 p1, p1, -0x4

    if-lt v6, v5, :cond_3

    sub-int/2addr v6, v5

    if-le v6, p1, :cond_4

    :cond_3
    const-string p1, "Invalid offset"

    .line 8
    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    .line 9
    :cond_4
    iget v1, v0, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->b:I

    sub-int/2addr v1, v5

    if-eqz p1, :cond_c

    if-le v1, p1, :cond_5

    goto :goto_5

    :cond_5
    int-to-long v5, v1

    .line 10
    invoke-virtual {p0, v5, v6}, Ljava/io/InputStream;->skip(J)J

    sub-int/2addr p1, v1

    .line 11
    iget-boolean v1, v0, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->a:Z

    const/16 v5, 0x112

    const/16 v6, 0xe

    const/4 v7, 0x2

    if-ge p1, v6, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    invoke-static {p0, v7, v1}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v6

    add-int/lit8 p1, p1, -0x2

    :goto_2
    add-int/lit8 v8, v6, -0x1

    if-lez v6, :cond_8

    const/16 v6, 0xc

    if-lt p1, v6, :cond_8

    .line 13
    invoke-static {p0, v7, v1}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v6

    add-int/lit8 p1, p1, -0x2

    if-ne v6, v5, :cond_7

    goto :goto_4

    :cond_7
    const-wide/16 v9, 0xa

    .line 14
    invoke-virtual {p0, v9, v10}, Ljava/io/InputStream;->skip(J)J

    add-int/lit8 p1, p1, -0xa

    move v6, v8

    goto :goto_2

    :cond_8
    :goto_3
    const/4 p1, 0x0

    .line 15
    :goto_4
    iget-boolean v0, v0, Lcom/facebook/imageutils/TiffUtil$TiffHeader;->a:Z

    const/16 v1, 0xa

    if-ge p1, v1, :cond_9

    goto :goto_5

    .line 16
    :cond_9
    invoke-static {p0, v7, v0}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_a

    goto :goto_5

    .line 17
    :cond_a
    invoke-static {p0, v4, v0}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result p1

    if-eq p1, v2, :cond_b

    goto :goto_5

    .line 18
    :cond_b
    invoke-static {p0, v7, v0}, Lcom/facebook/imageutils/StreamProcessor;->a(Ljava/io/InputStream;IZ)I

    move-result v3

    :cond_c
    :goto_5
    return v3
.end method
