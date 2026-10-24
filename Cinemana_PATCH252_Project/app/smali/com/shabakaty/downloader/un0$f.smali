.class public Lcom/shabakaty/downloader/un0$f;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/shabakaty/downloader/tn0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/un0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/tn0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/shabakaty/downloader/tn0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/un0$f;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/un0$f;->b:Lcom/shabakaty/downloader/tn0;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/un0$f;->a:Ljava/util/Set;

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/un0$f;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/p;->A()Lcom/shabakaty/downloader/c0;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/c0;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tn0;

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    .line 7
    :goto_1
    invoke-virtual {v1, p1, v2}, Lcom/shabakaty/downloader/tn0;->j(Ljava/lang/Exception;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
