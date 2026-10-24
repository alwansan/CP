.class public Lcom/shabakaty/downloader/yu0;
.super Ljava/lang/Object;
.source "DolbyVisionConfig.java"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/yu0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/yu0;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p1, v1, v0

    const/4 v0, 0x0

    aput p2, v1, v0

    .line 4
    const-class v0, B

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/yu0;->b:I

    .line 6
    iput p2, p0, Lcom/shabakaty/downloader/yu0;->c:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/yu0;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/shabakaty/downloader/yu0;->b:I

    .line 9
    iput p2, p0, Lcom/shabakaty/downloader/yu0;->c:I

    .line 10
    iput-object p3, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yu0;
    .locals 6

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    shl-int/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne v1, v0, :cond_1

    const-string v0, "hev1"

    goto :goto_1

    :cond_1
    const/16 v0, 0x9

    if-ne v1, v0, :cond_2

    const-string v0, "avc3"

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    const-string v0, "dvhe"

    :goto_1
    const/16 v2, 0xa

    const-string v3, ".0"

    if-ge p0, v2, :cond_4

    move-object v2, v3

    goto :goto_2

    :cond_4
    const-string v2, "."

    .line 4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/yu0;

    invoke-direct {v2, v1, p0, v0}, Lcom/shabakaty/downloader/yu0;-><init>(IILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v2, v1, 0x1

    .line 2
    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    .line 4
    iget v6, p0, Lcom/shabakaty/downloader/yu0;->b:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xa

    move-object v4, v2

    .line 5
    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/hd;->J([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    .line 7
    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iget v7, p0, Lcom/shabakaty/downloader/yu0;->b:I

    sub-int v5, v0, v7

    const/4 v6, 0x0

    const/4 v8, 0x4

    .line 8
    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/hd;->J([Ljava/lang/Object;[Ljava/lang/Object;IIII)[Ljava/lang/Object;

    .line 9
    iput-object v2, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/yu0;->b:I

    .line 11
    iput v1, p0, Lcom/shabakaty/downloader/yu0;->c:I

    return-void
.end method

.method public b(II)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    check-cast v0, [[B

    aget-object p2, v0, p2

    aget-byte p1, p2, p1

    return p1
.end method

.method public d(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    check-cast v0, [[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public e(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    check-cast v0, [[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/yu0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/yu0;->b:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/shabakaty/downloader/yu0;->c:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lcom/shabakaty/downloader/yu0;->c:I

    if-ge v2, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    check-cast v3, [[B

    aget-object v3, v3, v2

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, p0, Lcom/shabakaty/downloader/yu0;->b:I

    if-ge v4, v5, :cond_2

    .line 5
    aget-byte v5, v3, v4

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const-string v5, "  "

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v5, " 1"

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v5, " 0"

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
