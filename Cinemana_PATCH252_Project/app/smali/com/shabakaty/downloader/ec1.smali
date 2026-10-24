.class public Lcom/shabakaty/downloader/ec1;
.super Ljava/lang/Object;
.source "FirebaseApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ec1$d;,
        Lcom/shabakaty/downloader/ec1$c;,
        Lcom/shabakaty/downloader/ec1$e;,
        Lcom/shabakaty/downloader/ec1$b;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/Object;

.field public static final j:Ljava/util/concurrent/Executor;

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/ec1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/shabakaty/downloader/tc1;

.field public final d:Lcom/shabakaty/downloader/z80;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Lcom/shabakaty/downloader/lf2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/lf2<",
            "Lcom/shabakaty/downloader/kl0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ec1$b;",
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

    sput-object v0, Lcom/shabakaty/downloader/ec1;->i:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ec1$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ec1$d;-><init>(Lcom/shabakaty/downloader/ec1$a;)V

    sput-object v0, Lcom/shabakaty/downloader/ec1;->j:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ad;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ad;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ec1;->k:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/tc1;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ec1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ec1;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ec1;->h:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    const-string p2, "null reference"

    .line 8
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 10
    const-class p2, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/s80$b;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcom/shabakaty/downloader/s80$b;-><init>(Ljava/lang/Class;Lcom/shabakaty/downloader/s80$a;)V

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/s80$b;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/r80;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/r80;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ec1;->j:Ljava/util/concurrent/Executor;

    .line 16
    sget v2, Lcom/shabakaty/downloader/z80;->g:I

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    new-instance p2, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {p2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    .line 21
    new-instance v4, Lcom/shabakaty/downloader/x80;

    const/4 v5, 0x1

    invoke-direct {v4, p2, v5}, Lcom/shabakaty/downloader/x80;-><init>(Lcom/shabakaty/downloader/w80;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-class p2, Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/Class;

    .line 23
    invoke-static {p1, p2, v4}, Lcom/shabakaty/downloader/o80;->d(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/shabakaty/downloader/o80;

    move-result-object p2

    .line 24
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-class p2, Lcom/shabakaty/downloader/ec1;

    new-array v4, v1, [Ljava/lang/Class;

    .line 26
    invoke-static {p0, p2, v4}, Lcom/shabakaty/downloader/o80;->d(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/shabakaty/downloader/o80;

    move-result-object p2

    .line 27
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const-class p2, Lcom/shabakaty/downloader/tc1;

    new-array v1, v1, [Ljava/lang/Class;

    .line 29
    invoke-static {p3, p2, v1}, Lcom/shabakaty/downloader/o80;->d(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/shabakaty/downloader/o80;

    move-result-object p2

    .line 30
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance p2, Lcom/shabakaty/downloader/z80;

    .line 32
    invoke-direct {p2, v0, v2, v3}, Lcom/shabakaty/downloader/z80;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 33
    iput-object p2, p0, Lcom/shabakaty/downloader/ec1;->d:Lcom/shabakaty/downloader/z80;

    .line 34
    new-instance p2, Lcom/shabakaty/downloader/lf2;

    new-instance p3, Lcom/shabakaty/downloader/dc1;

    invoke-direct {p3, p0, p1}, Lcom/shabakaty/downloader/dc1;-><init>(Lcom/shabakaty/downloader/ec1;Landroid/content/Context;)V

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/lf2;-><init>(Lcom/shabakaty/downloader/pj3;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ec1;->g:Lcom/shabakaty/downloader/lf2;

    return-void
.end method

.method public static b()Lcom/shabakaty/downloader/ec1;
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ec1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/ec1;->k:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    check-cast v1, Lcom/shabakaty/downloader/m64;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ec1;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/cg3;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e(Landroid/content/Context;Lcom/shabakaty/downloader/tc1;Ljava/lang/String;)Lcom/shabakaty/downloader/ec1;
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ec1$c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/ec1$c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/ec1$c;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ec1$c;-><init>()V

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/ec1$c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->a(Landroid/app/Application;)V

    .line 8
    sget-object v0, Lcom/google/android/gms/common/api/internal/a;->v:Lcom/google/android/gms/common/api/internal/a;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 16
    :goto_1
    sget-object v0, Lcom/shabakaty/downloader/ec1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_1
    sget-object v1, Lcom/shabakaty/downloader/ec1;->k:Ljava/util/Map;

    .line 18
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/m64;

    invoke-virtual {v2, p2}, Lcom/shabakaty/downloader/m64;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirebaseApp name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    .line 20
    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v2, Lcom/shabakaty/downloader/ec1;

    invoke-direct {v2, p0, p2, p1}, Lcom/shabakaty/downloader/ec1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/tc1;)V

    .line 22
    check-cast v1, Lcom/shabakaty/downloader/m64;

    invoke-virtual {v1, p2, v2}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ec1;->d()V

    return-object v2

    :catchall_1
    move-exception p0

    .line 25
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ec1;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/tc1;->b:Ljava/lang/String;

    .line 10
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 12
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp"

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/ec1$e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/ec1$e;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ec1$e;-><init>(Landroid/content/Context;)V

    .line 12
    sget-object v2, Lcom/shabakaty/downloader/ec1$e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 17
    iget-object v2, p0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/ec1;->d:Lcom/shabakaty/downloader/z80;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec1;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/z80;->g(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ec1;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    check-cast p1, Lcom/shabakaty/downloader/ec1;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ec1;->g:Lcom/shabakaty/downloader/lf2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lf2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kl0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, v0, Lcom/shabakaty/downloader/kl0;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public g()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    const-string v1, "[DEFAULT]"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/q43$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/q43$a;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/cl3;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/q43$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/q43$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/q43$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/q43$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q43$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
