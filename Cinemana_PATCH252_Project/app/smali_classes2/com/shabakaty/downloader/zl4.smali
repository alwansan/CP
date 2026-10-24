.class public Lcom/shabakaty/downloader/zl4;
.super Lcom/shabakaty/downloader/zg2;
.source "TextNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zg2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    return-void
.end method

.method public static B(Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 6

    .line 1
    iget-boolean v0, p3, Lcom/shabakaty/downloader/wu0$a;->v:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/sz2;->s:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    instance-of v1, v0, Lcom/shabakaty/downloader/k21;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/k21;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 5
    iget-boolean v0, v0, Lcom/shabakaty/downloader/kk4;->c:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/sz2;->q(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V

    .line 8
    :cond_1
    :goto_0
    iget-boolean p2, p3, Lcom/shabakaty/downloader/wu0$a;->v:Z

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    .line 10
    instance-of v0, p2, Lcom/shabakaty/downloader/k21;

    if-eqz v0, :cond_2

    .line 11
    invoke-static {p2}, Lcom/shabakaty/downloader/k21;->I(Lcom/shabakaty/downloader/sz2;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    const/4 v4, 0x0

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/v31;->b(Ljava/lang/Appendable;Ljava/lang/String;Lcom/shabakaty/downloader/wu0$a;ZZZ)V

    return-void
.end method

.method public v(Ljava/lang/Appendable;ILcom/shabakaty/downloader/wu0$a;)V
    .locals 0

    return-void
.end method
