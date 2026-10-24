.class public final Lcom/shabakaty/downloader/z31;
.super Lcom/shabakaty/downloader/qb0;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qb0<",
        "Lcom/shabakaty/downloader/x93<",
        "+",
        "Lcom/shabakaty/downloader/v20;",
        "+",
        "Lcom/shabakaty/downloader/hw2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/shabakaty/downloader/v20;

.field public final c:Lcom/shabakaty/downloader/hw2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/x93;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/qb0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/z31;->b:Lcom/shabakaty/downloader/v20;

    iput-object p2, p0, Lcom/shabakaty/downloader/z31;->c:Lcom/shabakaty/downloader/hw2;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/qe2;
    .locals 2

    const-string v0, "module"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z31;->b:Lcom/shabakaty/downloader/v20;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/rb1;->a(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->q(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    const-string p1, "Containing class for error-class based enum entry "

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/z31;->b:Lcom/shabakaty/downloader/v20;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shabakaty/downloader/z31;->c:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_2

    .line 3
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    const-string v0, "module.findClassAcrossMo\u2026mClassId.$enumEntryName\")"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/z31;->b:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/z31;->c:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
