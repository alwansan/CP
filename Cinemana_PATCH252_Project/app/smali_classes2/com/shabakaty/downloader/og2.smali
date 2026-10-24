.class public Lcom/shabakaty/downloader/og2;
.super Lcom/shabakaty/downloader/rm0;
.source "LazyPackageViewDescriptorImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/t93;


# static fields
.field public static final synthetic y:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final t:Lcom/shabakaty/downloader/qu2;

.field public final u:Lcom/shabakaty/downloader/fi1;

.field public final v:Lcom/shabakaty/downloader/d03;

.field public final w:Lcom/shabakaty/downloader/d03;

.field public final x:Lcom/shabakaty/downloader/mr2;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/og2;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "fragments"

    const-string v5, "getFragments()Ljava/util/List;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "empty"

    const-string v4, "getEmpty()Z"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/og2;->y:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qu2;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/md4;)V
    .locals 2

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fi1;->h()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/rm0;-><init>(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/og2;->t:Lcom/shabakaty/downloader/qu2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/og2$b;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/og2$b;-><init>(Lcom/shabakaty/downloader/og2;)V

    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/og2;->v:Lcom/shabakaty/downloader/d03;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/og2$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/og2$a;-><init>(Lcom/shabakaty/downloader/og2;)V

    invoke-interface {p3, p1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/og2;->w:Lcom/shabakaty/downloader/d03;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/pg2;

    new-instance p2, Lcom/shabakaty/downloader/og2$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/og2$c;-><init>(Lcom/shabakaty/downloader/og2;)V

    invoke-direct {p1, p3, p2}, Lcom/shabakaty/downloader/pg2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/og2;->x:Lcom/shabakaty/downloader/mr2;

    return-void
.end method


# virtual methods
.method public F0()Lcom/shabakaty/downloader/nu2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/og2;->t:Lcom/shabakaty/downloader/qu2;

    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/k93;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/og2;->v:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/og2;->y:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/qm0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/og2;->t:Lcom/shabakaty/downloader/qu2;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    const-string v2, "fqName.parent()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e()Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/t93;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/t93;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/t93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/og2;->t:Lcom/shabakaty/downloader/qu2;

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/t93;->F0()Lcom/shabakaty/downloader/nu2;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/og2;->t:Lcom/shabakaty/downloader/qu2;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/og2;->u:Lcom/shabakaty/downloader/fi1;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/og2;->w:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/og2;->y:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/um0<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->l(Lcom/shabakaty/downloader/t93;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/og2;->x:Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method
