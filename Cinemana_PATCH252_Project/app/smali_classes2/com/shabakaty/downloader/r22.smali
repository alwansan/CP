.class public final Lcom/shabakaty/downloader/r22;
.super Ljava/lang/Object;
.source "IntegerLiteralTypeConstructor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ts4;


# instance fields
.field public final a:J

.field public final b:Lcom/shabakaty/downloader/nu2;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/b74;

.field public final e:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public constructor <init>(JLcom/shabakaty/downloader/nu2;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/shabakaty/downloader/nu2;",
            "Ljava/util/Set<",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/shabakaty/downloader/se2;->d(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/r22;Z)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/r22;->d:Lcom/shabakaty/downloader/b74;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/r22$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/r22$a;-><init>(Lcom/shabakaty/downloader/r22;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/r22;->e:Lcom/shabakaty/downloader/kf2;

    .line 4
    iput-wide p1, p0, Lcom/shabakaty/downloader/r22;->a:J

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/r22;->b:Lcom/shabakaty/downloader/nu2;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/r22;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r22;->e:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/ts4;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Lcom/shabakaty/downloader/g30;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/List;
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
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcom/shabakaty/downloader/zd2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r22;->b:Lcom/shabakaty/downloader/nu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/16 v0, 0x5b

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/i61;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/r22;->c:Ljava/util/Set;

    sget-object v7, Lcom/shabakaty/downloader/s22;->r:Lcom/shabakaty/downloader/s22;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1e

    const-string v2, ","

    invoke-static/range {v1 .. v8}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntegerLiteralType"

    .line 2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
