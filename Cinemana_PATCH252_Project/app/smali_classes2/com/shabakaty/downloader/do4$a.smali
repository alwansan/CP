.class public final enum Lcom/shabakaty/downloader/do4$a;
.super Lcom/shabakaty/downloader/do4;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/do4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/do4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/do4$k;)V

    return-void
.end method


# virtual methods
.method public D(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->b()V

    .line 2
    iget v1, p2, Lcom/shabakaty/downloader/ez;->e:I

    .line 3
    iget v2, p2, Lcom/shabakaty/downloader/ez;->c:I

    .line 4
    iget-object v3, p2, Lcom/shabakaty/downloader/ez;->a:[C

    .line 5
    :goto_0
    iget v4, p2, Lcom/shabakaty/downloader/ez;->e:I

    const/16 v5, 0x3e

    const/16 v6, 0x2f

    const/16 v7, 0x20

    const/16 v8, 0xc

    const/16 v9, 0xd

    const/16 v10, 0xa

    const/16 v11, 0x9

    if-ge v4, v2, :cond_1

    .line 6
    aget-char v12, v3, v4

    if-eq v12, v11, :cond_1

    if-eq v12, v10, :cond_1

    if-eq v12, v9, :cond_1

    if-eq v12, v8, :cond_1

    if-eq v12, v7, :cond_1

    if-eq v12, v6, :cond_1

    if-eq v12, v5, :cond_1

    if-nez v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 7
    iput v4, p2, Lcom/shabakaty/downloader/ez;->e:I

    goto :goto_0

    :cond_1
    :goto_1
    if-le v4, v1, :cond_2

    .line 8
    iget-object v2, p2, Lcom/shabakaty/downloader/ez;->a:[C

    iget-object v3, p2, Lcom/shabakaty/downloader/ez;->h:[Ljava/lang/String;

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v1, v4}, Lcom/shabakaty/downloader/ez;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    .line 9
    :goto_2
    iget-object v2, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/zn4$i;->n(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->d()C

    move-result p2

    if-eqz p2, :cond_7

    if-eq p2, v7, :cond_6

    if-eq p2, v6, :cond_5

    if-eq p2, v5, :cond_4

    const v1, 0xffff

    if-eq p2, v1, :cond_3

    if-eq p2, v11, :cond_6

    if-eq p2, v10, :cond_6

    if-eq p2, v8, :cond_6

    if-eq p2, v9, :cond_6

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zn4$i;->m(C)V

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    .line 13
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->g()V

    .line 15
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_3

    .line 16
    :cond_5
    sget-object p2, Lcom/shabakaty/downloader/do4;->g0:Lcom/shabakaty/downloader/do4;

    .line 17
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_3

    .line 18
    :cond_6
    sget-object p2, Lcom/shabakaty/downloader/do4;->Y:Lcom/shabakaty/downloader/do4;

    .line 19
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_3

    .line 20
    :cond_7
    iget-object p1, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    .line 21
    sget-object p2, Lcom/shabakaty/downloader/do4;->K0:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zn4$i;->n(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
