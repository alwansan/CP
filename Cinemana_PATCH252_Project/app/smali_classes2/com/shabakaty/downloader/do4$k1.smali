.class public final enum Lcom/shabakaty/downloader/do4$k1;
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
    .locals 5

    const-string v0, "]]>"

    .line 1
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->r(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2
    iget-object v2, p2, Lcom/shabakaty/downloader/ez;->a:[C

    iget-object v3, p2, Lcom/shabakaty/downloader/ez;->h:[Ljava/lang/String;

    iget v4, p2, Lcom/shabakaty/downloader/ez;->e:I

    invoke-static {v2, v3, v4, v1}, Lcom/shabakaty/downloader/ez;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget v3, p2, Lcom/shabakaty/downloader/ez;->e:I

    add-int/2addr v3, v1

    iput v3, p2, Lcom/shabakaty/downloader/ez;->e:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->i()Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_0
    iget-object v1, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->k()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    :cond_1
    new-instance p2, Lcom/shabakaty/downloader/zn4$b;

    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/zn4$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    .line 8
    sget-object p2, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    .line 9
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :cond_2
    return-void
.end method
