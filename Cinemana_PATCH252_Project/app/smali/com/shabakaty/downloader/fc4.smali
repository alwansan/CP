.class public final Lcom/shabakaty/downloader/fc4;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field public static final e:Lcom/shabakaty/downloader/fc4;


# instance fields
.field public final a:I

.field public final b:Lcom/shabakaty/downloader/ao4;

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fc4;

    sget-object v1, Lcom/shabakaty/downloader/ao4;->b:Lcom/shabakaty/downloader/ao4;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/shabakaty/downloader/fc4;-><init>(Lcom/shabakaty/downloader/ao4;III)V

    sput-object v0, Lcom/shabakaty/downloader/fc4;->e:Lcom/shabakaty/downloader/fc4;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ao4;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fc4;->b:Lcom/shabakaty/downloader/ao4;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/fc4;->a:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/fc4;->c:I

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/fc4;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/shabakaty/downloader/fc4;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc4;->b:Lcom/shabakaty/downloader/ao4;

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/fc4;->a:I

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/fc4;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 4
    :cond_0
    sget-object v4, Lcom/shabakaty/downloader/et1;->c:[[I

    aget-object v1, v4, v1

    aget v1, v1, v3

    const v4, 0xffff

    and-int/2addr v4, v1

    shr-int/lit8 v1, v1, 0x10

    .line 5
    invoke-virtual {v0, v4, v1}, Lcom/shabakaty/downloader/ao4;->a(II)Lcom/shabakaty/downloader/ao4;

    move-result-object v0

    add-int/2addr v2, v1

    const/4 v1, 0x0

    .line 6
    :cond_1
    iget v3, p0, Lcom/shabakaty/downloader/fc4;->c:I

    if-eqz v3, :cond_4

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    const/16 v4, 0x9

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v4, 0x12

    .line 7
    :goto_1
    new-instance v5, Lcom/shabakaty/downloader/fc4;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v4

    invoke-direct {v5, v0, v1, v3, v2}, Lcom/shabakaty/downloader/fc4;-><init>(Lcom/shabakaty/downloader/ao4;III)V

    const/16 v0, 0x81e

    if-ne v3, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 8
    invoke-virtual {v5, p1}, Lcom/shabakaty/downloader/fc4;->b(I)Lcom/shabakaty/downloader/fc4;

    move-result-object v5

    :cond_5
    return-object v5
.end method

.method public b(I)Lcom/shabakaty/downloader/fc4;
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fc4;->c:I

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/fc4;->b:Lcom/shabakaty/downloader/ao4;

    sub-int/2addr p1, v0

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/fm;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v0, v3}, Lcom/shabakaty/downloader/fm;-><init>(Lcom/shabakaty/downloader/ao4;III)V

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/fc4;

    iget v0, p0, Lcom/shabakaty/downloader/fc4;->a:I

    iget v1, p0, Lcom/shabakaty/downloader/fc4;->d:I

    invoke-direct {p1, v2, v0, v3, v1}, Lcom/shabakaty/downloader/fc4;-><init>(Lcom/shabakaty/downloader/ao4;III)V

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/fc4;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fc4;->d:I

    sget-object v1, Lcom/shabakaty/downloader/et1;->c:[[I

    iget v2, p0, Lcom/shabakaty/downloader/fc4;->a:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/shabakaty/downloader/fc4;->a:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 2
    iget v1, p1, Lcom/shabakaty/downloader/fc4;->c:I

    if-lez v1, :cond_1

    iget v2, p0, Lcom/shabakaty/downloader/fc4;->c:I

    if-eqz v2, :cond_0

    if-le v2, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0xa

    .line 3
    :cond_1
    iget p1, p1, Lcom/shabakaty/downloader/fc4;->d:I

    if-gt v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public d(II)Lcom/shabakaty/downloader/fc4;
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/fc4;->d:I

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/fc4;->b:Lcom/shabakaty/downloader/ao4;

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/fc4;->a:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/et1;->c:[[I

    aget-object v2, v3, v2

    aget v2, v2, p1

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v2, v2, 0x10

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/ao4;->a(II)Lcom/shabakaty/downloader/ao4;

    move-result-object v1

    add-int/2addr v0, v2

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    .line 6
    :goto_0
    invoke-virtual {v1, p2, v2}, Lcom/shabakaty/downloader/ao4;->a(II)Lcom/shabakaty/downloader/ao4;

    move-result-object p2

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/fc4;

    const/4 v3, 0x0

    add-int/2addr v0, v2

    invoke-direct {v1, p2, p1, v3, v0}, Lcom/shabakaty/downloader/fc4;-><init>(Lcom/shabakaty/downloader/ao4;III)V

    return-object v1
.end method

.method public e(II)Lcom/shabakaty/downloader/fc4;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fc4;->b:Lcom/shabakaty/downloader/ao4;

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/fc4;->a:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    .line 3
    :goto_0
    sget-object v4, Lcom/shabakaty/downloader/et1;->e:[[I

    aget-object v1, v4, v1

    aget p1, v1, p1

    invoke-virtual {v0, p1, v3}, Lcom/shabakaty/downloader/ao4;->a(II)Lcom/shabakaty/downloader/ao4;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2, v2}, Lcom/shabakaty/downloader/ao4;->a(II)Lcom/shabakaty/downloader/ao4;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/fc4;

    iget v0, p0, Lcom/shabakaty/downloader/fc4;->a:I

    const/4 v1, 0x0

    iget v4, p0, Lcom/shabakaty/downloader/fc4;->d:I

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-direct {p2, p1, v0, v1, v4}, Lcom/shabakaty/downloader/fc4;-><init>(Lcom/shabakaty/downloader/ao4;III)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/et1;->b:[Ljava/lang/String;

    iget v2, p0, Lcom/shabakaty/downloader/fc4;->a:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/fc4;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/fc4;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s bits=%d bytes=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
