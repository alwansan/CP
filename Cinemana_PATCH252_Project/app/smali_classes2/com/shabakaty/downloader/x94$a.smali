.class public final Lcom/shabakaty/downloader/x94$a;
.super Lcom/shabakaty/downloader/af2;
.source "specialBuiltinMembers.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/x94;->b(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tq;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/x94$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/x94$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x94$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/x94$a;->r:Lcom/shabakaty/downloader/x94$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->l(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;

    move-result-object p1

    const-string v1, "callableMemberDescriptor"

    .line 4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/vo;->a:Lcom/shabakaty/downloader/vo;

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/vo;->e:Ljava/util/Set;

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    sget-object v2, Lcom/shabakaty/downloader/vo;->d:Ljava/util/Set;

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->c(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/m50;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_4

    .line 11
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object p1

    const-string v2, "overriddenDescriptors"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_4

    .line 13
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/tq;

    .line 14
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v5, Lcom/shabakaty/downloader/vo;->a:Lcom/shabakaty/downloader/vo;

    .line 17
    sget-object v5, Lcom/shabakaty/downloader/vo;->e:Ljava/util/Set;

    .line 18
    invoke-interface {v4}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    sget-object v5, Lcom/shabakaty/downloader/vo;->d:Ljava/util/Set;

    .line 20
    invoke-static {v4}, Lcom/shabakaty/downloader/hr0;->c(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/m50;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 21
    :cond_6
    invoke-static {v4}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 22
    :cond_7
    invoke-interface {v4}, Lcom/shabakaty/downloader/tq;->f()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    .line 24
    :cond_8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/tq;

    .line 25
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/d30;->a(Lcom/shabakaty/downloader/tq;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_0
    const/4 v4, 0x1

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    :goto_3
    const/4 v3, 0x1

    .line 26
    :cond_b
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
