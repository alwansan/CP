.class public Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewMatcher"
.end annotation


# instance fields
.field public r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->r:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p3, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->t:Ljava/util/HashSet;

    .line 4
    iput-object p4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->u:Ljava/lang/String;

    const-wide/16 p3, 0xc8

    .line 5
    invoke-virtual {p2, p0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;",
            ">;"
        }
    .end annotation

    const-string v0, "."

    .line 1
    invoke-static {p5, v0}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_1

    .line 4
    new-instance p4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {p4, p1, p5}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 5
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/codeless/internal/PathComponent;

    .line 6
    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->a:Ljava/lang/String;

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 8
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_2

    .line 9
    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    invoke-static {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->b(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object v4, p2

    move v6, v0

    move-object v7, p5

    .line 13
    invoke-static/range {v2 .. v7}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->a(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 15
    :cond_3
    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    new-instance p0, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {p0, p1, p5}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 17
    :cond_4
    iget v0, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->b:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    if-eq p4, v0, :cond_5

    goto/16 :goto_3

    .line 18
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p4

    iget-object v0, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->a:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 19
    iget-object p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->a:Ljava/lang/String;

    const-string v0, ".*android\\..*"

    invoke-virtual {p4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 20
    iget-object p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->a:Ljava/lang/String;

    const-string v0, "\\."

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 21
    array-length v0, p4

    if-lez v0, :cond_d

    .line 22
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-object p4, p4, v0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    goto/16 :goto_3

    .line 24
    :cond_6
    iget p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->h:I

    and-int/lit8 p4, p4, 0x1

    if-lez p4, :cond_7

    .line 25
    iget p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq p4, v0, :cond_7

    goto/16 :goto_3

    .line 26
    :cond_7
    iget p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->h:I

    and-int/lit8 p4, p4, 0x2

    const-string v0, ""

    if-lez p4, :cond_8

    .line 27
    iget-object p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->d:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v3}, Lcom/facebook/internal/Utility;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_8

    goto/16 :goto_3

    .line 31
    :cond_8
    iget p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->h:I

    and-int/lit8 p4, p4, 0x8

    if-lez p4, :cond_a

    .line 32
    iget-object p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->f:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v3, v0

    goto :goto_1

    .line 34
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 35
    :goto_1
    invoke-static {v3}, Lcom/facebook/internal/Utility;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a

    goto :goto_3

    .line 37
    :cond_a
    iget p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->h:I

    and-int/lit8 p4, p4, 0x10

    if-lez p4, :cond_b

    .line 38
    iget-object p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->g:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v3}, Lcom/facebook/internal/Utility;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b

    goto :goto_3

    .line 42
    :cond_b
    iget p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->h:I

    and-int/lit8 p4, p4, 0x4

    if-lez p4, :cond_e

    .line 43
    iget-object p4, v2, Lcom/facebook/appevents/codeless/internal/PathComponent;->e:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    move-object v2, v0

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 45
    :goto_2
    invoke-static {v2}, Lcom/facebook/internal/Utility;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/facebook/internal/Utility;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e

    :cond_d
    :goto_3
    const/4 p4, 0x0

    goto :goto_4

    :cond_e
    const/4 p4, 0x1

    :goto_4
    if-nez p4, :cond_f

    return-object v1

    .line 47
    :cond_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p3, p4, :cond_10

    .line 48
    new-instance p4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {p4, p1, p5}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_10
    :goto_5
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_11

    .line 50
    check-cast p1, Landroid/view/ViewGroup;

    .line 51
    invoke-static {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->b(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    .line 52
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p4, :cond_11

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object v4, p2

    move v6, v0

    move-object v7, p5

    .line 54
    invoke-static/range {v2 .. v7}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->a(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    return-object v1
.end method

.method public static b(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->s:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 3
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 4
    iget-object v3, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/View;

    if-eqz v2, :cond_10

    if-nez v9, :cond_0

    goto/16 :goto_7

    .line 5
    :cond_0
    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/EventBinding;->d:Ljava/lang/String;

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/EventBinding;->d:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_7

    .line 9
    :cond_1
    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/EventBinding;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x19

    if-le v3, v4, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 11
    iget-object v8, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->u:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v9

    .line 12
    invoke-static/range {v3 .. v8}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->a(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 13
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    .line 14
    :try_start_0
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->a()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    sget-object v6, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->a:Ljava/lang/ref/WeakReference;

    move-object v6, v5

    :goto_2
    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "com.facebook.react.ReactRootView"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 18
    instance-of v8, v6, Landroid/view/View;

    if-eqz v8, :cond_6

    .line 19
    check-cast v6, Landroid/view/View;

    goto :goto_2

    :cond_6
    move-object v6, v7

    :goto_3
    const/4 v8, 0x1

    if-eqz v6, :cond_9

    .line 20
    invoke-static {v5, v6}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->i(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 21
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->a()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 22
    :cond_7
    iget-object v4, v4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->b:Ljava/lang/String;

    .line 23
    invoke-static {v5}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->f(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v6

    .line 24
    instance-of v7, v6, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    if-eqz v7, :cond_8

    .line 25
    check-cast v6, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    .line 26
    iget-boolean v6, v6, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->v:Z

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    .line 27
    :goto_4
    iget-object v6, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->t:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    .line 28
    new-instance v6, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    invoke-direct {v6, v2, v9, v5}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;-><init>(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V

    .line 29
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->t:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v10, "com.facebook.react"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_1

    .line 32
    :cond_a
    instance-of v6, v5, Landroid/widget/AdapterView;

    if-nez v6, :cond_d

    .line 33
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->a()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_b

    goto/16 :goto_1

    .line 34
    :cond_b
    iget-object v4, v4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->b:Ljava/lang/String;

    .line 35
    invoke-static {v5}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->e(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v6

    .line 36
    instance-of v10, v6, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;

    if-eqz v10, :cond_c

    .line 37
    check-cast v6, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;

    .line 38
    iget-boolean v6, v6, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;->v:Z

    if-eqz v6, :cond_c

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 39
    :goto_5
    iget-object v6, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->t:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    .line 40
    new-instance v6, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;

    invoke-direct {v6, v2, v9, v5, v7}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;-><init>(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;)V

    .line 41
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->t:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 43
    :cond_d
    instance-of v5, v5, Landroid/widget/ListView;

    if-eqz v5, :cond_3

    .line 44
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->a()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterView;

    if-nez v5, :cond_e

    goto/16 :goto_1

    .line 45
    :cond_e
    iget-object v4, v4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v6

    .line 47
    instance-of v10, v6, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;

    if-eqz v10, :cond_f

    .line 48
    check-cast v6, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;

    .line 49
    iget-boolean v6, v6, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;->v:Z

    if-eqz v6, :cond_f

    goto :goto_6

    :cond_f
    const/4 v8, 0x0

    .line 50
    :goto_6
    iget-object v6, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->t:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    .line 51
    new-instance v6, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;

    invoke-direct {v6, v2, v9, v5, v7}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;-><init>(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/widget/AdapterView;Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$1;)V

    .line 52
    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->t:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 54
    :catch_0
    sget-object v4, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    goto/16 :goto_1

    :cond_10
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->c()V

    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->c()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 2
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 3
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->b(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    iget-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->h:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/facebook/internal/FetchedAppSettings;->j:Lorg/json/JSONArray;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/appevents/codeless/internal/EventBinding;->a(Lorg/json/JSONObject;)Lcom/facebook/appevents/codeless/internal/EventBinding;

    move-result-object v4

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :catch_0
    :cond_2
    iput-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->s:Ljava/util/List;

    .line 12
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->c()V

    :cond_5
    :goto_1
    return-void
.end method
