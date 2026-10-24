.class public final Lcom/shabakaty/downloader/wc6;
.super Lcom/shabakaty/downloader/uv6;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/xf5;


# instance fields
.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/kb6;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lcom/shabakaty/downloader/ql2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ql2<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ht5;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/shabakaty/downloader/mc6;

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uw6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/uv6;-><init>(Lcom/shabakaty/downloader/uw6;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ad;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc6;->d:Ljava/util/Map;

    new-instance p1, Lcom/shabakaty/downloader/ad;

    .line 3
    invoke-direct {p1}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc6;->e:Ljava/util/Map;

    new-instance p1, Lcom/shabakaty/downloader/ad;

    .line 4
    invoke-direct {p1}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc6;->f:Ljava/util/Map;

    new-instance p1, Lcom/shabakaty/downloader/ad;

    .line 5
    invoke-direct {p1}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    new-instance p1, Lcom/shabakaty/downloader/ad;

    .line 6
    invoke-direct {p1}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc6;->k:Ljava/util/Map;

    new-instance p1, Lcom/shabakaty/downloader/ad;

    .line 7
    invoke-direct {p1}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc6;->h:Ljava/util/Map;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/hc6;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/hc6;-><init>(Lcom/shabakaty/downloader/wc6;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc6;->i:Lcom/shabakaty/downloader/ql2;

    new-instance p1, Lcom/shabakaty/downloader/mc6;

    .line 9
    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/mc6;-><init>(Lcom/shabakaty/downloader/wc6;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc6;->j:Lcom/shabakaty/downloader/mc6;

    return-void
.end method

.method public static final y(Lcom/shabakaty/downloader/kb6;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/kb6;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ad;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ad;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kb6;->C()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/vb6;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vb6;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vb6;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wc6;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->d:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wc6;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->h:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final j(Ljava/lang/String;)Lcom/shabakaty/downloader/kb6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wc6;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/kb6;

    return-object p1
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wc6;->j(Ljava/lang/String;)Lcom/shabakaty/downloader/kb6;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/kb6;->F()Z

    move-result p1

    return p1
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/jb7;->c()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/d46;->s0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/kb6;

    if-nez p1, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/kb6;->s()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wc6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wc6;->w(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "purchase"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->f:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wc6;->w(Ljava/lang/String;)V

    const-string v0, "measurement.upload.blacklist_internal"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wc6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/f;->U(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const-string v0, "measurement.upload.blacklist_public"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wc6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/f;->V(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->e:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_4

    return v0

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wc6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final t(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual/range {p0 .. p2}, Lcom/shabakaty/downloader/wc6;->u(Ljava/lang/String;[B)Lcom/shabakaty/downloader/kb6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/fb6;

    .line 5
    invoke-virtual {v1, v2, v4}, Lcom/shabakaty/downloader/wc6;->v(Ljava/lang/String;Lcom/shabakaty/downloader/fb6;)V

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/jb7;->c()Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 8
    sget-object v5, Lcom/shabakaty/downloader/d46;->s0:Lcom/shabakaty/downloader/z36;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v4}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kb6;

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/wc6;->x(Ljava/lang/String;Lcom/shabakaty/downloader/kb6;)V

    :cond_0
    iget-object v0, v1, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 10
    invoke-virtual {v4}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/kb6;

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/shabakaty/downloader/wc6;->k:Ljava/util/Map;

    .line 11
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/shabakaty/downloader/wc6;->d:Ljava/util/Map;

    .line 12
    invoke-virtual {v4}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/kb6;

    invoke-static {v5}, Lcom/shabakaty/downloader/wc6;->y(Lcom/shabakaty/downloader/kb6;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    .line 13
    iget-object v5, v0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 14
    invoke-static {v5}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    .line 16
    iget-object v0, v4, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 17
    check-cast v0, Lcom/shabakaty/downloader/kb6;

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kb6;->A()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v8, "app_id=? and audience_id=?"

    const-string v0, "app_id=?"

    const-string v9, "event_filters"

    const-string v10, "property_filters"

    const-string v11, "null reference"

    const/4 v13, 0x0

    .line 21
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_f

    .line 22
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/u66;

    invoke-virtual {v14}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/p66;

    .line 23
    iget-object v6, v14, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 24
    check-cast v6, Lcom/shabakaty/downloader/u66;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/u66;->t()I

    move-result v6

    if-eqz v6, :cond_a

    move-object v6, v14

    const/4 v15, 0x0

    .line 25
    :goto_1
    iget-object v12, v6, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 26
    check-cast v12, Lcom/shabakaty/downloader/u66;

    invoke-virtual {v12}, Lcom/shabakaty/downloader/u66;->t()I

    move-result v12

    if-ge v15, v12, :cond_9

    .line 27
    iget-object v12, v6, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 28
    check-cast v12, Lcom/shabakaty/downloader/u66;

    invoke-virtual {v12, v15}, Lcom/shabakaty/downloader/u66;->w(I)Lcom/shabakaty/downloader/e76;

    move-result-object v12

    .line 29
    invoke-virtual {v12}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/z66;

    .line 30
    invoke-virtual {v12}, Lcom/shabakaty/downloader/lu6;->j()Lcom/shabakaty/downloader/lu6;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/shabakaty/downloader/z66;

    .line 31
    iget-object v1, v12, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 32
    check-cast v1, Lcom/shabakaty/downloader/e76;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/e76;->y()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/shabakaty/downloader/yi6;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v16, v4

    .line 34
    iget-boolean v4, v3, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v4, :cond_1

    .line 35
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_1
    iget-object v4, v3, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 36
    check-cast v4, Lcom/shabakaty/downloader/e76;

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/e76;->A(Lcom/shabakaty/downloader/e76;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v16, v4

    const/4 v1, 0x0

    :goto_2
    move-object/from16 v17, v8

    const/4 v4, 0x0

    .line 37
    :goto_3
    iget-object v8, v12, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 38
    check-cast v8, Lcom/shabakaty/downloader/e76;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/e76;->s()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 39
    iget-object v8, v12, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 40
    check-cast v8, Lcom/shabakaty/downloader/e76;

    invoke-virtual {v8, v4}, Lcom/shabakaty/downloader/e76;->w(I)Lcom/shabakaty/downloader/q76;

    move-result-object v8

    move-object/from16 v18, v12

    .line 41
    invoke-virtual {v8}, Lcom/shabakaty/downloader/q76;->w()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v11

    sget-object v11, Lcom/shabakaty/downloader/bj6;->a:[Ljava/lang/String;

    move-object/from16 v20, v9

    sget-object v9, Lcom/shabakaty/downloader/bj6;->b:[Ljava/lang/String;

    .line 42
    invoke-static {v12, v11, v9}, Lcom/shabakaty/downloader/jl3;->l(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 43
    invoke-virtual {v8}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/j76;

    .line 44
    iget-boolean v8, v1, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v8, :cond_3

    .line 45
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/shabakaty/downloader/lu6;->t:Z

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    iget-object v11, v1, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 46
    check-cast v11, Lcom/shabakaty/downloader/q76;

    invoke-static {v11, v9}, Lcom/shabakaty/downloader/q76;->x(Lcom/shabakaty/downloader/q76;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/q76;

    .line 48
    iget-boolean v9, v3, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v9, :cond_4

    .line 49
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->i()V

    iput-boolean v8, v3, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_4
    iget-object v8, v3, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 50
    check-cast v8, Lcom/shabakaty/downloader/e76;

    invoke-static {v8, v4, v1}, Lcom/shabakaty/downloader/e76;->B(Lcom/shabakaty/downloader/e76;ILcom/shabakaty/downloader/q76;)V

    const/4 v1, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, v18

    move-object/from16 v11, v19

    move-object/from16 v9, v20

    goto :goto_3

    :cond_6
    move-object/from16 v20, v9

    move-object/from16 v19, v11

    if-eqz v1, :cond_8

    .line 51
    iget-boolean v1, v6, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v1, :cond_7

    .line 52
    invoke-virtual {v6}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_7
    iget-object v1, v6, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 53
    check-cast v1, Lcom/shabakaty/downloader/u66;

    .line 54
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/e76;

    .line 55
    invoke-static {v1, v15, v3}, Lcom/shabakaty/downloader/u66;->B(Lcom/shabakaty/downloader/u66;ILcom/shabakaty/downloader/e76;)V

    .line 56
    invoke-virtual {v14}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/u66;

    invoke-virtual {v7, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v6, v14

    :cond_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    move-object/from16 v11, v19

    move-object/from16 v9, v20

    goto/16 :goto_1

    :cond_9
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v20, v9

    move-object/from16 v19, v11

    goto :goto_5

    :cond_a
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v20, v9

    move-object/from16 v19, v11

    move-object v6, v14

    .line 57
    :goto_5
    iget-object v1, v6, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 58
    check-cast v1, Lcom/shabakaty/downloader/u66;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/u66;->u()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 59
    :goto_6
    iget-object v3, v6, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 60
    check-cast v3, Lcom/shabakaty/downloader/u66;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/u66;->u()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 61
    iget-object v3, v6, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 62
    check-cast v3, Lcom/shabakaty/downloader/u66;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/u66;->x(I)Lcom/shabakaty/downloader/w86;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/shabakaty/downloader/w86;->w()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/shabakaty/downloader/gj6;->a:[Ljava/lang/String;

    sget-object v9, Lcom/shabakaty/downloader/gj6;->b:[Ljava/lang/String;

    .line 64
    invoke-static {v4, v8, v9}, Lcom/shabakaty/downloader/jl3;->l(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 65
    invoke-virtual {v3}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/r86;

    .line 66
    iget-boolean v8, v3, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v8, :cond_b

    .line 67
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/shabakaty/downloader/lu6;->t:Z

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    :goto_7
    iget-object v9, v3, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 68
    check-cast v9, Lcom/shabakaty/downloader/w86;

    invoke-static {v9, v4}, Lcom/shabakaty/downloader/w86;->x(Lcom/shabakaty/downloader/w86;Ljava/lang/String;)V

    .line 69
    iget-boolean v4, v6, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v4, :cond_c

    .line 70
    invoke-virtual {v6}, Lcom/shabakaty/downloader/lu6;->i()V

    iput-boolean v8, v6, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_c
    iget-object v4, v6, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 71
    check-cast v4, Lcom/shabakaty/downloader/u66;

    .line 72
    invoke-virtual {v3}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/w86;

    .line 73
    invoke-static {v4, v1, v3}, Lcom/shabakaty/downloader/u66;->A(Lcom/shabakaty/downloader/u66;ILcom/shabakaty/downloader/w86;)V

    .line 74
    invoke-virtual {v14}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/u66;

    invoke-virtual {v7, v13, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v6, v14

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    move-object/from16 v11, v19

    move-object/from16 v9, v20

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v20, v9

    move-object/from16 v19, v11

    .line 75
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 76
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-virtual {v5}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 80
    :try_start_0
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 81
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 82
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-virtual {v5}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    .line 84
    invoke-virtual {v3, v10, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v8

    move-object/from16 v4, v20

    .line 85
    invoke-virtual {v3, v4, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_21

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u66;

    .line 87
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 88
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 89
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v8, v19

    .line 90
    invoke-static {v0, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u66;->C()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_11

    :try_start_2
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 93
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v6, "Audience with no ID. appId"

    .line 94
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_9
    move-object/from16 v22, v1

    move-object/from16 v19, v3

    :cond_10
    move-object/from16 v11, v17

    goto/16 :goto_13

    .line 95
    :cond_11
    :try_start_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u66;->s()I

    move-result v9

    .line 96
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u66;->y()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_13

    :try_start_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/e76;

    .line 97
    invoke-virtual {v12}, Lcom/shabakaty/downloader/e76;->G()Z

    move-result v12

    if-nez v12, :cond_12

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 99
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v6, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 100
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 101
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 102
    invoke-virtual {v0, v6, v11, v9}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    .line 103
    :cond_13
    :try_start_5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u66;->z()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_15

    :try_start_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/w86;

    .line 104
    invoke-virtual {v12}, Lcom/shabakaty/downloader/w86;->B()Z

    move-result v12

    if-nez v12, :cond_14

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 106
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v6, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 108
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 109
    invoke-virtual {v0, v6, v11, v9}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_9

    .line 110
    :cond_15
    :try_start_7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u66;->y()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v13, "data"

    const-string v14, "session_scoped"

    const-string v15, "filter_id"

    const-string v6, "audience_id"

    move-object/from16 v19, v3

    const-string v3, "app_id"

    const-wide/16 v20, -0x1

    move-object/from16 v22, v1

    if-eqz v12, :cond_1b

    :try_start_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/e76;

    .line 111
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 112
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 113
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    invoke-static {v12, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v12}, Lcom/shabakaty/downloader/e76;->y()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_17

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 117
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v1, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 119
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 120
    invoke-virtual {v12}, Lcom/shabakaty/downloader/e76;->G()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v12}, Lcom/shabakaty/downloader/e76;->t()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_b

    :cond_16
    const/4 v11, 0x0

    :goto_b
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 121
    invoke-virtual {v0, v1, v3, v6, v11}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 122
    :cond_17
    invoke-virtual {v12}, Lcom/shabakaty/downloader/xp6;->i()[B

    move-result-object v1

    move-object/from16 v24, v11

    new-instance v11, Landroid/content/ContentValues;

    .line 123
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 124
    invoke-virtual {v11, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    invoke-virtual {v12}, Lcom/shabakaty/downloader/e76;->G()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v12}, Lcom/shabakaty/downloader/e76;->t()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v11, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "event_name"

    .line 127
    invoke-virtual {v12}, Lcom/shabakaty/downloader/e76;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v12}, Lcom/shabakaty/downloader/e76;->H()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v12}, Lcom/shabakaty/downloader/e76;->E()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    .line 129
    :goto_d
    invoke-virtual {v11, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 130
    invoke-virtual {v11, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 131
    :try_start_9
    invoke-virtual {v5}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v6, 0x0

    .line 132
    invoke-virtual {v1, v4, v6, v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v11

    cmp-long v1, v11, v20

    if-nez v1, :cond_1a

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 134
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Failed to insert event filter (got -1). appId"

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 136
    invoke-virtual {v1, v3, v6}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_1a
    move-object/from16 v3, v19

    move-object/from16 v1, v22

    move-object/from16 v11, v24

    goto/16 :goto_a

    :catch_0
    move-exception v0

    .line 137
    :try_start_a
    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 139
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Error storing event filter. appId"

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 141
    invoke-virtual {v1, v3, v6, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 142
    :cond_1b
    invoke-virtual {v0}, Lcom/shabakaty/downloader/u66;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/w86;

    .line 143
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 144
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w86;->w()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 149
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v3, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 151
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 152
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w86;->B()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-virtual {v1}, Lcom/shabakaty/downloader/w86;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_f

    :cond_1c
    const/4 v1, 0x0

    :goto_f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v3, v6, v11, v1}, Lcom/shabakaty/downloader/s66;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 154
    :cond_1d
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xp6;->i()[B

    move-result-object v11

    new-instance v12, Landroid/content/ContentValues;

    .line 155
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 156
    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v0

    .line 157
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w86;->B()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v1}, Lcom/shabakaty/downloader/w86;->s()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_10

    :cond_1e
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "property_name"

    move-object/from16 v25, v3

    .line 159
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w86;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w86;->C()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1}, Lcom/shabakaty/downloader/w86;->A()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11

    :cond_1f
    const/4 v0, 0x0

    .line 161
    :goto_11
    invoke-virtual {v12, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 163
    :try_start_b
    invoke-virtual {v5}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 164
    invoke-virtual {v0, v10, v3, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v11

    cmp-long v0, v11, v20

    if-nez v0, :cond_20

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 166
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v1, "Failed to insert property filter (got -1). appId"

    .line 167
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 168
    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_12

    :cond_20
    move-object/from16 v0, v24

    move-object/from16 v3, v25

    goto/16 :goto_e

    :catch_1
    move-exception v0

    .line 169
    :try_start_c
    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 170
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 171
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Error storing property filter. appId"

    .line 172
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 173
    invoke-virtual {v1, v3, v6, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    :goto_12
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 175
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 176
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    invoke-virtual {v5}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    .line 178
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v3, v12

    move-object/from16 v11, v17

    .line 179
    invoke-virtual {v0, v10, v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v6

    .line 180
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v12

    .line 181
    invoke-virtual {v0, v4, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_13
    move-object/from16 v17, v11

    move-object/from16 v3, v19

    move-object/from16 v1, v22

    move-object/from16 v19, v8

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v22, v1

    goto/16 :goto_1a

    :cond_21
    move-object/from16 v22, v1

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    .line 183
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/u66;

    .line 185
    invoke-virtual {v3}, Lcom/shabakaty/downloader/u66;->C()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v3}, Lcom/shabakaty/downloader/u66;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_15

    :cond_22
    const/4 v6, 0x0

    :goto_15
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 186
    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 188
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 189
    invoke-virtual {v5}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v3, 0x1

    :try_start_d
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v3, "select count(1) from audience_filter_values where app_id=?"

    .line 190
    invoke-virtual {v5, v3, v4}, Lcom/shabakaty/downloader/mh5;->y(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 191
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    const/16 v6, 0x7d0

    .line 192
    sget-object v7, Lcom/shabakaty/downloader/d46;->F:Lcom/shabakaty/downloader/z36;

    .line 193
    invoke-virtual {v5, v2, v7}, Lcom/shabakaty/downloader/hg5;->o(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)I

    move-result v5

    .line 194
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    .line 195
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v6, v5

    cmp-long v8, v3, v6

    if-gtz v8, :cond_24

    goto/16 :goto_17

    .line 196
    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    .line 197
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 198
    :goto_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_25

    .line 199
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_26

    .line 200
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_25
    const-string v0, ","

    .line 201
    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "audience_filter_values"

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x8c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    .line 203
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 204
    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_17

    :catch_2
    move-exception v0

    .line 205
    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 206
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 207
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v3, "Database error querying filters. appId"

    .line 208
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 209
    invoke-virtual {v1, v3, v4, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    :cond_26
    :goto_17
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 211
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v1, v16

    .line 212
    :try_start_f
    iget-boolean v0, v1, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v0, :cond_27

    .line 213
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lu6;->i()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_27
    iget-object v0, v1, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 214
    check-cast v0, Lcom/shabakaty/downloader/kb6;

    invoke-static {v0}, Lcom/shabakaty/downloader/kb6;->E(Lcom/shabakaty/downloader/kb6;)V

    .line 215
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kb6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xp6;->i()[B

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    move-object/from16 v3, p0

    goto :goto_18

    :catch_3
    move-exception v0

    move-object/from16 v3, p0

    .line 216
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 217
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 218
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    .line 219
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Unable to serialize reduced-size config. Storing full config instead. appId"

    .line 220
    invoke-virtual {v4, v6, v5, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 221
    :goto_18
    sget-object v4, Lcom/shabakaty/downloader/ya7;->s:Lcom/shabakaty/downloader/ya7;

    .line 222
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ya7;->b()Lcom/shabakaty/downloader/ab7;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/ab7;->a()Z

    .line 223
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 224
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 225
    sget-object v5, Lcom/shabakaty/downloader/d46;->q0:Lcom/shabakaty/downloader/z36;

    const/4 v6, 0x0

    .line 226
    invoke-virtual {v4, v6, v5}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    .line 227
    iget-object v4, v4, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 228
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    move-object/from16 v5, p3

    .line 229
    invoke-virtual {v4, v2, v0, v5}, Lcom/shabakaty/downloader/mh5;->p(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_19

    .line 230
    :cond_28
    iget-object v4, v3, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    .line 231
    iget-object v4, v4, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 232
    invoke-static {v4}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 233
    invoke-virtual {v4, v2, v0, v6}, Lcom/shabakaty/downloader/mh5;->p(Ljava/lang/String;[BLjava/lang/String;)V

    .line 234
    :goto_19
    iget-object v0, v3, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 235
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/kb6;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :catchall_1
    move-exception v0

    :goto_1a
    move-object/from16 v3, p0

    goto :goto_1b

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v22, v1

    .line 236
    :goto_1b
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 237
    throw v0
.end method

.method public final u(Ljava/lang/String;[B)Lcom/shabakaty/downloader/kb6;
    .locals 7

    const-string v0, "Unable to merge remote config. appId"

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/kb6;->y()Lcom/shabakaty/downloader/kb6;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/shabakaty/downloader/kb6;->w()Lcom/shabakaty/downloader/fb6;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/shabakaty/downloader/ny6;->C(Lcom/shabakaty/downloader/vp6;[B)Lcom/shabakaty/downloader/vp6;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/fb6;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/kb6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "Parsed config. version, gmp_app_id"

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kb6;->H()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/shabakaty/downloader/kb6;->u()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kb6;->G()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/kb6;->z()Ljava/lang/String;

    move-result-object v4

    .line 7
    :cond_2
    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/jw6; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-virtual {v1, v0, p1, p2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcom/shabakaty/downloader/kb6;->y()Lcom/shabakaty/downloader/kb6;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    invoke-virtual {v1, v0, p1, p2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/shabakaty/downloader/kb6;->y()Lcom/shabakaty/downloader/kb6;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/lang/String;Lcom/shabakaty/downloader/fb6;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ad;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ad;-><init>()V

    new-instance v1, Lcom/shabakaty/downloader/ad;

    .line 2
    invoke-direct {v1}, Lcom/shabakaty/downloader/ad;-><init>()V

    new-instance v2, Lcom/shabakaty/downloader/ad;

    .line 3
    invoke-direct {v2}, Lcom/shabakaty/downloader/ad;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v5, p2, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 5
    check-cast v5, Lcom/shabakaty/downloader/kb6;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/kb6;->t()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 6
    iget-object v5, p2, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 7
    check-cast v5, Lcom/shabakaty/downloader/kb6;

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/kb6;->v(I)Lcom/shabakaty/downloader/za6;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/da6;

    .line 9
    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->n()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v5

    .line 11
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v6, "EventConfig contained null event name"

    .line 12
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 13
    :cond_0
    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->n()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->n()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/yi6;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 16
    iget-boolean v8, v5, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v8, :cond_1

    .line 17
    invoke-virtual {v5}, Lcom/shabakaty/downloader/lu6;->i()V

    iput-boolean v3, v5, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_1
    iget-object v8, v5, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 18
    check-cast v8, Lcom/shabakaty/downloader/za6;

    invoke-static {v8, v7}, Lcom/shabakaty/downloader/za6;->v(Lcom/shabakaty/downloader/za6;Ljava/lang/String;)V

    .line 19
    iget-boolean v7, p2, Lcom/shabakaty/downloader/lu6;->t:Z

    if-eqz v7, :cond_2

    .line 20
    invoke-virtual {p2}, Lcom/shabakaty/downloader/lu6;->i()V

    iput-boolean v3, p2, Lcom/shabakaty/downloader/lu6;->t:Z

    :cond_2
    iget-object v7, p2, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 21
    check-cast v7, Lcom/shabakaty/downloader/kb6;

    .line 22
    invoke-virtual {v5}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/za6;

    .line 23
    invoke-static {v7, v4, v8}, Lcom/shabakaty/downloader/kb6;->D(Lcom/shabakaty/downloader/kb6;ILcom/shabakaty/downloader/za6;)V

    .line 24
    :cond_3
    iget-object v7, v5, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 25
    check-cast v7, Lcom/shabakaty/downloader/za6;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/za6;->w()Z

    move-result v7

    .line 26
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->n()Ljava/lang/String;

    move-result-object v6

    .line 28
    iget-object v7, v5, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 29
    check-cast v7, Lcom/shabakaty/downloader/za6;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/za6;->x()Z

    move-result v7

    .line 30
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v6, v5, Lcom/shabakaty/downloader/lu6;->s:Lcom/shabakaty/downloader/uu6;

    .line 32
    check-cast v6, Lcom/shabakaty/downloader/za6;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/za6;->y()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 33
    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->m()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_5

    .line 34
    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->m()I

    move-result v6

    const v7, 0xffff

    if-le v6, v7, :cond_4

    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 36
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 37
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v6

    .line 38
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    .line 39
    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->n()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v5}, Lcom/shabakaty/downloader/da6;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    .line 41
    invoke-virtual {v6, v8, v7, v5}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 42
    :cond_7
    iget-object p2, p0, Lcom/shabakaty/downloader/wc6;->e:Ljava/util/Map;

    .line 43
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/shabakaty/downloader/wc6;->f:Ljava/util/Map;

    .line 44
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/shabakaty/downloader/wc6;->h:Ljava/util/Map;

    .line 45
    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uv6;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/shabakaty/downloader/qv6;->b:Lcom/shabakaty/downloader/uw6;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/uw6;->c:Lcom/shabakaty/downloader/mh5;

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/uw6;->I(Lcom/shabakaty/downloader/uv6;)Lcom/shabakaty/downloader/uv6;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/uv6;->f()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mh5;->C()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "remote_config"

    const-string v4, "config_last_modified_time"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v6, v11

    const-string v3, "apps"

    const-string v5, "app_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 9
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 12
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v5

    .line 15
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v6, "Got multiple records for app config, expected one. appId"

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 17
    invoke-virtual {v5, v6, v7}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-nez v3, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance v5, Landroid/util/Pair;

    .line 19
    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_0
    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v4, "Error querying remote config. appId"

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 24
    invoke-virtual {v0, v4, v5, v3}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 25
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v5, v1

    :goto_2
    if-nez v5, :cond_4

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->d:Ljava/util/Map;

    .line 26
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->e:Ljava/util/Map;

    .line 27
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->f:Ljava/util/Map;

    .line 28
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 29
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->k:Ljava/util/Map;

    .line 30
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->h:Ljava/util/Map;

    .line 31
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 32
    :cond_4
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [B

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wc6;->u(Ljava/lang/String;[B)Lcom/shabakaty/downloader/kb6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/uu6;->o()Lcom/shabakaty/downloader/lu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fb6;

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wc6;->v(Ljava/lang/String;Lcom/shabakaty/downloader/fb6;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/wc6;->d:Ljava/util/Map;

    .line 35
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/kb6;

    invoke-static {v3}, Lcom/shabakaty/downloader/wc6;->y(Lcom/shabakaty/downloader/kb6;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/downloader/wc6;->g:Ljava/util/Map;

    .line 36
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/kb6;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/shabakaty/downloader/jb7;->c()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 38
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 39
    sget-object v3, Lcom/shabakaty/downloader/d46;->s0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 40
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lu6;->f()Lcom/shabakaty/downloader/uu6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kb6;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wc6;->x(Ljava/lang/String;Lcom/shabakaty/downloader/kb6;)V

    .line 41
    :cond_5
    sget-object v0, Lcom/shabakaty/downloader/ya7;->s:Lcom/shabakaty/downloader/ya7;

    .line 42
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ya7;->b()Lcom/shabakaty/downloader/ab7;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ab7;->a()Z

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 44
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 45
    sget-object v2, Lcom/shabakaty/downloader/d46;->q0:Lcom/shabakaty/downloader/z36;

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->k:Ljava/util/Map;

    .line 47
    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->k:Ljava/util/Map;

    .line 48
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_7

    .line 49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_7
    throw p1

    :cond_8
    return-void
.end method

.method public final x(Ljava/lang/String;Lcom/shabakaty/downloader/kb6;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kb6;->s()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "EES programs found"

    .line 4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kb6;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kb6;->B()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ri6;

    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/ht5;

    .line 6
    invoke-direct {v1}, Lcom/shabakaty/downloader/ht5;-><init>()V

    const-string v2, "internal.remoteConfig"

    new-instance v3, Lcom/shabakaty/downloader/sb6;

    .line 7
    invoke-direct {v3, p0, p1, v0}, Lcom/shabakaty/downloader/sb6;-><init>(Lcom/shabakaty/downloader/wc6;Ljava/lang/String;I)V

    .line 8
    iget-object v0, v1, Lcom/shabakaty/downloader/ht5;->a:Lcom/shabakaty/downloader/wa6;

    iget-object v0, v0, Lcom/shabakaty/downloader/wa6;->d:Lcom/shabakaty/downloader/ft2;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/ft2;->a:Ljava/util/Map;

    .line 10
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/sb6;

    const/4 v2, 0x2

    .line 12
    invoke-direct {v0, p0, p1, v2}, Lcom/shabakaty/downloader/sb6;-><init>(Lcom/shabakaty/downloader/wc6;Ljava/lang/String;I)V

    const-string v2, "internal.appMetadata"

    .line 13
    iget-object v3, v1, Lcom/shabakaty/downloader/ht5;->a:Lcom/shabakaty/downloader/wa6;

    iget-object v3, v3, Lcom/shabakaty/downloader/wa6;->d:Lcom/shabakaty/downloader/ft2;

    .line 14
    iget-object v3, v3, Lcom/shabakaty/downloader/ft2;->a:Ljava/util/Map;

    .line 15
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/kv6;

    .line 17
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/kv6;-><init>(Lcom/shabakaty/downloader/wc6;)V

    const-string v2, "internal.logger"

    .line 18
    iget-object v3, v1, Lcom/shabakaty/downloader/ht5;->a:Lcom/shabakaty/downloader/wa6;

    iget-object v3, v3, Lcom/shabakaty/downloader/wa6;->d:Lcom/shabakaty/downloader/ft2;

    .line 19
    iget-object v3, v3, Lcom/shabakaty/downloader/ft2;->a:Ljava/util/Map;

    .line 20
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/ht5;->a(Lcom/shabakaty/downloader/ri6;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/wc6;->i:Lcom/shabakaty/downloader/ql2;

    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/ql2;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "EES program loaded for appId, activities"

    .line 25
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ri6;->s()Lcom/shabakaty/downloader/ei6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ei6;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, p1, v2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ri6;->s()Lcom/shabakaty/downloader/ei6;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ei6;->v()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ji6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "EES program activity"

    .line 30
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ji6;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/rz5; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    .line 31
    :catch_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 33
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    const-string v0, "Failed to load EES program. appId"

    .line 34
    invoke-virtual {p2, v0, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/wc6;->i:Lcom/shabakaty/downloader/ql2;

    .line 36
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key == null"

    .line 37
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    monitor-enter p2

    .line 39
    :try_start_1
    iget-object v0, p2, Lcom/shabakaty/downloader/ql2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 40
    iget p1, p2, Lcom/shabakaty/downloader/ql2;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, Lcom/shabakaty/downloader/ql2;->b:I

    .line 41
    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
