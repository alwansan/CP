.class public final Landroidx/mediarouter/media/n;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/n$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/mediarouter/media/n$c;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/content/pm/PackageManager;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/m;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Landroid/content/BroadcastReceiver;

.field public final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/n$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroidx/mediarouter/media/n$a;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/n$a;-><init>(Landroidx/mediarouter/media/n;)V

    iput-object v0, p0, Landroidx/mediarouter/media/n;->g:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance v0, Landroidx/mediarouter/media/n$b;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/n$b;-><init>(Landroidx/mediarouter/media/n;)V

    iput-object v0, p0, Landroidx/mediarouter/media/n;->h:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Landroidx/mediarouter/media/n;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroidx/mediarouter/media/n;->b:Landroidx/mediarouter/media/n$c;

    .line 7
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroidx/mediarouter/media/n;->c:Landroid/os/Handler;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/n;->d:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/n;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MediaRoute2ProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroidx/mediarouter/media/n;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/nq3;->a:Lcom/shabakaty/downloader/nq3;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 7
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.MediaRouteProviderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Landroidx/mediarouter/media/n;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 9
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    sget-object v6, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    .line 11
    :cond_4
    iget-boolean v6, v6, Landroidx/mediarouter/media/g$e;->b:Z

    :goto_1
    if-eqz v6, :cond_8

    if-eqz v0, :cond_7

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ServiceInfo;

    .line 14
    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 15
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_8

    goto :goto_0

    .line 16
    :cond_8
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 17
    iget-object v8, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_b

    .line 18
    iget-object v10, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/mediarouter/media/m;

    .line 19
    iget-object v11, v10, Landroidx/mediarouter/media/m;->z:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v10, v10, Landroidx/mediarouter/media/m;->z:Landroid/content/ComponentName;

    .line 20
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    const/4 v9, -0x1

    :goto_6
    if-gez v9, :cond_c

    .line 21
    new-instance v5, Landroidx/mediarouter/media/m;

    iget-object v6, p0, Landroidx/mediarouter/media/n;->a:Landroid/content/Context;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Landroidx/mediarouter/media/m;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 22
    new-instance v4, Lcom/shabakaty/downloader/rv;

    invoke-direct {v4, p0, v5}, Lcom/shabakaty/downloader/rv;-><init>(Landroidx/mediarouter/media/n;Landroidx/mediarouter/media/m;)V

    .line 23
    iput-object v4, v5, Landroidx/mediarouter/media/m;->G:Landroidx/mediarouter/media/m$b;

    .line 24
    invoke-virtual {v5}, Landroidx/mediarouter/media/m;->y()V

    .line 25
    iget-object v4, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 26
    iget-object v2, p0, Landroidx/mediarouter/media/n;->b:Landroidx/mediarouter/media/n$c;

    check-cast v2, Landroidx/mediarouter/media/g$e;

    invoke-virtual {v2, v5}, Landroidx/mediarouter/media/g$e;->a(Landroidx/mediarouter/media/c;)V

    :goto_7
    move v2, v6

    goto/16 :goto_0

    :cond_c
    if-lt v9, v2, :cond_2

    .line 27
    iget-object v4, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/m;

    .line 28
    invoke-virtual {v4}, Landroidx/mediarouter/media/m;->y()V

    .line 29
    iget-object v5, v4, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    if-nez v5, :cond_d

    invoke-virtual {v4}, Landroidx/mediarouter/media/m;->x()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 30
    invoke-virtual {v4}, Landroidx/mediarouter/media/m;->z()V

    .line 31
    invoke-virtual {v4}, Landroidx/mediarouter/media/m;->r()V

    .line 32
    :cond_d
    iget-object v4, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v9, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_7

    .line 33
    :cond_e
    iget-object v0, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_13

    .line 34
    iget-object v0, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_8
    if-lt v0, v2, :cond_13

    .line 35
    iget-object v1, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/m;

    .line 36
    iget-object v4, p0, Landroidx/mediarouter/media/n;->b:Landroidx/mediarouter/media/n$c;

    check-cast v4, Landroidx/mediarouter/media/g$e;

    .line 37
    invoke-virtual {v4, v1}, Landroidx/mediarouter/media/g$e;->d(Landroidx/mediarouter/media/c;)Landroidx/mediarouter/media/g$g;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_10

    .line 38
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 40
    iput-object v6, v1, Landroidx/mediarouter/media/c;->u:Landroidx/mediarouter/media/c$a;

    .line 41
    invoke-virtual {v1, v6}, Landroidx/mediarouter/media/c;->q(Lcom/shabakaty/downloader/cq2;)V

    .line 42
    invoke-virtual {v4, v5, v6}, Landroidx/mediarouter/media/g$e;->o(Landroidx/mediarouter/media/g$g;Lcom/shabakaty/downloader/fq2;)V

    .line 43
    sget-boolean v7, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v7, :cond_f

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Provider removed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MediaRouter"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_f
    iget-object v7, v4, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v8, 0x202

    invoke-virtual {v7, v8, v5}, Landroidx/mediarouter/media/g$e$c;->b(ILjava/lang/Object;)V

    .line 46
    iget-object v4, v4, Landroidx/mediarouter/media/g$e;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_10
    iget-object v4, p0, Landroidx/mediarouter/media/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 48
    iput-object v6, v1, Landroidx/mediarouter/media/m;->G:Landroidx/mediarouter/media/m$b;

    .line 49
    iget-boolean v4, v1, Landroidx/mediarouter/media/m;->C:Z

    if-eqz v4, :cond_12

    .line 50
    sget-boolean v4, Landroidx/mediarouter/media/m;->H:Z

    if-eqz v4, :cond_11

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": Stopping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaRouteProviderProxy"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_11
    iput-boolean v3, v1, Landroidx/mediarouter/media/m;->C:Z

    .line 53
    invoke-virtual {v1}, Landroidx/mediarouter/media/m;->A()V

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_13
    return-void
.end method
