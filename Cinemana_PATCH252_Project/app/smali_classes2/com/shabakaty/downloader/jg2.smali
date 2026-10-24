.class public final Lcom/shabakaty/downloader/jg2;
.super Lcom/shabakaty/downloader/nh0$b;
.source "LazyJavaStaticClassScope.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/nh0$b<",
        "Lcom/shabakaty/downloader/q20;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/q20;

.field public final synthetic b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/mr2;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q20;Ljava/util/Set;Lcom/shabakaty/downloader/tm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q20;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/mr2;",
            "+",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/jg2;->a:Lcom/shabakaty/downloader/q20;

    iput-object p2, p0, Lcom/shabakaty/downloader/jg2;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/shabakaty/downloader/jg2;->c:Lcom/shabakaty/downloader/tm1;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nh0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/q20;

    const-string v0, "current"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/jg2;->a:Lcom/shabakaty/downloader/q20;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->Z()Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    const-string v0, "current.staticScope"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v0, p1, Lcom/shabakaty/downloader/kg2;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/jg2;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/shabakaty/downloader/jg2;->c:Lcom/shabakaty/downloader/tm1;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
