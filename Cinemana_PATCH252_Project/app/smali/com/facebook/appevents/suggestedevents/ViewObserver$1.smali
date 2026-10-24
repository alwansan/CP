.class public Lcom/facebook/appevents/suggestedevents/ViewObserver$1;
.super Ljava/lang/Object;
.source "ViewObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/suggestedevents/ViewObserver;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/appevents/suggestedevents/ViewObserver;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/suggestedevents/ViewObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/suggestedevents/ViewObserver$1;->r:Lcom/facebook/appevents/suggestedevents/ViewObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/suggestedevents/ViewObserver$1;->r:Lcom/facebook/appevents/suggestedevents/ViewObserver;

    .line 2
    iget-object v0, v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->r:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/internal/AppEventUtility;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/facebook/appevents/suggestedevents/ViewObserver$1;->r:Lcom/facebook/appevents/suggestedevents/ViewObserver;

    .line 5
    iget-object v1, v1, Lcom/facebook/appevents/suggestedevents/ViewObserver;->r:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 9
    invoke-static {v3}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v3}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_1

    .line 12
    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->b(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method
