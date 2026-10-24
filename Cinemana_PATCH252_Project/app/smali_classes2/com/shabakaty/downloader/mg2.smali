.class public final Lcom/shabakaty/downloader/mg2;
.super Ljava/lang/Object;
.source "resolvers.kt"

# interfaces
.implements Lcom/shabakaty/downloader/nt4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/bg2;

.field public final b:Lcom/shabakaty/downloader/qm0;

.field public final c:I

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/m82;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/m82;",
            "Lcom/shabakaty/downloader/lg2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/n82;I)V
    .locals 1

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mg2;->a:Lcom/shabakaty/downloader/bg2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/mg2;->b:Lcom/shabakaty/downloader/qm0;

    .line 4
    iput p4, p0, Lcom/shabakaty/downloader/mg2;->c:I

    .line 5
    invoke-interface {p3}, Lcom/shabakaty/downloader/n82;->t()Ljava/util/List;

    move-result-object p1

    const-string p2, "<this>"

    .line 6
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    .line 10
    :cond_0
    iput-object p2, p0, Lcom/shabakaty/downloader/mg2;->d:Ljava/util/Map;

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/mg2;->a:Lcom/shabakaty/downloader/bg2;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/mg2$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/mg2$a;-><init>(Lcom/shabakaty/downloader/mg2;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/mg2;->e:Lcom/shabakaty/downloader/rr2;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/m82;)Lcom/shabakaty/downloader/kt4;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg2;->e:Lcom/shabakaty/downloader/rr2;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lg2;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/mg2;->a:Lcom/shabakaty/downloader/bg2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->b:Lcom/shabakaty/downloader/nt4;

    .line 3
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/nt4;->a(Lcom/shabakaty/downloader/m82;)Lcom/shabakaty/downloader/kt4;

    move-result-object v0

    :cond_0
    return-object v0
.end method
