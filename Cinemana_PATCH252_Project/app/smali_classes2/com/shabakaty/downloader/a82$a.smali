.class public final Lcom/shabakaty/downloader/a82$a;
.super Lcom/shabakaty/downloader/af2;
.source "JavaAnnotationMapper.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/a82;-><init>(Lcom/shabakaty/downloader/g62;Lcom/shabakaty/downloader/bg2;)V
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
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/a82;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a82;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/a82$a;->r:Lcom/shabakaty/downloader/a82;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/m62;->a:Lcom/shabakaty/downloader/m62;

    iget-object v0, p0, Lcom/shabakaty/downloader/a82$a;->r:Lcom/shabakaty/downloader/a82;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/j62;->d:Lcom/shabakaty/downloader/h62;

    .line 3
    instance-of v1, v0, Lcom/shabakaty/downloader/e72;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/e72;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    sget-object v1, Lcom/shabakaty/downloader/m62;->c:Ljava/util/Map;

    invoke-interface {v0}, Lcom/shabakaty/downloader/e72;->d()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/oe2;

    if-nez v0, :cond_3

    :goto_2
    move-object v1, v2

    goto :goto_3

    .line 5
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/z31;

    sget-object v3, Lcom/shabakaty/downloader/tb4$a;->v:Lcom/shabakaty/downloader/fi1;

    invoke-static {v3}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/shabakaty/downloader/z31;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    :goto_3
    if-nez v1, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    sget-object v0, Lcom/shabakaty/downloader/k62;->a:Lcom/shabakaty/downloader/k62;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/k62;->d:Lcom/shabakaty/downloader/hw2;

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/x93;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-static {v2}, Lcom/shabakaty/downloader/kf5;->j(Lcom/shabakaty/downloader/x93;)Ljava/util/Map;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_5

    sget-object v2, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    :cond_5
    return-object v2
.end method
