.class public final Landroidx/mediarouter/media/m;
.super Landroidx/mediarouter/media/c;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/m$b;,
        Landroidx/mediarouter/media/m$e;,
        Landroidx/mediarouter/media/m$d;,
        Landroidx/mediarouter/media/m$a;,
        Landroidx/mediarouter/media/m$g;,
        Landroidx/mediarouter/media/m$f;,
        Landroidx/mediarouter/media/m$c;
    }
.end annotation


# static fields
.field public static final H:Z


# instance fields
.field public final A:Landroidx/mediarouter/media/m$d;

.field public final B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/m$c;",
            ">;"
        }
    .end annotation
.end field

.field public C:Z

.field public D:Z

.field public E:Landroidx/mediarouter/media/m$a;

.field public F:Z

.field public G:Landroidx/mediarouter/media/m$b;

.field public final z:Landroid/content/ComponentName;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouteProviderProxy"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/mediarouter/media/m;->H:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/mediarouter/media/c$d;

    invoke-direct {v0, p2}, Landroidx/mediarouter/media/c$d;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/c;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/c$d;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Landroidx/mediarouter/media/m;->z:Landroid/content/ComponentName;

    .line 4
    new-instance p1, Landroidx/mediarouter/media/m$d;

    invoke-direct {p1}, Landroidx/mediarouter/media/m$d;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/m;->A:Landroidx/mediarouter/media/m$d;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->r()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->z()V

    :goto_0
    return-void
.end method

