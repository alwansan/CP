.class public final Lcom/shabakaty/downloader/ds0$b$j;
.super Lcom/shabakaty/downloader/af2;
.source "DeserializedMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ds0$b;-><init>(Lcom/shabakaty/downloader/ds0;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Set<",
        "+",
        "Lcom/shabakaty/downloader/hw2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ds0$b;

.field public final synthetic s:Lcom/shabakaty/downloader/ds0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ds0$b;Lcom/shabakaty/downloader/ds0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ds0$b$j;->r:Lcom/shabakaty/downloader/ds0$b;

    iput-object p2, p0, Lcom/shabakaty/downloader/ds0$b$j;->s:Lcom/shabakaty/downloader/ds0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$b$j;->r:Lcom/shabakaty/downloader/ds0$b;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ds0$b;->b:Ljava/util/List;

    .line 3
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v0, Lcom/shabakaty/downloader/ds0$b;->n:Lcom/shabakaty/downloader/ds0;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lcom/shabakaty/downloader/es2;

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/ds0;->b:Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 8
    check-cast v3, Lcom/shabakaty/downloader/vi3;

    .line 9
    iget v3, v3, Lcom/shabakaty/downloader/vi3;->w:I

    .line 10
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ds0$b$j;->s:Lcom/shabakaty/downloader/ds0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ds0;->p()Ljava/util/Set;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/f24;->B(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
