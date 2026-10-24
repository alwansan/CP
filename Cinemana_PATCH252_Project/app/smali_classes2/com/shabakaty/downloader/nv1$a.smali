.class public final enum Lcom/shabakaty/downloader/nv1$a;
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
    .locals 11

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    iget-object v1, p1, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_4

    .line 2
    iget-object v1, p2, Lcom/shabakaty/downloader/mv1;->q:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4
    iget-object v1, p2, Lcom/shabakaty/downloader/mv1;->q:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-static {v4}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    .line 8
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v5

    const-string v6, "table"

    const-string v7, "tbody"

    const-string v8, "tfoot"

    const-string v9, "thead"

    const-string v10, "tr"

    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/de4;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    iput-boolean v2, p2, Lcom/shabakaty/downloader/mv1;->t:Z

    .line 10
    new-instance v5, Lcom/shabakaty/downloader/zn4$c;

    invoke-direct {v5}, Lcom/shabakaty/downloader/zn4$c;-><init>()V

    .line 11
    iput-object v4, v5, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 12
    iput-object v5, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 13
    invoke-virtual {v0, v5, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    .line 14
    iput-boolean v3, p2, Lcom/shabakaty/downloader/mv1;->t:Z

    goto :goto_0

    .line 15
    :cond_0
    new-instance v5, Lcom/shabakaty/downloader/zn4$c;

    invoke-direct {v5}, Lcom/shabakaty/downloader/zn4$c;-><init>()V

    .line 16
    iput-object v4, v5, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 17
    iput-object v5, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 18
    invoke-virtual {v0, v5, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    goto :goto_0

    .line 19
    :cond_1
    new-instance v5, Lcom/shabakaty/downloader/zn4$c;

    invoke-direct {v5}, Lcom/shabakaty/downloader/zn4$c;-><init>()V

    .line 20
    iput-object v4, v5, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {p2, v5}, Lcom/shabakaty/downloader/mv1;->w(Lcom/shabakaty/downloader/zn4$c;)V

    goto :goto_0

    .line 22
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->q:Ljava/util/List;

    .line 23
    :cond_3
    iget-object v0, p2, Lcom/shabakaty/downloader/mv1;->l:Lcom/shabakaty/downloader/nv1;

    .line 24
    iput-object v0, p2, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 25
    iput-object p1, p2, Lcom/shabakaty/downloader/cr4;->f:Lcom/shabakaty/downloader/zn4;

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/nv1;->j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z

    move-result p1

    return p1

    .line 27
    :cond_4
    check-cast p1, Lcom/shabakaty/downloader/zn4$c;

    .line 28
    iget-object v0, p1, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 29
    sget-object v1, Lcom/shabakaty/downloader/nv1;->N:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    invoke-virtual {p2, p0}, Lcom/shabakaty/downloader/mv1;->m(Lcom/shabakaty/downloader/nv1;)V

    return v3

    .line 32
    :cond_5
    iget-object p2, p2, Lcom/shabakaty/downloader/mv1;->q:Ljava/util/List;

    .line 33
    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 34
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method
