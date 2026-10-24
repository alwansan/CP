.class public final enum Lcom/shabakaty/downloader/nv1$k;
.super Lcom/shabakaty/downloader/nv1;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/nv1;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/nv1;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/nv1$k;)V

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->s:Lcom/shabakaty/downloader/nv1;

    invoke-static {p1}, Lcom/shabakaty/downloader/nv1;->f(Lcom/shabakaty/downloader/zn4;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 4
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/mv1;->x(Lcom/shabakaty/downloader/zn4$d;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/zn4$e;

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/xu0;

    iget-object v3, p2, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    .line 8
    iget-object v4, p1, Lcom/shabakaty/downloader/zn4$e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ma3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p1, Lcom/shabakaty/downloader/zn4$e;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    iget-object v5, p1, Lcom/shabakaty/downloader/zn4$e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-direct {v1, v3, v4, v5}, Lcom/shabakaty/downloader/xu0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v3, p1, Lcom/shabakaty/downloader/zn4$e;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, "pubSysKey"

    .line 14
    invoke-virtual {v1, v4, v3}, Lcom/shabakaty/downloader/zg2;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;

    .line 15
    :cond_2
    iget-object v3, p2, Lcom/shabakaty/downloader/cr4;->c:Lcom/shabakaty/downloader/wu0;

    .line 16
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    .line 17
    iget-boolean p1, p1, Lcom/shabakaty/downloader/zn4$e;->f:Z

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p2, Lcom/shabakaty/downloader/cr4;->c:Lcom/shabakaty/downloader/wu0;

    const/4 v1, 0x2

    .line 19
    iput v1, p1, Lcom/shabakaty/downloader/wu0;->A:I

    .line 20
    :cond_3
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    :goto_0
    return v2

    .line 21
    :cond_4
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 22
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1
.end method
