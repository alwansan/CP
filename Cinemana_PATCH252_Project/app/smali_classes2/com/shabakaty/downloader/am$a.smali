.class public final Lcom/shabakaty/downloader/am$a;
.super Ljava/lang/Object;
.source "BinaryClassAnnotationAndConstantLoaderImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/he2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/am;->s(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/shabakaty/downloader/am;

.field public final synthetic c:Lcom/shabakaty/downloader/q20;

.field public final synthetic d:Lcom/shabakaty/downloader/s94;

.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/am;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/am;",
            "Lcom/shabakaty/downloader/q20;",
            "Lcom/shabakaty/downloader/s94;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/r8;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/am$a;->b:Lcom/shabakaty/downloader/am;

    iput-object p2, p0, Lcom/shabakaty/downloader/am$a;->c:Lcom/shabakaty/downloader/q20;

    iput-object p3, p0, Lcom/shabakaty/downloader/am$a;->d:Lcom/shabakaty/downloader/s94;

    iput-object p4, p0, Lcom/shabakaty/downloader/am$a;->e:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/am$a;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/s8;

    iget-object v1, p0, Lcom/shabakaty/downloader/am$a;->c:Lcom/shabakaty/downloader/q20;

    invoke-interface {v1}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/am$a;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/shabakaty/downloader/am$a;->d:Lcom/shabakaty/downloader/s94;

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/s8;-><init>(Lcom/shabakaty/downloader/qe2;Ljava/util/Map;Lcom/shabakaty/downloader/s94;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/am$a;->b:Lcom/shabakaty/downloader/am;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/r8;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/ta2;->g:Lcom/shabakaty/downloader/fi1;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/r8;->l()Ljava/util/Map;

    move-result-object v2

    const-string v4, "value"

    invoke-static {v4}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/shabakaty/downloader/lc2;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    check-cast v2, Lcom/shabakaty/downloader/lc2;

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    if-nez v2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v2, v2, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 7
    instance-of v4, v2, Lcom/shabakaty/downloader/lc2$a$b;

    if-eqz v4, :cond_3

    check-cast v2, Lcom/shabakaty/downloader/lc2$a$b;

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    iget-object v2, v2, Lcom/shabakaty/downloader/lc2$a$b;->a:Lcom/shabakaty/downloader/x20;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/x20;->a:Lcom/shabakaty/downloader/v20;

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->g()Lcom/shabakaty/downloader/v20;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Container"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    iget-object v1, v1, Lcom/shabakaty/downloader/k;->a:Lcom/shabakaty/downloader/ae2;

    .line 13
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/he0;->g(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 14
    sget-object v2, Lcom/shabakaty/downloader/ba4;->a:Lcom/shabakaty/downloader/ba4;

    const-string v2, "klass"

    .line 15
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/ho3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/ho3;-><init>()V

    .line 17
    new-instance v4, Lcom/shabakaty/downloader/aa4;

    invoke-direct {v4, v2}, Lcom/shabakaty/downloader/aa4;-><init>(Lcom/shabakaty/downloader/ho3;)V

    invoke-interface {v1, v4, v5}, Lcom/shabakaty/downloader/he2;->j(Lcom/shabakaty/downloader/he2$c;[B)V

    .line 18
    iget-boolean v1, v2, Lcom/shabakaty/downloader/ho3;->r:Z

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    :cond_6
    :goto_2
    if-nez v3, :cond_7

    .line 19
    iget-object v1, p0, Lcom/shabakaty/downloader/am$a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2$a;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/am$a;->b:Lcom/shabakaty/downloader/am;

    sget-object v2, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    invoke-virtual {v1, p2, v2, v0}, Lcom/shabakaty/downloader/am;->s(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;

    move-result-object p2

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/am$a$a;

    invoke-direct {v1, p2, p0, p1, v0}, Lcom/shabakaty/downloader/am$a$a;-><init>(Lcom/shabakaty/downloader/he2$a;Lcom/shabakaty/downloader/am$a;Lcom/shabakaty/downloader/hw2;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/he2$b;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/am$a$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/am$a;->b:Lcom/shabakaty/downloader/am;

    iget-object v2, p0, Lcom/shabakaty/downloader/am$a;->c:Lcom/shabakaty/downloader/q20;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/shabakaty/downloader/am$a$b;-><init>(Lcom/shabakaty/downloader/am$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/am;Lcom/shabakaty/downloader/q20;)V

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/am$a;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/am$a;->g(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)Lcom/shabakaty/downloader/qb0;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/am$a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/shabakaty/downloader/z31;

    invoke-direct {v1, p2, p3}, Lcom/shabakaty/downloader/z31;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/x20;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/am$a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/shabakaty/downloader/lc2;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/lc2;-><init>(Lcom/shabakaty/downloader/x20;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)Lcom/shabakaty/downloader/qb0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/sb0;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/qb0;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Unsupported annotation argument: "

    .line 2
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "message"

    .line 3
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/e51$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/e51$a;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method
