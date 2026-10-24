.class public Lcom/shabakaty/downloader/pp1$d$a;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pp1$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/shabakaty/downloader/pp1$e;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/shabakaty/downloader/pp1$e;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pp1$d;ZLcom/shabakaty/downloader/pp1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$d;->r:Lcom/shabakaty/downloader/ua1;

    .line 3
    iget-boolean p3, p1, Lcom/shabakaty/downloader/ua1;->c:Z

    if-eqz p3, :cond_0

    .line 4
    new-instance p3, Lcom/shabakaty/downloader/nf2$c;

    iget-object p1, p1, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c94;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/c94$d;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c94$d;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/shabakaty/downloader/nf2$c;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/ua1;->a:Lcom/shabakaty/downloader/c94;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c94;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/c94$d;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c94$d;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 6
    :goto_0
    iput-object p3, p0, Lcom/shabakaty/downloader/pp1$d$a;->a:Ljava/util/Iterator;

    .line 7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$d$a;->b:Ljava/util/Map$Entry;

    .line 9
    :cond_1
    iput-boolean p2, p0, Lcom/shabakaty/downloader/pp1$d$a;->c:Z

    return-void
.end method


# virtual methods
.method public a(ILcom/shabakaty/downloader/w40;)V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$d$a;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/pp1$e;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/pp1$e;->s:I

    if-ge v0, p1, :cond_7

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$d$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/pp1$e;

    .line 4
    iget-boolean v1, p0, Lcom/shabakaty/downloader/pp1$d$a;->c:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/pp1$e;->t:Lcom/shabakaty/downloader/b75;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/b75;->r:Lcom/shabakaty/downloader/d75;

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/d75;->A:Lcom/shabakaty/downloader/d75;

    if-ne v1, v2, :cond_0

    .line 8
    iget-boolean v1, v0, Lcom/shabakaty/downloader/pp1$e;->u:Z

    if-nez v1, :cond_0

    .line 9
    iget v0, v0, Lcom/shabakaty/downloader/pp1$e;->s:I

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/pp1$d$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/es2;

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 11
    invoke-virtual {p2, v2, v3}, Lcom/shabakaty/downloader/w40;->A(II)V

    const/16 v4, 0x10

    .line 12
    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 14
    invoke-virtual {p2, v3, v1}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    const/4 v0, 0x4

    .line 15
    invoke-virtual {p2, v2, v0}, Lcom/shabakaty/downloader/w40;->A(II)V

    goto/16 :goto_4

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/pp1$d$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/ua1;->d:Lcom/shabakaty/downloader/ua1;

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pp1$e;->g()Lcom/shabakaty/downloader/b75;

    move-result-object v2

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pp1$e;->d()I

    move-result v3

    .line 19
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pp1$e;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    check-cast v1, Ljava/util/List;

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pp1$e;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 22
    invoke-virtual {p2, v3, v0}, Lcom/shabakaty/downloader/w40;->A(II)V

    const/4 v0, 0x0

    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 24
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/ua1;->d(Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 27
    invoke-static {p2, v2, v1}, Lcom/shabakaty/downloader/ua1;->o(Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/b75;Ljava/lang/Object;)V

    goto :goto_2

    .line 28
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 29
    invoke-static {p2, v2, v3, v1}, Lcom/shabakaty/downloader/ua1;->n(Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/b75;ILjava/lang/Object;)V

    goto :goto_3

    .line 30
    :cond_3
    instance-of v0, v1, Lcom/shabakaty/downloader/nf2;

    if-eqz v0, :cond_4

    .line 31
    check-cast v1, Lcom/shabakaty/downloader/nf2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/nf2;->a()Lcom/shabakaty/downloader/es2;

    move-result-object v0

    invoke-static {p2, v2, v3, v0}, Lcom/shabakaty/downloader/ua1;->n(Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/b75;ILjava/lang/Object;)V

    goto :goto_4

    .line 32
    :cond_4
    invoke-static {p2, v2, v3, v1}, Lcom/shabakaty/downloader/ua1;->n(Lcom/shabakaty/downloader/w40;Lcom/shabakaty/downloader/b75;ILjava/lang/Object;)V

    .line 33
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/shabakaty/downloader/pp1$d$a;->b:Ljava/util/Map$Entry;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/shabakaty/downloader/pp1$d$a;->b:Ljava/util/Map$Entry;

    goto/16 :goto_0

    :cond_7
    return-void
.end method
