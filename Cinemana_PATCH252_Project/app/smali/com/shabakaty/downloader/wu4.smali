.class public Lcom/shabakaty/downloader/wu4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/z14;
.implements Lcom/shabakaty/downloader/br3$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/z14<",
        "Lcom/shabakaty/downloader/xw;",
        ">;",
        "Lcom/shabakaty/downloader/br3$b;"
    }
.end annotation


# static fields
.field public static final h:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lcom/shabakaty/downloader/y14;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vu4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/fu5;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/shabakaty/downloader/de5;

.field public f:Lcom/shabakaty/downloader/br3$b;

.field public g:Lcom/shabakaty/downloader/br3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "UIMediaController"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/wu4;->h:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/wu4;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/wu4;->d:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/de5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/de5;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/wu4;->a:Landroid/app/Activity;

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/tw;->e(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/lw6;->H:Lcom/shabakaty/downloader/lw6;

    invoke-static {v1}, Lcom/shabakaty/downloader/b87;->a(Lcom/shabakaty/downloader/lw6;)V

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/wu4;->b:Lcom/shabakaty/downloader/y14;

    if-eqz v0, :cond_1

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object p1

    .line 11
    const-class v0, Lcom/shabakaty/downloader/xw;

    invoke-virtual {p1, p0, v0}, Lcom/shabakaty/downloader/y14;->a(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wu4;->r(Lcom/shabakaty/downloader/s14;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/s14;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->s()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->t()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->f:Lcom/shabakaty/downloader/br3$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/br3$b;->b()V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Lcom/shabakaty/downloader/s14;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    return-void
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/s14;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/s14;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wu4;->r(Lcom/shabakaty/downloader/s14;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->t()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->f:Lcom/shabakaty/downloader/br3$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/br3$b;->f()V

    :cond_0
    return-void
.end method

.method public bridge synthetic g(Lcom/shabakaty/downloader/s14;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    return-void
.end method

.method public bridge synthetic h(Lcom/shabakaty/downloader/s14;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    return-void
.end method

.method public i(Lcom/shabakaty/downloader/s14;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->s()V

    return-void
.end method

.method public j(Lcom/shabakaty/downloader/s14;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->s()V

    return-void
.end method

.method public k(Lcom/shabakaty/downloader/s14;Z)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wu4;->r(Lcom/shabakaty/downloader/s14;)V

    return-void
.end method

.method public l(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/wu4;->o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V

    return-void
.end method

.method public m()Lcom/shabakaty/downloader/br3;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->g:Lcom/shabakaty/downloader/br3;

    return-object v0
.end method

.method public n()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->g:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o(Landroid/view/View;Lcom/shabakaty/downloader/vu4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->b:Lcom/shabakaty/downloader/y14;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/wu4;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/wu4;->b:Lcom/shabakaty/downloader/y14;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->t()V

    :cond_2
    return-void
.end method

.method public onMetadataUpdated()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->t()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->f:Lcom/shabakaty/downloader/br3$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/br3$b;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method public onStatusUpdated()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->t()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->f:Lcom/shabakaty/downloader/br3$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/br3$b;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->t()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->f:Lcom/shabakaty/downloader/br3$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/br3$b;->p()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vu4;

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vu4;->c()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->f:Lcom/shabakaty/downloader/br3$b;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Lcom/shabakaty/downloader/br3$b;->q()V

    :cond_2
    return-void
.end method

.method public final r(Lcom/shabakaty/downloader/s14;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->n()Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/shabakaty/downloader/xw;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s14;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xw;->k()Lcom/shabakaty/downloader/br3;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wu4;->g:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_3

    const-string v1, "Must be called from the main thread."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xw;->k()Lcom/shabakaty/downloader/br3;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vu4;

    .line 10
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->t()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wu4;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->e:Lcom/shabakaty/downloader/de5;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/de5;->a:Lcom/shabakaty/downloader/br3;

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/vu4;

    .line 6
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vu4;->e()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->g:Lcom/shabakaty/downloader/br3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Must be called from the main thread."

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    iput-object v1, p0, Lcom/shabakaty/downloader/wu4;->g:Lcom/shabakaty/downloader/br3;

    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wu4;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/vu4;

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vu4;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method
