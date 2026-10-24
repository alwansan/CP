.class public final Lcom/shabakaty/downloader/bd2$a$e;
.super Lcom/shabakaty/downloader/af2;
.source "KPackageImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bd2$a;-><init>(Lcom/shabakaty/downloader/bd2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/mr2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bd2$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bd2$a;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bd2$a$e;->r:Lcom/shabakaty/downloader/bd2$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bd2$a$e;->r:Lcom/shabakaty/downloader/bd2$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/bd2$a;->a(Lcom/shabakaty/downloader/bd2$a;)Lcom/shabakaty/downloader/yp3;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/bd2$a$e;->r:Lcom/shabakaty/downloader/bd2$a;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/oc2$b;->a:Lcom/shabakaty/downloader/cq3$a;

    sget-object v2, Lcom/shabakaty/downloader/oc2$b;->b:[Lcom/shabakaty/downloader/jd2;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-moduleData>(...)"

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shabakaty/downloader/mv3;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/mv3;->b:Lcom/shabakaty/downloader/tk1;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fileClass"

    .line 8
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yp3;->f()Lcom/shabakaty/downloader/v20;

    move-result-object v4

    .line 10
    invoke-interface {v2, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_a

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yp3;->f()Lcom/shabakaty/downloader/v20;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v5

    const-string v6, "fileClass.classId.packageFqName"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v6, v0, Lcom/shabakaty/downloader/yp3;->b:Lcom/shabakaty/downloader/be2;

    .line 13
    iget-object v7, v6, Lcom/shabakaty/downloader/be2;->a:Lcom/shabakaty/downloader/be2$a;

    .line 14
    sget-object v8, Lcom/shabakaty/downloader/be2$a;->x:Lcom/shabakaty/downloader/be2$a;

    if-ne v7, v8, :cond_5

    .line 15
    iget-object v6, v6, Lcom/shabakaty/downloader/be2;->c:[Ljava/lang/String;

    if-ne v7, v8, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v7, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v7

    :goto_0
    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lcom/shabakaty/downloader/hd;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_3

    sget-object v7, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 16
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 18
    check-cast v7, Ljava/lang/String;

    .line 19
    invoke-static {v7}, Lcom/shabakaty/downloader/kb2;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/kb2;

    move-result-object v7

    .line 20
    new-instance v8, Lcom/shabakaty/downloader/fi1;

    iget-object v7, v7, Lcom/shabakaty/downloader/kb2;->a:Ljava/lang/String;

    const/16 v9, 0x2f

    const/16 v10, 0x2e

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {v8}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v7

    .line 22
    iget-object v8, v1, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v8, Lcom/shabakaty/downloader/zp3;

    invoke-static {v8, v7}, Lcom/shabakaty/downloader/he0;->g(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_5
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 25
    :cond_6
    new-instance v6, Lcom/shabakaty/downloader/y21;

    iget-object v7, v1, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v7, Lcom/shabakaty/downloader/bs0;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v7

    .line 26
    iget-object v7, v7, Lcom/shabakaty/downloader/or0;->b:Lcom/shabakaty/downloader/nu2;

    .line 27
    invoke-direct {v6, v7, v5}, Lcom/shabakaty/downloader/y21;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;)V

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 30
    check-cast v8, Lcom/shabakaty/downloader/he2;

    .line 31
    iget-object v9, v1, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v9, Lcom/shabakaty/downloader/bs0;

    invoke-virtual {v9, v6, v8}, Lcom/shabakaty/downloader/bs0;->a(Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/mr2;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_3

    .line 32
    :cond_7
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_8
    invoke-static {v7}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jy;->h(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/shabakaty/downloader/mr2;

    move-result-object v5

    .line 35
    invoke-interface {v2, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move-object v5, v0

    :cond_a
    :goto_4
    const-string v0, "cache.getOrPut(fileClass\u2026ileClass)\", scopes)\n    }"

    .line 36
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/shabakaty/downloader/mr2;

    goto :goto_5

    .line 37
    :cond_b
    sget-object v5, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    :goto_5
    return-object v5
.end method
