.class public final Lcom/shabakaty/downloader/tu;
.super Ljava/lang/Object;
.source "CameraX.java"


# static fields
.field public static final m:Ljava/lang/Object;

.field public static n:Lcom/shabakaty/downloader/tu;

.field public static o:Lcom/shabakaty/downloader/uu$b;

.field public static p:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static q:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/shabakaty/downloader/du;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/shabakaty/downloader/uu;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/HandlerThread;

.field public g:Lcom/shabakaty/downloader/qt;

.field public h:Lcom/shabakaty/downloader/mt;

.field public i:Lcom/shabakaty/downloader/ix4;

.field public j:Landroid/content/Context;

.field public k:I

.field public l:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tu;->m:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraX is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    .line 4
    sput-object v1, Lcom/shabakaty/downloader/tu;->p:Lcom/shabakaty/downloader/pi2;

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/tu;->q:Lcom/shabakaty/downloader/pi2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/uu;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/du;

    invoke-direct {v0}, Lcom/shabakaty/downloader/du;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/tu;->a:Lcom/shabakaty/downloader/du;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/tu;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/tu;->k:I

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/tu;->l:Lcom/shabakaty/downloader/pi2;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/tu;->c:Lcom/shabakaty/downloader/uu;

    .line 8
    iget-object v1, p1, Lcom/shabakaty/downloader/uu;->r:Lcom/shabakaty/downloader/k83;

    sget-object v2, Lcom/shabakaty/downloader/uu;->v:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/uu;->r:Lcom/shabakaty/downloader/k83;

    sget-object v2, Lcom/shabakaty/downloader/uu;->w:Lcom/shabakaty/downloader/o90$a;

    invoke-virtual {p1, v2, v0}, Lcom/shabakaty/downloader/k83;->a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/pt;

    invoke-direct {v1}, Lcom/shabakaty/downloader/pt;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/shabakaty/downloader/tu;->d:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_1

    .line 11
    new-instance p1, Landroid/os/HandlerThread;

    const/16 v0, 0xa

    const-string v1, "CameraX-scheduler"

    invoke-direct {p1, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/tu;->f:Landroid/os/HandlerThread;

    .line 12
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 13
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/yr1;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/tu;->e:Landroid/os/Handler;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/shabakaty/downloader/tu;->f:Landroid/os/HandlerThread;

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/tu;->e:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Application;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 3
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Landroid/app/Application;

    goto :goto_1

    .line 5
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/shabakaty/downloader/uu$b;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/tu;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/uu$b;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/uu$b;

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120023

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/uu$b;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p0

    goto :goto_0

    :catch_6
    move-exception p0

    :goto_0
    const-string v0, "CameraX"

    const-string v1, "Failed to retrieve default CameraXConfig.Provider from resources"

    .line 9
    invoke-static {v0, v1, p0}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static c()Lcom/shabakaty/downloader/pi2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/pi2<",
            "Lcom/shabakaty/downloader/tu;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tu;->n:Lcom/shabakaty/downloader/tu;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call CameraX.initialize() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/vz1$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/vz1$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 4
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/tu;->p:Lcom/shabakaty/downloader/pi2;

    new-instance v2, Lcom/shabakaty/downloader/nu;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/nu;-><init>(Lcom/shabakaty/downloader/tu;)V

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/jo1;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/jo1;-><init>(Lcom/shabakaty/downloader/rn1;)V

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/ky;

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/ky;-><init>(Lcom/shabakaty/downloader/od;Lcom/shabakaty/downloader/pi2;)V

    .line 8
    invoke-interface {v1, v2, v0}, Lcom/shabakaty/downloader/pi2;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tu;->n:Lcom/shabakaty/downloader/tu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "CameraX already initialized."

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/tu;->o:Lcom/shabakaty/downloader/uu$b;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/tu;

    sget-object v2, Lcom/shabakaty/downloader/tu;->o:Lcom/shabakaty/downloader/uu$b;

    invoke-interface {v2}, Lcom/shabakaty/downloader/uu$b;->getCameraXConfig()Lcom/shabakaty/downloader/uu;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/tu;-><init>(Lcom/shabakaty/downloader/uu;)V

    .line 5
    sput-object v0, Lcom/shabakaty/downloader/tu;->n:Lcom/shabakaty/downloader/tu;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/mu;

    invoke-direct {v2, v0, p0, v1}, Lcom/shabakaty/downloader/mu;-><init>(Lcom/shabakaty/downloader/tu;Landroid/content/Context;I)V

    invoke-static {v2}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/downloader/tu;->p:Lcom/shabakaty/downloader/pi2;

    return-void
.end method

.method public static f()Lcom/shabakaty/downloader/pi2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tu;->n:Lcom/shabakaty/downloader/tu;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/tu;->q:Lcom/shabakaty/downloader/pi2;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/tu;->n:Lcom/shabakaty/downloader/tu;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/lu;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/lu;-><init>(Lcom/shabakaty/downloader/tu;I)V

    invoke-static {v1}, Lcom/shabakaty/downloader/ar;->a(Lcom/shabakaty/downloader/ar$c;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/tu;->q:Lcom/shabakaty/downloader/pi2;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tu;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 2
    :try_start_0
    iput v1, p0, Lcom/shabakaty/downloader/tu;->k:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
