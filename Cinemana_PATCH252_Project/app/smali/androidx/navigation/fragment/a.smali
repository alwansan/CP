.class public Landroidx/navigation/fragment/a;
.super Landroidx/navigation/h;
.source "FragmentNavigator.java"


# annotations
.annotation runtime Landroidx/navigation/h$b;
    value = "fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/a$b;,
        Landroidx/navigation/fragment/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/h<",
        "Landroidx/navigation/fragment/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/fragment/app/q;

.field public final c:I

.field public d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/q;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/navigation/h;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    .line 3
    iput-object p1, p0, Landroidx/navigation/fragment/a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Landroidx/navigation/fragment/a;->b:Landroidx/fragment/app/q;

    .line 5
    iput p3, p0, Landroidx/navigation/fragment/a;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/navigation/c;
    .locals 1

    .line 1
    new-instance v0, Landroidx/navigation/fragment/a$a;

    invoke-direct {v0, p0}, Landroidx/navigation/fragment/a$a;-><init>(Landroidx/navigation/h;)V

    return-object v0
.end method

.method public b(Landroidx/navigation/c;Landroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)Landroidx/navigation/c;
    .locals 7

    .line 1
    check-cast p1, Landroidx/navigation/fragment/a$a;

    .line 2
    iget-object v0, p0, Landroidx/navigation/fragment/a;->b:Landroidx/fragment/app/q;

    invoke-virtual {v0}, Landroidx/fragment/app/q;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "FragmentNavigator"

    const-string p2, "Ignoring navigate() call: FragmentManager has already saved its state"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 4
    :cond_0
    iget-object v0, p1, Landroidx/navigation/fragment/a$a;->z:Ljava/lang/String;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroidx/navigation/fragment/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_1
    iget-object v2, p0, Landroidx/navigation/fragment/a;->a:Landroid/content/Context;

    iget-object v3, p0, Landroidx/navigation/fragment/a;->b:Landroidx/fragment/app/q;

    .line 8
    invoke-virtual {v3}, Landroidx/fragment/app/q;->K()Landroidx/fragment/app/o;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 10
    invoke-virtual {v3, v2, v0}, Landroidx/fragment/app/o;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    iget-object p2, p0, Landroidx/navigation/fragment/a;->b:Landroidx/fragment/app/q;

    .line 13
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    const/4 p2, -0x1

    if-eqz p3, :cond_2

    .line 14
    iget v3, p3, Landroidx/navigation/g;->d:I

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_0
    if-eqz p3, :cond_3

    .line 15
    iget v4, p3, Landroidx/navigation/g;->e:I

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_1
    if-eqz p3, :cond_4

    .line 16
    iget v5, p3, Landroidx/navigation/g;->f:I

    goto :goto_2

    :cond_4
    const/4 v5, -0x1

    :goto_2
    if-eqz p3, :cond_5

    .line 17
    iget v6, p3, Landroidx/navigation/g;->g:I

    goto :goto_3

    :cond_5
    const/4 v6, -0x1

    :goto_3
    if-ne v3, p2, :cond_6

    if-ne v4, p2, :cond_6

    if-ne v5, p2, :cond_6

    if-eq v6, p2, :cond_b

    :cond_6
    if-eq v3, p2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-eq v4, p2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    if-eq v5, p2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-eq v6, p2, :cond_a

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    .line 18
    :goto_7
    iput v3, v2, Landroidx/fragment/app/t;->b:I

    .line 19
    iput v4, v2, Landroidx/fragment/app/t;->c:I

    .line 20
    iput v5, v2, Landroidx/fragment/app/t;->d:I

    .line 21
    iput v6, v2, Landroidx/fragment/app/t;->e:I

    .line 22
    :cond_b
    iget v3, p0, Landroidx/navigation/fragment/a;->c:I

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/t;->g(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    .line 23
    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->s(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    .line 24
    iget v0, p1, Landroidx/navigation/c;->t:I

    .line 25
    iget-object v3, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_c

    if-nez v3, :cond_c

    .line 26
    iget-boolean p3, p3, Landroidx/navigation/g;->a:Z

    if-eqz p3, :cond_c

    .line 27
    iget-object p3, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    .line 28
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_c

    const/4 p3, 0x1

    goto :goto_8

    :cond_c
    const/4 p3, 0x0

    :goto_8
    if-eqz v3, :cond_d

    goto :goto_9

    :cond_d
    if-eqz p3, :cond_e

    .line 29
    iget-object p3, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    if-le p3, v4, :cond_f

    .line 30
    iget-object p3, p0, Landroidx/navigation/fragment/a;->b:Landroidx/fragment/app/q;

    iget-object v3, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    iget-object v5, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroidx/navigation/fragment/a;->f(II)Ljava/lang/String;

    move-result-object v3

    .line 32
    new-instance v5, Landroidx/fragment/app/q$o;

    invoke-direct {v5, p3, v3, p2, v4}, Landroidx/fragment/app/q$o;-><init>(Landroidx/fragment/app/q;Ljava/lang/String;II)V

    invoke-virtual {p3, v5, v1}, Landroidx/fragment/app/q;->A(Landroidx/fragment/app/q$n;Z)V

    .line 33
    iget-object p2, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroidx/navigation/fragment/a;->f(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/fragment/app/t;->c(Ljava/lang/String;)Landroidx/fragment/app/t;

    goto :goto_a

    .line 34
    :cond_e
    iget-object p2, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p0, p2, v0}, Landroidx/navigation/fragment/a;->f(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/fragment/app/t;->c(Ljava/lang/String;)Landroidx/fragment/app/t;

    :goto_9
    const/4 v1, 0x1

    .line 35
    :cond_f
    :goto_a
    instance-of p2, p4, Landroidx/navigation/fragment/a$b;

    if-eqz p2, :cond_14

    .line 36
    check-cast p4, Landroidx/navigation/fragment/a$b;

    .line 37
    iget-object p2, p4, Landroidx/navigation/fragment/a$b;->a:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 40
    sget-object v3, Landroidx/fragment/app/y;->a:[I

    .line 41
    sget-object v3, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 42
    invoke-virtual {p4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_13

    .line 43
    iget-object v3, v2, Landroidx/fragment/app/t;->n:Ljava/util/ArrayList;

    if-nez v3, :cond_10

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/t;->n:Ljava/util/ArrayList;

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/t;->o:Ljava/util/ArrayList;

    goto :goto_c

    .line 46
    :cond_10
    iget-object v3, v2, Landroidx/fragment/app/t;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "\' has already been added to the transaction."

    if-nez v3, :cond_12

    .line 47
    iget-object v3, v2, Landroidx/fragment/app/t;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 48
    :goto_c
    iget-object v3, v2, Landroidx/fragment/app/t;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p4, v2, Landroidx/fragment/app/t;->o:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 50
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A shared element with the source name \'"

    invoke-static {p2, p4, v5}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A shared element with the target name \'"

    invoke-static {p2, p3, v5}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_14
    iput-boolean v4, v2, Landroidx/fragment/app/t;->p:Z

    .line 54
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    if-eqz v1, :cond_15

    .line 55
    iget-object p2, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    :goto_d
    const/4 p1, 0x0

    :goto_e
    return-object p1

    .line 56
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment class was not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "androidx-nav-fragment:navigator:backStackIds"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 4
    iget-object v3, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 3
    iget-object v2, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v5, v3, 0x1

    .line 4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    move v3, v5

    goto :goto_0

    :cond_0
    const-string v2, "androidx-nav-fragment:navigator:backStackIds"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public e()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/navigation/fragment/a;->b:Landroidx/fragment/app/q;

    invoke-virtual {v0}, Landroidx/fragment/app/q;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FragmentNavigator"

    const-string v2, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/navigation/fragment/a;->b:Landroidx/fragment/app/q;

    iget-object v2, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget-object v3, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidx/navigation/fragment/a;->f(II)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Landroidx/fragment/app/q$o;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v0, v2, v4, v5}, Landroidx/fragment/app/q$o;-><init>(Landroidx/fragment/app/q;Ljava/lang/String;II)V

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/q;->A(Landroidx/fragment/app/q$n;Z)V

    .line 7
    iget-object v0, p0, Landroidx/navigation/fragment/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    return v5
.end method

.method public final f(II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
