.class public final Lcom/shabakaty/downloader/ds0$c$d;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ds0$c;-><init>(Lcom/shabakaty/downloader/ds0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/hw2;",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/yh3;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ds0$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ds0$c;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$c$d;->r:Lcom/shabakaty/downloader/ds0$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hw2;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ds0$c$d;->r:Lcom/shabakaty/downloader/ds0$c;

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/ds0$c;->b:Ljava/util/Map;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/vi3;->J:Lcom/shabakaty/downloader/na3;

    const-string v4, "PARSER"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v4, v1, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 7
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_0

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/ds0$c;->i:Lcom/shabakaty/downloader/ds0;

    .line 10
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/ds0$c$a;

    invoke-direct {v2, v3, v5, v1}, Lcom/shabakaty/downloader/ds0$c$a;-><init>(Lcom/shabakaty/downloader/na3;Ljava/io/ByteArrayInputStream;Lcom/shabakaty/downloader/ds0;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/q04;->x(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/l04;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/shabakaty/downloader/t04;->J(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object v1

    .line 13
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Lcom/shabakaty/downloader/vi3;

    .line 16
    iget-object v5, v4, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 17
    iget-object v5, v5, Lcom/shabakaty/downloader/rr0;->i:Lcom/shabakaty/downloader/jr2;

    .line 18
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/jr2;->g(Lcom/shabakaty/downloader/vi3;)Lcom/shabakaty/downloader/yh3;

    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v4, p1, v2}, Lcom/shabakaty/downloader/ds0;->k(Lcom/shabakaty/downloader/hw2;Ljava/util/List;)V

    .line 21
    invoke-static {v2}, Lcom/shabakaty/downloader/md0;->g(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
