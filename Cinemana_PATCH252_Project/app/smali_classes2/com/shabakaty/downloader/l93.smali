.class public abstract Lcom/shabakaty/downloader/l93;
.super Lcom/shabakaty/downloader/tm0;
.source "PackageFragmentDescriptorImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/k93;


# instance fields
.field public final v:Lcom/shabakaty/downloader/fi1;

.field public final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;)V
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fi1;->h()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/shabakaty/downloader/tm0;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/l93;->v:Lcom/shabakaty/downloader/fi1;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/l93;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Lcom/shabakaty/downloader/nu2;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/tm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/nu2;

    return-object v0
.end method

.method public bridge synthetic c()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l93;->c()Lcom/shabakaty/downloader/nu2;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/shabakaty/downloader/fi1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l93;->v:Lcom/shabakaty/downloader/fi1;

    return-object v0
.end method

.method public j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/um0<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->g(Lcom/shabakaty/downloader/k93;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l93;->w:Ljava/lang/String;

    return-object v0
.end method
