.class public final Landroidx/mediarouter/media/g;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/g$f;,
        Landroidx/mediarouter/media/g$e;,
        Landroidx/mediarouter/media/g$c;,
        Landroidx/mediarouter/media/g$d;,
        Landroidx/mediarouter/media/g$b;,
        Landroidx/mediarouter/media/g$g;,
        Landroidx/mediarouter/media/g$h;
    }
.end annotation


# static fields
.field public static final c:Z

.field public static d:Landroidx/mediarouter/media/g$e;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/g$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouter"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/g;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Landroidx/mediarouter/media/g;->a:Landroid/content/Context;

    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;)Landroidx/mediarouter/media/g;
    .locals 6

    if-eqz p0, :cond_5

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroidx/mediarouter/media/g$e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/g$e;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 4
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/g$e;->a(Landroidx/mediarouter/media/c;)V

    .line 5
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->c:Landroidx/mediarouter/media/a;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/g$e;->a(Landroidx/mediarouter/media/c;)V

    .line 7
    :cond_0
    new-instance v1, Landroidx/mediarouter/media/n;

    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/mediarouter/media/n;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/n$c;)V

    .line 8
    iget-boolean v0, v1, Landroidx/mediarouter/media/n;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, v1, Landroidx/mediarouter/media/n;->f:Z

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    .line 15
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    .line 16
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 17
    iget-object v2, v1, Landroidx/mediarouter/media/n;->a:Landroid/content/Context;

    iget-object v3, v1, Landroidx/mediarouter/media/n;->g:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, v1, Landroidx/mediarouter/media/n;->c:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 18
    iget-object v0, v1, Landroidx/mediarouter/media/n;->c:Landroid/os/Handler;

    iget-object v1, v1, Landroidx/mediarouter/media/n;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_1
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 20
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 21
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/g;

    if-nez v2, :cond_3

    .line 22
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_3
    iget-object v3, v2, Landroidx/mediarouter/media/g;->a:Landroid/content/Context;

    if-ne v3, p0, :cond_2

    goto :goto_1

    .line 24
    :cond_4
    new-instance v2, Landroidx/mediarouter/media/g;

    invoke-direct {v2, p0}, Landroidx/mediarouter/media/g;-><init>(Landroid/content/Context;)V

    .line 25
    iget-object p0, v0, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v2

    .line 26
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Landroidx/mediarouter/media/f;Landroidx/mediarouter/media/g$b;I)V
    .locals 3

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCallback: selector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/g;->c(Landroidx/mediarouter/media/g$b;)I

    move-result v0

    if-gez v0, :cond_1

    .line 7
    new-instance v0, Landroidx/mediarouter/media/g$c;

    invoke-direct {v0, p0, p2}, Landroidx/mediarouter/media/g$c;-><init>(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$b;)V

    .line 8
    iget-object p2, p0, Landroidx/mediarouter/media/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Landroidx/mediarouter/media/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/mediarouter/media/g$c;

    :goto_0
    const/4 p2, 0x0

    .line 10
    iget v1, v0, Landroidx/mediarouter/media/g$c;->d:I

    const/4 v2, 0x1

    if-eq p3, v1, :cond_2

    .line 11
    iput p3, v0, Landroidx/mediarouter/media/g$c;->d:I

    const/4 p2, 0x1

    .line 12
    :cond_2
    iget-object p3, v0, Landroidx/mediarouter/media/g$c;->c:Landroidx/mediarouter/media/f;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p3}, Landroidx/mediarouter/media/f;->a()V

    .line 14
    invoke-virtual {p1}, Landroidx/mediarouter/media/f;->a()V

    .line 15
    iget-object p3, p3, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    iget-object v1, p1, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 16
    new-instance p2, Landroidx/mediarouter/media/f$a;

    iget-object p3, v0, Landroidx/mediarouter/media/g$c;->c:Landroidx/mediarouter/media/f;

    invoke-direct {p2, p3}, Landroidx/mediarouter/media/f$a;-><init>(Landroidx/mediarouter/media/f;)V

    .line 17
    invoke-virtual {p1}, Landroidx/mediarouter/media/f;->a()V

    .line 18
    iget-object p1, p1, Landroidx/mediarouter/media/f;->b:Ljava/util/List;

    .line 19
    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/f$a;->a(Ljava/util/Collection;)Landroidx/mediarouter/media/f$a;

    .line 20
    invoke-virtual {p2}, Landroidx/mediarouter/media/f$a;->c()Landroidx/mediarouter/media/f;

    move-result-object p1

    iput-object p1, v0, Landroidx/mediarouter/media/g$c;->c:Landroidx/mediarouter/media/f;

    goto :goto_1

    :cond_3
    move v2, p2

    :goto_1
    if-eqz v2, :cond_4

    .line 21
    sget-object p1, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {p1}, Landroidx/mediarouter/media/g$e;->m()V

    :cond_4
    return-void

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroidx/mediarouter/media/g$b;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/mediarouter/media/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/g$c;

    iget-object v2, v2, Landroidx/mediarouter/media/g$c;->b:Landroidx/mediarouter/media/g$b;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public e()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3

    .line 1
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 2
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->y:Landroidx/mediarouter/media/g$e$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v1, Landroidx/mediarouter/media/g$e$d;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Landroidx/mediarouter/media/g$e;->z:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method public f()Ljava/util/List;
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
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    .line 3
    iget-object v0, v0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Landroidx/mediarouter/media/g$h;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e;->g()Landroidx/mediarouter/media/g$h;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroidx/mediarouter/media/f;I)Z
    .locals 7

    if-eqz p1, :cond_5

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroidx/mediarouter/media/f;->c()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_1

    .line 4
    iget-boolean v1, v0, Landroidx/mediarouter/media/g$e;->m:Z

    if-eqz v1, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_3

    .line 5
    :cond_1
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    .line 6
    iget-object v5, v0, Landroidx/mediarouter/media/g$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/mediarouter/media/g$h;

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v5}, Landroidx/mediarouter/media/g$h;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v5, p1}, Landroidx/mediarouter/media/g$h;->i(Landroidx/mediarouter/media/f;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return v2

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Landroidx/mediarouter/media/g$b;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/g;->c(Landroidx/mediarouter/media/g$b;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/mediarouter/media/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6
    sget-object p1, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {p1}, Landroidx/mediarouter/media/g$e;->m()V

    :cond_1
    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Landroidx/mediarouter/media/g$h;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-boolean v0, Landroidx/mediarouter/media/g;->c:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/mediarouter/media/g$e;->k(Landroidx/mediarouter/media/g$h;I)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "route must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(I)V
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e;->c()Landroidx/mediarouter/media/g$h;

    move-result-object v0

    .line 3
    sget-object v1, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {v1}, Landroidx/mediarouter/media/g$e;->g()Landroidx/mediarouter/media/g$h;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 4
    sget-object v1, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {v1, v0, p1}, Landroidx/mediarouter/media/g$e;->k(Landroidx/mediarouter/media/g$h;I)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported reason to unselect route"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
