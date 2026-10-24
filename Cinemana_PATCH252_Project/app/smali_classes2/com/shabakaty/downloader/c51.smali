.class public Lcom/shabakaty/downloader/c51;
.super Lcom/shabakaty/downloader/b74;
.source "ErrorType.kt"


# instance fields
.field public final s:Lcom/shabakaty/downloader/ts4;

.field public final t:Lcom/shabakaty/downloader/mr2;

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Z

.field public final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;)V
    .locals 8

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/c51;-><init>(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Ljava/util/List;ZLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Ljava/util/List;ZLjava/lang/String;I)V
    .locals 0

    and-int/lit8 p5, p6, 0x4

    if-eqz p5, :cond_0

    .line 1
    sget-object p3, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_0
    and-int/lit8 p5, p6, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    and-int/lit8 p5, p6, 0x10

    if-eqz p5, :cond_2

    const-string p5, "???"

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    const-string p6, "constructor"

    .line 2
    invoke-static {p1, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "memberScope"

    invoke-static {p2, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "arguments"

    invoke-static {p3, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "presentableName"

    invoke-static {p5, p6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/b74;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/c51;->s:Lcom/shabakaty/downloader/ts4;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/c51;->t:Lcom/shabakaty/downloader/mr2;

    .line 6
    iput-object p3, p0, Lcom/shabakaty/downloader/c51;->u:Ljava/util/List;

    .line 7
    iput-boolean p4, p0, Lcom/shabakaty/downloader/c51;->v:Z

    .line 8
    iput-object p5, p0, Lcom/shabakaty/downloader/c51;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public S0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c51;->u:Ljava/util/List;

    return-object v0
.end method

.method public T0()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c51;->s:Lcom/shabakaty/downloader/ts4;

    return-object v0
.end method

.method public U0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/c51;->v:Z

    return v0
.end method

.method public bridge synthetic V0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qe2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/c51;->d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/c51;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y0(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/qw4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/c51;->d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/c51;

    move-result-object p1

    return-object p1
.end method

.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 1

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 8

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/c51;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c51;->s:Lcom/shabakaty/downloader/ts4;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/c51;->t:Lcom/shabakaty/downloader/mr2;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/c51;->u:Ljava/util/List;

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, v7

    move v4, p1

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/c51;-><init>(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Ljava/util/List;ZLjava/lang/String;I)V

    return-object v7
.end method

.method public b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public c1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c51;->w:Ljava/lang/String;

    return-object v0
.end method

.method public d1(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/c51;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public s()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c51;->t:Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c51;->s:Lcom/shabakaty/downloader/ts4;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/c51;->u:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/c51;->u:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v8, 0x0

    const-string v3, ", "

    const-string v4, "<"

    const-string v5, ">"

    const-string v7, "..."

    .line 7
    invoke-static/range {v2 .. v8}, Lcom/shabakaty/downloader/m50;->f0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method
