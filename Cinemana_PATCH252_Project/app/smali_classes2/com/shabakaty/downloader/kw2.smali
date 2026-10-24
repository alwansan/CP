.class public final Lcom/shabakaty/downloader/kw2;
.super Ljava/lang/Object;
.source "NameResolverImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jw2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/xi3;

.field public final b:Lcom/shabakaty/downloader/wi3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xi3;Lcom/shabakaty/downloader/wi3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/kw2;->a:Lcom/shabakaty/downloader/xi3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/kw2;->b:Lcom/shabakaty/downloader/wi3;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/kw2;->d(I)Lcom/shabakaty/downloader/fr4;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/fr4;->r:Ljava/lang/Object;

    .line 3
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/fr4;->s:Ljava/lang/Object;

    .line 5
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    const-string v3, "."

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    .line 6
    invoke-static/range {v2 .. v9}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const-string v2, "/"

    invoke-static/range {v1 .. v8}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw2;->a:Lcom/shabakaty/downloader/xi3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "strings.getString(index)"

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/kw2;->d(I)Lcom/shabakaty/downloader/fr4;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/fr4;->t:Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final d(I)Lcom/shabakaty/downloader/fr4;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/shabakaty/downloader/fr4<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/kw2;->b:Lcom/shabakaty/downloader/wi3;

    .line 4
    iget-object v3, v3, Lcom/shabakaty/downloader/wi3;->s:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/wi3$c;

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/kw2;->a:Lcom/shabakaty/downloader/xi3;

    .line 6
    iget v4, p1, Lcom/shabakaty/downloader/wi3$c;->u:I

    .line 7
    iget-object v3, v3, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    iget-object v4, p1, Lcom/shabakaty/downloader/wi3$c;->v:Lcom/shabakaty/downloader/wi3$c$c;

    .line 9
    invoke-static {v4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 13
    :goto_1
    iget p1, p1, Lcom/shabakaty/downloader/wi3$c;->t:I

    goto :goto_0

    .line 14
    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/fr4;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/shabakaty/downloader/fr4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
