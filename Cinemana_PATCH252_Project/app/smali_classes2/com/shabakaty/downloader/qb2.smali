.class public final Lcom/shabakaty/downloader/qb2;
.super Ljava/lang/Object;
.source "JvmPackagePartSource.kt"

# interfaces
.implements Lcom/shabakaty/downloader/as0;


# instance fields
.field public final b:Lcom/shabakaty/downloader/kb2;

.field public final c:Lcom/shabakaty/downloader/kb2;

.field public final d:Lcom/shabakaty/downloader/he2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/he2;Lcom/shabakaty/downloader/ti3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/f02;ZLcom/shabakaty/downloader/zr0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/he2;",
            "Lcom/shabakaty/downloader/ti3;",
            "Lcom/shabakaty/downloader/jw2;",
            "Lcom/shabakaty/downloader/f02<",
            "Lcom/shabakaty/downloader/ob2;",
            ">;Z",
            "Lcom/shabakaty/downloader/zr0;",
            ")V"
        }
    .end annotation

    const-string p4, "packageProto"

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "nameResolver"

    invoke-static {p3, p4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->f()Lcom/shabakaty/downloader/v20;

    move-result-object p4

    invoke-static {p4}, Lcom/shabakaty/downloader/kb2;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/kb2;

    move-result-object p4

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object p5

    invoke-virtual {p5}, Lcom/shabakaty/downloader/be2;->a()Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    if-nez p5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p5}, Lcom/shabakaty/downloader/kb2;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/kb2;

    move-result-object p6

    .line 4
    :cond_2
    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/qb2;->b:Lcom/shabakaty/downloader/kb2;

    .line 6
    iput-object p6, p0, Lcom/shabakaty/downloader/qb2;->c:Lcom/shabakaty/downloader/kb2;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/qb2;->d:Lcom/shabakaty/downloader/he2;

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/ub2;->m:Lcom/shabakaty/downloader/pp1$f;

    const-string p4, "packageModuleName"

    invoke-static {p1, p4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/nh3;->l(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p3, Lcom/shabakaty/downloader/pb2;

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/pb2;->b(I)Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/t94;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t94;->a:Lcom/shabakaty/downloader/t94;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const-string v0, "Class \'"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qb2;->d()Lcom/shabakaty/downloader/v20;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/shabakaty/downloader/v20;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v20;

    iget-object v1, p0, Lcom/shabakaty/downloader/qb2;->b:Lcom/shabakaty/downloader/kb2;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/kb2;->a:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/fi1;->c:Lcom/shabakaty/downloader/fi1;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/shabakaty/downloader/kb2;->a(I)V

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_1
    new-instance v3, Lcom/shabakaty/downloader/fi1;

    iget-object v1, v1, Lcom/shabakaty/downloader/kb2;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qb2;->e()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    return-object v0
.end method

.method public final e()Lcom/shabakaty/downloader/hw2;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qb2;->b:Lcom/shabakaty/downloader/kb2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kb2;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "className.internalName"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/re4;->j0(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/shabakaty/downloader/qb2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/qb2;->b:Lcom/shabakaty/downloader/kb2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
