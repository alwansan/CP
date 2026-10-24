.class public final Lcom/shabakaty/downloader/io;
.super Ljava/lang/Object;
.source "BuiltInFictitiousFunctionClassFactory.kt"

# interfaces
.implements Lcom/shabakaty/downloader/s20;


# instance fields
.field public final a:Lcom/shabakaty/downloader/md4;

.field public final b:Lcom/shabakaty/downloader/nu2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/io;->a:Lcom/shabakaty/downloader/md4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/io;->b:Lcom/shabakaty/downloader/nu2;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/fi1;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;
    .locals 6

    const-string v0, "classId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Lcom/shabakaty/downloader/v20;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classId.relativeClassName.asString()"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Function"

    .line 4
    invoke-static {v0, v4, v2, v3}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    const-string v2, "classId.packageFqName"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/vn1;->t:Lcom/shabakaty/downloader/vn1$a;

    invoke-virtual {v2, v0, p1}, Lcom/shabakaty/downloader/vn1$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/vn1$a$a;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 7
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/vn1$a$a;->a:Lcom/shabakaty/downloader/vn1;

    .line 8
    iget v0, v0, Lcom/shabakaty/downloader/vn1$a$a;->b:I

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/io;->b:Lcom/shabakaty/downloader/nu2;

    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/nu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/t93;->P()Ljava/util/List;

    move-result-object p1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/shabakaty/downloader/no;

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/shabakaty/downloader/zn1;

    if-eqz v5, :cond_5

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_6
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/zn1;

    if-nez p1, :cond_7

    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/no;

    .line 15
    :cond_7
    new-instance v2, Lcom/shabakaty/downloader/un1;

    iget-object v3, p0, Lcom/shabakaty/downloader/io;->a:Lcom/shabakaty/downloader/md4;

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/shabakaty/downloader/un1;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/vn1;I)V

    return-object v2

    :cond_8
    :goto_2
    return-object v1
.end method

.method public c(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)Z
    .locals 3

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name.asString()"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Function"

    .line 2
    invoke-static {p2, v2, v0, v1}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KFunction"

    invoke-static {p2, v2, v0, v1}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SuspendFunction"

    .line 3
    invoke-static {p2, v2, v0, v1}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KSuspendFunction"

    invoke-static {p2, v2, v0, v1}, Lcom/shabakaty/downloader/ne4;->L(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/vn1;->t:Lcom/shabakaty/downloader/vn1$a;

    invoke-virtual {v1, p2, p1}, Lcom/shabakaty/downloader/vn1$a;->a(Ljava/lang/String;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/vn1$a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
