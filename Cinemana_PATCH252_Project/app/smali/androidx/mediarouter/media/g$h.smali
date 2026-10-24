.class public Landroidx/mediarouter/media/g$h;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/g$h$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/mediarouter/media/g$g;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/net/Uri;

.field public g:Z

.field public h:I

.field public i:Z

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Landroid/os/Bundle;

.field public s:Landroid/content/IntentSender;

.field public t:Landroidx/mediarouter/media/b;

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/g$h;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/mediarouter/media/c$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/g$g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$h;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/mediarouter/media/g$h;->q:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    .line 5
    iput-object p1, p0, Landroidx/mediarouter/media/g$h;->a:Landroidx/mediarouter/media/g$g;

    .line 6
    iput-object p2, p0, Landroidx/mediarouter/media/g$h;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/mediarouter/media/c$b;
    .locals 2

    .line 1
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    iget-object v0, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    .line 2
    instance-of v1, v0, Landroidx/mediarouter/media/c$b;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/mediarouter/media/c$b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroidx/mediarouter/media/g$h;)Landroidx/mediarouter/media/g$h$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->v:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroidx/mediarouter/media/g$h$a;

    iget-object v1, p0, Landroidx/mediarouter/media/g$h;->v:Ljava/util/Map;

    iget-object p1, p1, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/c$b$a;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/g$h$a;-><init>(Landroidx/mediarouter/media/c$b$a;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/g$h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroidx/mediarouter/media/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->a:Landroidx/mediarouter/media/g$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 3
    iget-object v0, v0, Landroidx/mediarouter/media/g$g;->a:Landroidx/mediarouter/media/c;

    return-object v0
.end method

.method public e()Z
    .locals 4

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e;->f()Landroidx/mediarouter/media/g$h;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget v0, p0, Landroidx/mediarouter/media/g$h;->m:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/media/g$h;->d()Landroidx/mediarouter/media/c;

    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/mediarouter/media/c;->s:Landroidx/mediarouter/media/c$d;

    .line 6
    iget-object v0, v0, Landroidx/mediarouter/media/c$d;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    .line 7
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 8
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/g$h;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 9
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/g$h;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/mediarouter/media/g$h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->t:Landroidx/mediarouter/media/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/mediarouter/media/g$h;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e;->g()Landroidx/mediarouter/media/g$h;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Landroidx/mediarouter/media/f;)Z
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/media/f;->a()V

    .line 4
    iget-object v2, p1, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    .line 7
    iget-object v7, p1, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Landroidx/mediarouter/media/b;)I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->t:Landroidx/mediarouter/media/b;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_24

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/media/g$h;->t:Landroidx/mediarouter/media/b;

    if-eqz p1, :cond_24

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->j()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->d()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/mediarouter/media/g$h;->e:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x1

    .line 9
    :cond_1
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->f:Landroid/net/Uri;

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->h()Landroid/net/Uri;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->h()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroidx/mediarouter/media/g$h;->f:Landroid/net/Uri;

    or-int/lit8 v0, v0, 0x1

    .line 12
    :cond_2
    iget-boolean v3, p0, Landroidx/mediarouter/media/g$h;->g:Z

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->q()Z

    move-result v4

    if-eq v3, v4, :cond_3

    .line 13
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->q()Z

    move-result v3

    iput-boolean v3, p0, Landroidx/mediarouter/media/g$h;->g:Z

    or-int/lit8 v0, v0, 0x1

    .line 14
    :cond_3
    iget v3, p0, Landroidx/mediarouter/media/g$h;->h:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->c()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 15
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->c()I

    move-result v3

    iput v3, p0, Landroidx/mediarouter/media/g$h;->h:I

    or-int/lit8 v0, v0, 0x1

    .line 16
    :cond_4
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->j:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->a()V

    .line 18
    iget-object v4, p1, Landroidx/mediarouter/media/b;->c:Ljava/util/List;

    if-ne v3, v4, :cond_5

    goto/16 :goto_6

    :cond_5
    if-eqz v3, :cond_12

    if-nez v4, :cond_6

    goto/16 :goto_7

    .line 19
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 20
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 21
    :cond_7
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 22
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    if-ne v5, v6, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_10

    if-nez v6, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    invoke-virtual {v5}, Landroid/content/IntentFilter;->countActions()I

    move-result v7

    .line 24
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    if-eq v7, v8, :cond_a

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_c

    .line 25
    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 26
    :cond_c
    invoke-virtual {v5}, Landroid/content/IntentFilter;->countCategories()I

    move-result v7

    .line 27
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countCategories()I

    move-result v8

    if-eq v7, v8, :cond_d

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_f

    .line 28
    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_f
    :goto_3
    const/4 v5, 0x1

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_7

    goto :goto_7

    .line 29
    :cond_11
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    :goto_6
    const/4 v3, 0x1

    goto :goto_8

    :cond_12
    :goto_7
    const/4 v3, 0x0

    :goto_8
    if-nez v3, :cond_13

    .line 30
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->j:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->a()V

    .line 33
    iget-object v4, p1, Landroidx/mediarouter/media/b;->c:Ljava/util/List;

    .line 34
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v0, v0, 0x1

    .line 35
    :cond_13
    iget v3, p0, Landroidx/mediarouter/media/g$h;->k:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->l()I

    move-result v4

    if-eq v3, v4, :cond_14

    .line 36
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->l()I

    move-result v3

    iput v3, p0, Landroidx/mediarouter/media/g$h;->k:I

    or-int/lit8 v0, v0, 0x1

    .line 37
    :cond_14
    iget v3, p0, Landroidx/mediarouter/media/g$h;->l:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->k()I

    move-result v4

    if-eq v3, v4, :cond_15

    .line 38
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->k()I

    move-result v3

    iput v3, p0, Landroidx/mediarouter/media/g$h;->l:I

    or-int/lit8 v0, v0, 0x1

    .line 39
    :cond_15
    iget v3, p0, Landroidx/mediarouter/media/g$h;->m:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->e()I

    move-result v4

    if-eq v3, v4, :cond_16

    .line 40
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->e()I

    move-result v3

    iput v3, p0, Landroidx/mediarouter/media/g$h;->m:I

    or-int/lit8 v0, v0, 0x1

    .line 41
    :cond_16
    iget v3, p0, Landroidx/mediarouter/media/g$h;->n:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->o()I

    move-result v4

    if-eq v3, v4, :cond_17

    .line 42
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->o()I

    move-result v3

    iput v3, p0, Landroidx/mediarouter/media/g$h;->n:I

    or-int/lit8 v0, v0, 0x3

    .line 43
    :cond_17
    iget v3, p0, Landroidx/mediarouter/media/g$h;->o:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->n()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 44
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->n()I

    move-result v3

    iput v3, p0, Landroidx/mediarouter/media/g$h;->o:I

    or-int/lit8 v0, v0, 0x3

    .line 45
    :cond_18
    iget v3, p0, Landroidx/mediarouter/media/g$h;->p:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->p()I

    move-result v4

    if-eq v3, v4, :cond_19

    .line 46
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->p()I

    move-result v3

    iput v3, p0, Landroidx/mediarouter/media/g$h;->p:I

    or-int/lit8 v0, v0, 0x3

    .line 47
    :cond_19
    iget v3, p0, Landroidx/mediarouter/media/g$h;->q:I

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->m()I

    move-result v4

    if-eq v3, v4, :cond_1a

    .line 48
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->m()I

    move-result v3

    iput v3, p0, Landroidx/mediarouter/media/g$h;->q:I

    or-int/lit8 v0, v0, 0x5

    .line 49
    :cond_1a
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->f()Landroid/os/Bundle;

    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 51
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->f()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    or-int/lit8 v0, v0, 0x1

    .line 52
    :cond_1b
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->s:Landroid/content/IntentSender;

    .line 53
    iget-object v4, p1, Landroidx/mediarouter/media/b;->a:Landroid/os/Bundle;

    const-string v5, "settingsIntent"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 54
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 55
    iget-object v3, p1, Landroidx/mediarouter/media/b;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 56
    iput-object v3, p0, Landroidx/mediarouter/media/g$h;->s:Landroid/content/IntentSender;

    or-int/lit8 v0, v0, 0x1

    .line 57
    :cond_1c
    iget-boolean v3, p0, Landroidx/mediarouter/media/g$h;->i:Z

    .line 58
    iget-object v4, p1, Landroidx/mediarouter/media/b;->a:Landroid/os/Bundle;

    const-string v5, "canDisconnect"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v3, v4, :cond_1d

    .line 59
    iget-object v3, p1, Landroidx/mediarouter/media/b;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 60
    iput-boolean v3, p0, Landroidx/mediarouter/media/g$h;->i:Z

    or-int/lit8 v0, v0, 0x5

    .line 61
    :cond_1d
    invoke-virtual {p1}, Landroidx/mediarouter/media/b;->g()Ljava/util/List;

    move-result-object p1

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1e

    const/4 v1, 0x1

    .line 64
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    sget-object v5, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 66
    iget-object v6, p0, Landroidx/mediarouter/media/g$h;->a:Landroidx/mediarouter/media/g$g;

    .line 67
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v6, v6, Landroidx/mediarouter/media/g$g;->c:Landroidx/mediarouter/media/c$d;

    .line 69
    iget-object v6, v6, Landroidx/mediarouter/media/c$d;->a:Landroid/content/ComponentName;

    .line 70
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 71
    iget-object v5, v5, Landroidx/mediarouter/media/g$e;->f:Ljava/util/Map;

    new-instance v7, Lcom/shabakaty/downloader/y93;

    invoke-direct {v7, v6, v4}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    sget-object v5, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 73
    iget-object v5, v5, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/mediarouter/media/g$h;

    .line 74
    iget-object v7, v6, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_a

    :cond_21
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_1f

    .line 75
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_1f

    .line 76
    iget-object v4, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v1, 0x1

    goto :goto_9

    :cond_22
    if-eqz v1, :cond_23

    .line 77
    iput-object v3, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    or-int/lit8 p1, v0, 0x1

    move v1, p1

    goto :goto_b

    :cond_23
    move v1, v0

    :cond_24
    :goto_b
    return v1
