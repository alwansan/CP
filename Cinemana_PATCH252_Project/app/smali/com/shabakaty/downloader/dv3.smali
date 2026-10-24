.class public Lcom/shabakaty/downloader/dv3;
.super Ljava/lang/Object;
.source "RtspPlayResponse.java"

# interfaces
.implements Lcom/shabakaty/downloader/eb4;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Lcom/shabakaty/downloader/gv3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/fv3;Ljava/util/List;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/shabakaty/downloader/dv3;->a:I

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/dv3;->b:Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/dv3;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[Lcom/shabakaty/downloader/eb4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/dv3;->a:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/dv3;->b:Ljava/lang/Object;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/zq5;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/zq5;-><init>(II)V

    iput-object p2, p0, Lcom/shabakaty/downloader/dv3;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/dv3;->b:Ljava/lang/Object;

    .line 11
    iput p2, p0, Lcom/shabakaty/downloader/dv3;->a:I

    .line 12
    iput-object p3, p0, Lcom/shabakaty/downloader/dv3;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/shabakaty/downloader/dv3;->b:Ljava/lang/Object;

    .line 15
    iput p2, p0, Lcom/shabakaty/downloader/dv3;->a:I

    .line 16
    iput-object p3, p0, Lcom/shabakaty/downloader/dv3;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/dv3;
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x15

    .line 1
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v2

    .line 4
    iget v3, v0, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v2, :cond_1

    .line 5
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v9

    add-int/lit8 v10, v9, 0x4

    add-int/2addr v6, v10

    .line 8
    invoke-virtual {v0, v9}, Lcom/shabakaty/downloader/ka3;->F(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 10
    new-array v3, v6, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v2, :cond_4

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v11

    and-int/lit8 v11, v11, 0x7f

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v14

    .line 14
    sget-object v15, Lcom/shabakaty/downloader/gw2;->a:[B

    array-length v5, v15

    invoke-static {v15, v4, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    array-length v5, v15

    add-int/2addr v10, v5

    .line 16
    iget-object v5, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 17
    iget v15, v0, Lcom/shabakaty/downloader/ka3;->b:I

    .line 18
    invoke-static {v5, v15, v3, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x21

    if-ne v11, v5, :cond_2

    if-nez v13, :cond_2

    .line 19
    new-instance v5, Lcom/shabakaty/downloader/a55;

    add-int v9, v10, v14

    invoke-direct {v5, v3, v10, v9}, Lcom/shabakaty/downloader/a55;-><init>([BII)V

    .line 20
    invoke-static {v5}, Lcom/shabakaty/downloader/s40;->b(Lcom/shabakaty/downloader/a55;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    :cond_2
    add-int/2addr v10, v14

    .line 21
    invoke-virtual {v0, v14}, Lcom/shabakaty/downloader/ka3;->F(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    const/4 v5, 0x0

    goto :goto_4

    .line 22
    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 23
    :goto_4
    new-instance v0, Lcom/shabakaty/downloader/dv3;

    add-int/2addr v1, v7

    invoke-direct {v0, v5, v1, v9}, Lcom/shabakaty/downloader/dv3;-><init>(Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error parsing HEVC config"

    .line 24
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7

    .line 1
    array-length v0, p1

    iget v1, p0, Lcom/shabakaty/downloader/dv3;->a:I

    if-gt v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dv3;->b:Ljava/lang/Object;

    check-cast v0, [Lcom/shabakaty/downloader/eb4;

    array-length v1, v0

    const/4 v2, 0x0

    move-object v3, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 3
    array-length v5, v3

    iget v6, p0, Lcom/shabakaty/downloader/dv3;->a:I

    if-gt v5, v6, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {v4, p1}, Lcom/shabakaty/downloader/eb4;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    array-length p1, v3

    iget v0, p0, Lcom/shabakaty/downloader/dv3;->a:I

    if-le p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/dv3;->c:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/zq5;

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/zq5;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    :cond_3
    return-object v3
.end method
