.class public final enum Lcom/shabakaty/downloader/do4$k;
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
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->j()C

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x26

    if-eq v0, v1, :cond_5

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_4

    const v3, 0xffff

    if-eq v0, v3, :cond_3

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->b()V

    .line 3
    iget v0, p2, Lcom/shabakaty/downloader/ez;->e:I

    .line 4
    iget v3, p2, Lcom/shabakaty/downloader/ez;->c:I

    .line 5
    iget-object v4, p2, Lcom/shabakaty/downloader/ez;->a:[C

    .line 6
    :goto_0
    iget v5, p2, Lcom/shabakaty/downloader/ez;->e:I

    if-ge v5, v3, :cond_1

    .line 7
    aget-char v6, v4, v5

    if-eq v6, v1, :cond_1

    if-eq v6, v2, :cond_1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 8
    iput v5, p2, Lcom/shabakaty/downloader/ez;->e:I

    goto :goto_0

    :cond_1
    :goto_1
    if-le v5, v0, :cond_2

    .line 9
    iget-object v1, p2, Lcom/shabakaty/downloader/ez;->a:[C

    iget-object p2, p2, Lcom/shabakaty/downloader/ez;->h:[Ljava/lang/String;

    sub-int/2addr v5, v0

    invoke-static {v1, p2, v0, v5}, Lcom/shabakaty/downloader/ez;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    const-string p2, ""

    .line 10
    :goto_2
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->f(Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :cond_3
    new-instance p2, Lcom/shabakaty/downloader/zn4$f;

    invoke-direct {p2}, Lcom/shabakaty/downloader/zn4$f;-><init>()V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    goto :goto_3

    .line 12
    :cond_4
    sget-object p2, Lcom/shabakaty/downloader/do4;->y:Lcom/shabakaty/downloader/do4;

    .line 13
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->a()V

    .line 14
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_3

    .line 15
    :cond_5
    sget-object p2, Lcom/shabakaty/downloader/do4;->s:Lcom/shabakaty/downloader/do4;

    .line 16
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->a()V

    .line 17
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 19
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->d()C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->d(C)V

    :goto_3
    return-void
.end method
