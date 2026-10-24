.class public final Lcom/shabakaty/downloader/b03$b;
.super Lcom/shabakaty/downloader/r20;
.source "NotFoundClasses.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/b03;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/b30;

.field public final y:Z

.field public final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hw2;ZI)V
    .locals 7

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v5, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/r20;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Z)V

    .line 2
    iput-boolean p4, p0, Lcom/shabakaty/downloader/b03$b;->y:Z

    const/4 p2, 0x0

    .line 3
    invoke-static {p2, p5}, Lcom/shabakaty/downloader/rm3;->z(II)Lcom/shabakaty/downloader/n22;

    move-result-object p2

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/l22;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object p4, p2

    check-cast p4, Lcom/shabakaty/downloader/m22;

    .line 6
    iget-boolean p4, p4, Lcom/shabakaty/downloader/m22;->t:Z

    if-eqz p4, :cond_0

    .line 7
    move-object p4, p2

    check-cast p4, Lcom/shabakaty/downloader/k22;

    invoke-virtual {p4}, Lcom/shabakaty/downloader/k22;->a()I

    move-result v5

    .line 8
    sget p4, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    const/4 v2, 0x0

    sget-object v3, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "T"

    invoke-static {p5, p4}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    move-object v0, p0

    move-object v6, p1

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/shabakaty/downloader/lt4;->Y0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/hw2;ILcom/shabakaty/downloader/md4;)Lcom/shabakaty/downloader/kt4;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iput-object p3, p0, Lcom/shabakaty/downloader/b03$b;->z:Ljava/util/List;

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/b30;

    invoke-static {p0}, Lcom/shabakaty/downloader/pt4;->b(Lcom/shabakaty/downloader/h30;)Ljava/util/List;

    move-result-object p3

    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object p4

    invoke-interface {p4}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p4

    invoke-virtual {p4}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object p4

    invoke-static {p4}, Lcom/shabakaty/downloader/nl6;->s(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4, p1}, Lcom/shabakaty/downloader/b30;-><init>(Lcom/shabakaty/downloader/q20;Ljava/util/List;Ljava/util/Collection;Lcom/shabakaty/downloader/md4;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/b03$b;->A:Lcom/shabakaty/downloader/b30;

    return-void
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b03$b;->z:Ljava/util/List;

    return-object v0
.end method

.method public C()Lcom/shabakaty/downloader/a12;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/a12<",
            "Lcom/shabakaty/downloader/b74;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    return-object p1
.end method

.method public Q()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public Q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public R()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/b03$b;->y:Z

    return v0
.end method

.method public Y()Lcom/shabakaty/downloader/l20;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic Z()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    return-object v0
.end method

.method public b0()Lcom/shabakaty/downloader/q20;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    const-string v1, "PUBLIC"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b03$b;->A:Lcom/shabakaty/downloader/b30;

    return-object v0
.end method

.method public n()Lcom/shabakaty/downloader/eu2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/eu2;->r:Lcom/shabakaty/downloader/eu2;

    return-object v0
.end method

.method public o()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/l20;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "class "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (not found)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/shabakaty/downloader/w20;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w20;->r:Lcom/shabakaty/downloader/w20;

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
