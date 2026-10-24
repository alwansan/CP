.class public final Lcom/shabakaty/downloader/fy;
.super Lcom/shabakaty/downloader/af2;
.source "CertificatePinner.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/X509Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ey;

.field public final synthetic s:Ljava/util/List;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ey;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/fy;->r:Lcom/shabakaty/downloader/ey;

    iput-object p2, p0, Lcom/shabakaty/downloader/fy;->s:Ljava/util/List;

    iput-object p3, p0, Lcom/shabakaty/downloader/fy;->t:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fy;->r:Lcom/shabakaty/downloader/ey;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ey;->b:Lcom/shabakaty/downloader/dy;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/fy;->s:Ljava/util/List;

    iget-object v2, p0, Lcom/shabakaty/downloader/fy;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/dy;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fy;->s:Ljava/util/List;

    .line 4
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/security/cert/Certificate;

    const-string v3, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method
