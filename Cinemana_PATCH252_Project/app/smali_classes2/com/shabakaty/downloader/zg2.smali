.class public abstract Lcom/shabakaty/downloader/zg2;
.super Lcom/shabakaty/downloader/sz2;
.source "LeafNode.java"


# static fields
.field public static final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public t:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/zg2;->u:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/sz2;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    instance-of v1, v0, Lcom/shabakaty/downloader/he;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/he;

    invoke-direct {v1}, Lcom/shabakaty/downloader/he;-><init>()V

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->s()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/he;->C(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/he;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->A()V

    .line 2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/sz2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    instance-of v0, v0, Lcom/shabakaty/downloader/he;

    if-nez v0, :cond_0

    const-string v0, "#doctype"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->A()V

    .line 5
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/sz2;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;

    :goto_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/z02;->v(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    instance-of v0, v0, Lcom/shabakaty/downloader/he;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/sz2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lcom/shabakaty/downloader/he;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->A()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/he;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sz2;->r:Lcom/shabakaty/downloader/sz2;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sz2;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz2;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zg2;->u:Ljava/util/List;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zg2;->A()V

    .line 2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/sz2;->n(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zg2;->t:Ljava/lang/Object;

    instance-of v0, v0, Lcom/shabakaty/downloader/he;

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/sz2;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/zg2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
