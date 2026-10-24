.class public Lcom/shabakaty/downloader/p20;
.super Ljava/lang/Object;
.source "DeclaredMemberIndex.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xm0;


# instance fields
.field public final a:Lcom/shabakaty/downloader/q62;

.field public final b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/k72;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/l72;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/l72;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/f72;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/w72;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/tm1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q62;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/k72;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberFilter"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/p20;->a:Lcom/shabakaty/downloader/q62;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/p20;->b:Lcom/shabakaty/downloader/tm1;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/p20$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/p20$a;-><init>(Lcom/shabakaty/downloader/p20;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/p20;->c:Lcom/shabakaty/downloader/tm1;

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->S()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/t04;->C(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/pb1;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/pb1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/pb1$a;-><init>(Lcom/shabakaty/downloader/pb1;)V

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pb1$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pb1$a;->next()Ljava/lang/Object;

    move-result-object p1

    .line 10
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/l72;

    .line 11
    invoke-interface {v1}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 16
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    iput-object p2, p0, Lcom/shabakaty/downloader/p20;->d:Ljava/util/Map;

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/p20;->a:Lcom/shabakaty/downloader/q62;

    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->G()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/downloader/p20;->b:Lcom/shabakaty/downloader/tm1;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/t04;->C(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    check-cast p1, Lcom/shabakaty/downloader/pb1;

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/pb1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/pb1$a;-><init>(Lcom/shabakaty/downloader/pb1;)V

    .line 22
    :goto_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pb1$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/shabakaty/downloader/pb1$a;->next()Ljava/lang/Object;

    move-result-object p1

    .line 23
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/f72;

    .line 24
    invoke-interface {v1}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/shabakaty/downloader/p20;->e:Ljava/util/Map;

    .line 25
    iget-object p1, p0, Lcom/shabakaty/downloader/p20;->a:Lcom/shabakaty/downloader/q62;

    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->m()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/downloader/p20;->b:Lcom/shabakaty/downloader/tm1;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/16 p1, 0xa

    .line 28
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_5

    const/16 p1, 0x10

    .line 29
    :cond_5
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/w72;

    .line 32
    invoke-interface {v1}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iput-object p2, p0, Lcom/shabakaty/downloader/p20;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/w72;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p20;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/w72;

    return-object p1
.end method

.method public b()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p20;->a:Lcom/shabakaty/downloader/q62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->S()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/p20;->c:Lcom/shabakaty/downloader/tm1;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->C(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/pb1;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/pb1$a;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/pb1$a;-><init>(Lcom/shabakaty/downloader/pb1;)V

    .line 4
    :goto_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/pb1$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/shabakaty/downloader/pb1$a;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/l72;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/l72;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p20;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_0
    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/f72;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p20;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/f72;

    return-object p1
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p20;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p20;->a:Lcom/shabakaty/downloader/q62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->G()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/p20;->b:Lcom/shabakaty/downloader/tm1;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->C(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/pb1;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/pb1$a;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/pb1$a;-><init>(Lcom/shabakaty/downloader/pb1;)V

    .line 4
    :goto_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/pb1$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/shabakaty/downloader/pb1$a;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/f72;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
