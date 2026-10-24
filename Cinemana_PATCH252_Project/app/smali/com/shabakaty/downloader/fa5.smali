.class public final Lcom/shabakaty/downloader/fa5;
.super Lcom/shabakaty/downloader/ia5;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic t:Lcom/shabakaty/downloader/ba5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ba5;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/fa5;->t:Lcom/shabakaty/downloader/ba5;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/ia5;-><init>(Lcom/shabakaty/downloader/ba5;Lcom/shabakaty/downloader/zz6;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/fa5;->s:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fa5;->t:Lcom/shabakaty/downloader/ba5;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/ba5;->r:Lcom/shabakaty/downloader/t30;

    if-nez v2, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/shabakaty/downloader/ba5;->r:Lcom/shabakaty/downloader/t30;

    .line 7
    iget-object v3, v3, Lcom/shabakaty/downloader/t30;->b:Ljava/util/Set;

    .line 8
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/ba5;->r:Lcom/shabakaty/downloader/t30;

    .line 10
    iget-object v3, v3, Lcom/shabakaty/downloader/t30;->d:Ljava/util/Map;

    .line 11
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/a;

    .line 12
    iget-object v6, v0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v6, v6, Lcom/google/android/gms/common/api/internal/j;->g:Ljava/util/Map;

    .line 13
    iget-object v7, v5, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/a$g;

    .line 14
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 15
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/t30$b;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 16
    :goto_1
    iput-object v0, v1, Lcom/shabakaty/downloader/ka5;->p:Ljava/util/Set;

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/fa5;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/a$f;

    .line 18
    iget-object v4, p0, Lcom/shabakaty/downloader/fa5;->t:Lcom/shabakaty/downloader/ba5;

    .line 19
    iget-object v5, v4, Lcom/shabakaty/downloader/ba5;->o:Lcom/shabakaty/downloader/uw1;

    .line 20
    iget-object v4, v4, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    .line 21
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    iget-object v4, v4, Lcom/shabakaty/downloader/ka5;->p:Ljava/util/Set;

    invoke-interface {v3, v5, v4}, Lcom/google/android/gms/common/api/a$f;->w(Lcom/shabakaty/downloader/uw1;Ljava/util/Set;)V

    goto :goto_2

    :cond_3
    return-void
.end method
