.class public final Lcom/shabakaty/downloader/am$a$b;
.super Ljava/lang/Object;
.source "BinaryClassAnnotationAndConstantLoaderImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/he2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/am$a;->c(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/he2$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/shabakaty/downloader/am$a;

.field public final synthetic c:Lcom/shabakaty/downloader/hw2;

.field public final synthetic d:Lcom/shabakaty/downloader/am;

.field public final synthetic e:Lcom/shabakaty/downloader/q20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/am$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/am;Lcom/shabakaty/downloader/q20;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/am$a$b;->b:Lcom/shabakaty/downloader/am$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/am$a$b;->c:Lcom/shabakaty/downloader/hw2;

    iput-object p3, p0, Lcom/shabakaty/downloader/am$a$b;->d:Lcom/shabakaty/downloader/am;

    iput-object p4, p0, Lcom/shabakaty/downloader/am$a$b;->e:Lcom/shabakaty/downloader/q20;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/am$a$b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b;->c:Lcom/shabakaty/downloader/hw2;

    iget-object v1, p0, Lcom/shabakaty/downloader/am$a$b;->e:Lcom/shabakaty/downloader/q20;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fr0;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/sz4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/am$a$b;->b:Lcom/shabakaty/downloader/am$a;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/am$a;->a:Ljava/util/HashMap;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/am$a$b;->c:Lcom/shabakaty/downloader/hw2;

    iget-object v3, p0, Lcom/shabakaty/downloader/am$a$b;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/shabakaty/downloader/md0;->g(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v4, "parameter.type"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/fd;

    new-instance v5, Lcom/shabakaty/downloader/rb0;

    invoke-direct {v5, v0}, Lcom/shabakaty/downloader/rb0;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-direct {v4, v3, v5}, Lcom/shabakaty/downloader/fd;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/tm1;)V

    .line 6
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shabakaty/downloader/am$a$b;->b:Lcom/shabakaty/downloader/am$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/am$a$b;->c:Lcom/shabakaty/downloader/hw2;

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/shabakaty/downloader/am$a;->g(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)Lcom/shabakaty/downloader/qb0;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/shabakaty/downloader/z31;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/z31;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2$a;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/am$a$b;->d:Lcom/shabakaty/downloader/am;

    sget-object v2, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    invoke-virtual {v1, p1, v2, v0}, Lcom/shabakaty/downloader/am;->s(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;Ljava/util/List;)Lcom/shabakaty/downloader/he2$a;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/am$a$b$a;

    invoke-direct {v1, p1, p0, v0}, Lcom/shabakaty/downloader/am$a$b$a;-><init>(Lcom/shabakaty/downloader/he2$a;Lcom/shabakaty/downloader/am$a$b;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public e(Lcom/shabakaty/downloader/x20;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/am$a$b;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/shabakaty/downloader/lc2;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/lc2;-><init>(Lcom/shabakaty/downloader/x20;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
