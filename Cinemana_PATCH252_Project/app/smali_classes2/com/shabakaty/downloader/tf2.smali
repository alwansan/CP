.class public final Lcom/shabakaty/downloader/tf2;
.super Ljava/lang/Object;
.source "LazyJavaAnnotations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/d9;


# instance fields
.field public final r:Lcom/shabakaty/downloader/bg2;

.field public final s:Lcom/shabakaty/downloader/l62;

.field public final t:Z

.field public final u:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/g62;",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;Z)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tf2;->r:Lcom/shabakaty/downloader/bg2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tf2;->s:Lcom/shabakaty/downloader/l62;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/tf2;->t:Z

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/tf2$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/tf2$a;-><init>(Lcom/shabakaty/downloader/tf2;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tf2;->u:Lcom/shabakaty/downloader/rr2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;ZI)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/tf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/l62;Z)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf2;->s:Lcom/shabakaty/downloader/l62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l62;->y()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/tf2;->s:Lcom/shabakaty/downloader/l62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l62;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf2;->s:Lcom/shabakaty/downloader/l62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l62;->y()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->S(Ljava/lang/Iterable;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/tf2;->u:Lcom/shabakaty/downloader/rr2;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->G(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/k62;->a:Lcom/shabakaty/downloader/k62;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/tb4$a;->n:Lcom/shabakaty/downloader/fi1;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/tf2;->s:Lcom/shabakaty/downloader/l62;

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/tf2;->r:Lcom/shabakaty/downloader/bg2;

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/k62;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/l62;Lcom/shabakaty/downloader/bg2;)Lcom/shabakaty/downloader/r8;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->I(Lcom/shabakaty/downloader/l04;Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/u04;->r:Lcom/shabakaty/downloader/u04;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/t04;->D(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v0

    .line 9
    check-cast v0, Lcom/shabakaty/downloader/pb1;

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/pb1$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/pb1$a;-><init>(Lcom/shabakaty/downloader/pb1;)V

    return-object v1
.end method

.method public m1(Lcom/shabakaty/downloader/fi1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/d9$b;->b(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/fi1;)Z

    move-result p1

    return p1
.end method

.method public r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;
    .locals 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf2;->s:Lcom/shabakaty/downloader/l62;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/l62;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/g62;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/tf2;->u:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/r8;

    :goto_0
    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/k62;->a:Lcom/shabakaty/downloader/k62;

    iget-object v1, p0, Lcom/shabakaty/downloader/tf2;->s:Lcom/shabakaty/downloader/l62;

    iget-object v2, p0, Lcom/shabakaty/downloader/tf2;->r:Lcom/shabakaty/downloader/bg2;

    invoke-virtual {v0, p1, v1, v2}, Lcom/shabakaty/downloader/k62;->a(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/l62;Lcom/shabakaty/downloader/bg2;)Lcom/shabakaty/downloader/r8;

    move-result-object v0

    :cond_1
    return-object v0
.end method