.method public l(Ljava/lang/String;)Landroidx/mediarouter/media/c$b;
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/c;->x:Lcom/shabakaty/downloader/fq2;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fq2;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/b;

    .line 5
    invoke-virtual {v3}, Landroidx/mediarouter/media/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    new-instance v0, Landroidx/mediarouter/media/m$f;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/m$f;-><init>(Landroidx/mediarouter/media/m;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean p1, p0, Landroidx/mediarouter/media/m;->F:Z

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/m$f;->c(Landroidx/mediarouter/media/m$a;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->A()V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "initialMemberRouteId cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Ljava/lang/String;)Landroidx/mediarouter/media/c$e;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/mediarouter/media/m;->s(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/c$e;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "routeId cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/c$e;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/mediarouter/media/m;->s(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/c$e;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/cq2;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/m;->F:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/m$a;->c(Lcom/shabakaty/downloader/cq2;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->A()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    .line 1
    sget-boolean p1, Landroidx/mediarouter/media/m;->H:Z

    const-string v0, "MediaRouteProviderProxy"

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Connected"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-boolean p1, p0, Landroidx/mediarouter/media/m;->D:Z

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->t()V

    if-eqz p2, :cond_1

    .line 5
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 7
    new-instance v2, Landroidx/mediarouter/media/m$a;

    invoke-direct {v2, p0, p1}, Landroidx/mediarouter/media/m$a;-><init>(Landroidx/mediarouter/media/m;Landroid/os/Messenger;)V

    .line 8
    iget v5, v2, Landroidx/mediarouter/media/m$a;->d:I

    add-int/lit8 p1, v5, 0x1

    iput p1, v2, Landroidx/mediarouter/media/m$a;->d:I

    iput v5, v2, Landroidx/mediarouter/media/m$a;->g:I

    const/4 v4, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    .line 9
    invoke-virtual/range {v3 .. v8}, Landroidx/mediarouter/media/m$a;->b(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    :try_start_1
    iget-object p1, v2, Landroidx/mediarouter/media/m$a;->a:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v2, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p2, 0x1

    goto :goto_2

    .line 11
    :catch_1
    invoke-virtual {v2}, Landroidx/mediarouter/media/m$a;->binderDied()V

    :goto_2
    if-eqz p2, :cond_4

    .line 12
    iput-object v2, p0, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    goto :goto_3

    .line 13
    :cond_4
    sget-boolean p1, Landroidx/mediarouter/media/m;->H:Z

    if-eqz p1, :cond_6

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": Registration failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": Service returned invalid messenger binder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-boolean p1, Landroidx/mediarouter/media/m;->H:Z

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Service disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->t()V

    return-void
.end method

.method public final r()V
    .locals 7

    const-string v0, ": Bind failed"

    .line 1
    iget-boolean v1, p0, Landroidx/mediarouter/media/m;->D:Z

    if-nez v1, :cond_2

    .line 2
    sget-boolean v1, Landroidx/mediarouter/media/m;->H:Z

    const-string v2, "MediaRouteProviderProxy"

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.MediaRouteProviderService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Landroidx/mediarouter/media/m;->z:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 6
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_1

    const/16 v4, 0x1001

    .line 7
    :cond_1
    iget-object v5, p0, Landroidx/mediarouter/media/c;->r:Landroid/content/Context;

    .line 8
    invoke-virtual {v5, v3, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/mediarouter/media/m;->D:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    sget-boolean v3, Landroidx/mediarouter/media/m;->H:Z

    if-eqz v3, :cond_2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/c$e;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/c;->x:Lcom/shabakaty/downloader/fq2;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fq2;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/b;

    .line 5
    invoke-virtual {v3}, Landroidx/mediarouter/media/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    new-instance v0, Landroidx/mediarouter/media/m$g;

    invoke-direct {v0, p0, p1, p2}, Landroidx/mediarouter/media/m$g;-><init>(Landroidx/mediarouter/media/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean p1, p0, Landroidx/mediarouter/media/m;->F:Z

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/m$g;->c(Landroidx/mediarouter/media/m$a;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->A()V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final t()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/c;->p(Lcom/shabakaty/downloader/fq2;)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/mediarouter/media/m;->F:Z

    .line 4
    iget-object v2, p0, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 5
    iget-object v4, p0, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/m$c;

    invoke-interface {v4}, Landroidx/mediarouter/media/m$c;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    .line 7
    invoke-virtual/range {v4 .. v9}, Landroidx/mediarouter/media/m$a;->b(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 8
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->b:Landroidx/mediarouter/media/m$e;

    .line 9
    iget-object v3, v3, Landroidx/mediarouter/media/m$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    .line 10
    iget-object v3, v2, Landroidx/mediarouter/media/m$a;->a:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 11
    iget-object v1, v2, Landroidx/mediarouter/media/m$a;->i:Landroidx/mediarouter/media/m;

    iget-object v1, v1, Landroidx/mediarouter/media/m;->A:Landroidx/mediarouter/media/m$d;

    new-instance v3, Landroidx/mediarouter/media/l;

    invoke-direct {v3, v2}, Landroidx/mediarouter/media/l;-><init>(Landroidx/mediarouter/media/m$a;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    iput-object v0, p0, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Service connection "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/media/m;->z:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(I)Landroidx/mediarouter/media/m$c;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/m$c;

    .line 2
    invoke-interface {v1}, Landroidx/mediarouter/media/m$c;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public v(Landroidx/mediarouter/media/m$a;Lcom/shabakaty/downloader/fq2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/m;->E:Landroidx/mediarouter/media/m$a;

    if-ne v0, p1, :cond_1

    .line 2
    sget-boolean p1, Landroidx/mediarouter/media/m;->H:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Descriptor changed, descriptor="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaRouteProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/c;->p(Lcom/shabakaty/downloader/fq2;)V

    :cond_1
    return-void
.end method

.method public w(Landroidx/mediarouter/media/m$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-interface {p1}, Landroidx/mediarouter/media/m$c;->b()V

    .line 3
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->A()V

    return-void
.end method

.method public final x()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/m;->C:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/media/c;->v:Lcom/shabakaty/downloader/cq2;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public y()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/m;->C:Z

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Landroidx/mediarouter/media/m;->H:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Starting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouteProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/mediarouter/media/m;->C:Z

    .line 5
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->A()V

    :cond_1
    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/m;->D:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Landroidx/mediarouter/media/m;->H:Z

    const-string v1, "MediaRouteProviderProxy"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Unbinding"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/mediarouter/media/m;->D:Z

    .line 5
    invoke-virtual {p0}, Landroidx/mediarouter/media/m;->t()V

    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/mediarouter/media/c;->r:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": unbindService failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
