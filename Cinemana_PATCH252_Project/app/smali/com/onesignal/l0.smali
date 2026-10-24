.class public Lcom/onesignal/l0;
.super Ljava/lang/Object;
.source "OSSystemConditionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/l0$b;,
        Lcom/onesignal/l0$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/onesignal/l0$c;


# direct methods
.method public constructor <init>(Lcom/onesignal/l0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onesignal/l0;->a:Lcom/onesignal/l0$c;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/r9;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/r9;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/onesignal/l0$a;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/l0$a;-><init>(Lcom/onesignal/l0;Landroidx/fragment/app/q;)V

    .line 4
    iget-object v2, p1, Landroidx/fragment/app/q;->o:Landroidx/fragment/app/p;

    .line 5
    iget-object v2, v2, Landroidx/fragment/app/p;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroidx/fragment/app/p$a;

    invoke-direct {v3, v0, v1}, Landroidx/fragment/app/p$a;-><init>(Landroidx/fragment/app/q$k;Z)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/q;->L()Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/shabakaty/downloader/ct0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/onesignal/q0;->l()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "OSSystemConditionObserver curActivity null"

    .line 2
    invoke-static {v1, v0, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return v2

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/onesignal/q0;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/l0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OSSystemConditionObserver dialog fragment detected"

    .line 4
    invoke-static {v1, v0, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppCompatActivity is not used in this app, skipping \'isDialogFragmentShowing\' check: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v2, v0, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    .line 8
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/onesignal/q0;->l()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/onesignal/p0;->e(Ljava/lang/ref/WeakReference;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const-string v4, "com.onesignal.l0"

    .line 9
    iget-object v5, p0, Lcom/onesignal/l0;->a:Lcom/onesignal/l0$c;

    .line 10
    iget-object v6, v0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 12
    new-instance v7, Lcom/onesignal/a$d;

    invoke-direct {v7, v0, v5, v4, v3}, Lcom/onesignal/a$d;-><init>(Lcom/onesignal/l0$b;Lcom/onesignal/l0$c;Ljava/lang/String;Lcom/onesignal/a$a;)V

    .line 13
    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    sget-object v0, Lcom/onesignal/a;->e:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    sget-object v0, Lcom/onesignal/a;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OSSystemConditionObserver keyboard up detected"

    .line 16
    invoke-static {v1, v0, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    xor-int/lit8 v0, v2, 0x1

    return v0
.end method
