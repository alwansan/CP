.class public final Lcom/shabakaty/downloader/sf2$a;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaAnnotationDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/sf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Z)V
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
.field public final synthetic r:Lcom/shabakaty/downloader/sf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/sf2$a;->r:Lcom/shabakaty/downloader/sf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf2$a;->r:Lcom/shabakaty/downloader/sf2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/sf2;->b:Lcom/shabakaty/downloader/g62;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/g62;->L()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/sf2$a;->r:Lcom/shabakaty/downloader/sf2;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Lcom/shabakaty/downloader/h62;

    .line 7
    invoke-interface {v3}, Lcom/shabakaty/downloader/h62;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/shabakaty/downloader/ta2;->b:Lcom/shabakaty/downloader/hw2;

    .line 8
    :cond_0
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/sf2;->a(Lcom/shabakaty/downloader/h62;)Lcom/shabakaty/downloader/qb0;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 9
    :cond_1
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v4, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v5

    :goto_1
    if-nez v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v2}, Lcom/shabakaty/downloader/vm2;->u(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
