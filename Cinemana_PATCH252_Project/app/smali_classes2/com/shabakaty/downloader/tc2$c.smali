.class public final Lcom/shabakaty/downloader/tc2$c;
.super Lcom/shabakaty/downloader/af2;
.source "KFunctionImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/tc2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/xn1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tc2;

.field public final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tc2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/tc2$c;->r:Lcom/shabakaty/downloader/tc2;

    iput-object p2, p0, Lcom/shabakaty/downloader/tc2$c;->s:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tc2$c;->r:Lcom/shabakaty/downloader/tc2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/tc2;->s:Lcom/shabakaty/downloader/oc2;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/tc2$c;->s:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/tc2;->t:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "name"

    .line 6
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "signature"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<init>"

    .line 7
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/oc2;->e()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/oc2;->f(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;

    move-result-object v3

    :goto_0
    move-object v4, v3

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/shabakaty/downloader/xn1;

    .line 10
    sget-object v8, Lcom/shabakaty/downloader/ov3;->a:Lcom/shabakaty/downloader/ov3;

    invoke-static {v7}, Lcom/shabakaty/downloader/ov3;->d(Lcom/shabakaty/downloader/xn1;)Lcom/shabakaty/downloader/mb2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/shabakaty/downloader/mb2;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 12
    sget-object v10, Lcom/shabakaty/downloader/pc2;->r:Lcom/shabakaty/downloader/pc2;

    const/16 v11, 0x1e

    const-string v5, "\n"

    invoke-static/range {v4 .. v11}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v4, Lcom/shabakaty/downloader/me2;

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Function \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' (JVM signature: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") not resolved in "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_4

    const-string v0, " no members found"

    goto :goto_3

    :cond_4
    const-string v0, "\n"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 18
    :cond_5
    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xn1;

    return-object v0
.end method
