.class public final Lcom/shabakaty/downloader/d82$a;
.super Lcom/shabakaty/downloader/af2;
.source "JavaAnnotationMapper.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d82;-><init>(Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/bg2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Map<",
        "Lcom/shabakaty/downloader/hw2;",
        "+",
        "Lcom/shabakaty/downloader/qb0<",
        "+",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/d82;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d82;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/d82$a;->r:Lcom/shabakaty/downloader/d82;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d82$a;->r:Lcom/shabakaty/downloader/d82;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/j62;->d:Lcom/shabakaty/downloader/h62;

    .line 3
    instance-of v1, v0, Lcom/shabakaty/downloader/n62;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/m62;->a:Lcom/shabakaty/downloader/m62;

    check-cast v0, Lcom/shabakaty/downloader/n62;

    invoke-interface {v0}, Lcom/shabakaty/downloader/n62;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/m62;->a(Ljava/util/List;)Lcom/shabakaty/downloader/qb0;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/shabakaty/downloader/e72;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/shabakaty/downloader/m62;->a:Lcom/shabakaty/downloader/m62;

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/m62;->a(Ljava/util/List;)Lcom/shabakaty/downloader/qb0;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/k62;->a:Lcom/shabakaty/downloader/k62;

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/k62;->c:Lcom/shabakaty/downloader/hw2;

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/x93;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-static {v2}, Lcom/shabakaty/downloader/kf5;->j(Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    sget-object v2, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    :cond_3
    return-object v2
.end method