.end method

.method public k(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    iget v1, p0, Landroidx/mediarouter/media/g$h;->p:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-ne p0, v1, :cond_0

    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/c$e;->f(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v0, v0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    iget-object v1, p0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/c$e;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/c$e;->f(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 3
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-ne p0, v1, :cond_0

    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/c$e;->i(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v0, v0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    iget-object v1, p0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/c$e;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/c$e;->i(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroidx/mediarouter/media/g$e;->k(Landroidx/mediarouter/media/g$h;I)V

    return-void
.end method

.method public n(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public o(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/c$b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->v:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ad;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g$h;->v:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/c$b$a;

    .line 6
    iget-object v1, v0, Landroidx/mediarouter/media/c$b$a;->a:Landroidx/mediarouter/media/b;

    .line 7
    invoke-virtual {v1}, Landroidx/mediarouter/media/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Landroidx/mediarouter/media/g$h;->a:Landroidx/mediarouter/media/g$g;

    .line 9
    invoke-virtual {v2, v1}, Landroidx/mediarouter/media/g$g;->a(Ljava/lang/String;)Landroidx/mediarouter/media/g$h;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, p0, Landroidx/mediarouter/media/g$h;->v:Ljava/util/Map;

    iget-object v3, v1, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v0, v0, Landroidx/mediarouter/media/c$b$a;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 12
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_4
    sget-object p1, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    iget-object p1, p1, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v0, 0x103

    invoke-virtual {p1, v0, p0}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRouter.RouteInfo{ uniqueId="

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/g$h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iconUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/g$h;->f:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/mediarouter/media/g$h;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", connectionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/g$h;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", canDisconnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/mediarouter/media/g$h;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playbackType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/g$h;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playbackStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/g$h;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/g$h;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volumeHandling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/g$h;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/g$h;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volumeMax="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/g$h;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", presentationDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/mediarouter/media/g$h;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", settingsIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/g$h;->s:Landroid/content/IntentSender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", providerPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/mediarouter/media/g$h;->a:Landroidx/mediarouter/media/g$g;

    .line 3
    iget-object v2, v2, Landroidx/mediarouter/media/g$g;->c:Landroidx/mediarouter/media/c$d;

    .line 4
    iget-object v2, v2, Landroidx/mediarouter/media/c$d;->a:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Landroidx/mediarouter/media/g$h;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", members=["

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_0

    const-string v3, ", "

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 12
    iget-object v3, p0, Landroidx/mediarouter/media/g$h;->u:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$h;

    .line 13
    iget-object v3, v3, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, " }"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
