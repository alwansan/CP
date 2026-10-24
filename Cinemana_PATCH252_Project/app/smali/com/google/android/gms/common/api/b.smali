.class public Lcom/google/android/gms/common/api/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/j9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/j9<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:Landroid/os/Looper;

.field public final f:I

.field public final g:Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public final h:Lcom/shabakaty/downloader/h9;

.field public final i:Lcom/google/android/gms/common/api/internal/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/shabakaty/downloader/h9;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/shabakaty/downloader/h9;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/shabakaty/downloader/h9;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Looper must not be null."

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Lcom/google/android/gms/common/api/b$a;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Api must not be null."

    .line 22
    invoke-static {p2, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/api/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/api/a;

    .line 26
    iput-object p3, p0, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a$d;

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->e:Landroid/os/Looper;

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/j9;

    invoke-direct {v0, p2, p3}, Lcom/shabakaty/downloader/j9;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;)V

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->d:Lcom/shabakaty/downloader/j9;

    .line 30
    new-instance p2, Lcom/google/android/gms/common/api/internal/s;

    invoke-direct {p2, p0}, Lcom/google/android/gms/common/api/internal/s;-><init>(Lcom/google/android/gms/common/api/b;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/b;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/b;->i:Lcom/google/android/gms/common/api/internal/c;

    .line 32
    iget-object p3, p2, Lcom/google/android/gms/common/api/internal/c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p3

    .line 33
    iput p3, p0, Lcom/google/android/gms/common/api/b;->f:I

    .line 34
    iput-object p4, p0, Lcom/google/android/gms/common/api/b;->h:Lcom/shabakaty/downloader/h9;

    .line 35
    instance-of p3, p1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p3, :cond_1

    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p3, p4, :cond_1

    .line 37
    new-instance p3, Lcom/shabakaty/downloader/hh2;

    invoke-direct {p3, p1}, Lcom/shabakaty/downloader/hh2;-><init>(Landroid/app/Activity;)V

    invoke-static {p3}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Lcom/shabakaty/downloader/hh2;)Lcom/shabakaty/downloader/nh2;

    move-result-object p1

    .line 38
    const-class p3, Lcom/shabakaty/downloader/zc5;

    const-string p4, "ConnectionlessLifecycleHelper"

    .line 39
    invoke-interface {p1, p4, p3}, Lcom/shabakaty/downloader/nh2;->k0(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/zc5;

    if-nez p3, :cond_0

    .line 40
    new-instance p3, Lcom/shabakaty/downloader/zc5;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/zc5;-><init>(Lcom/shabakaty/downloader/nh2;Lcom/google/android/gms/common/api/internal/c;)V

    .line 41
    :cond_0
    iget-object p1, p3, Lcom/shabakaty/downloader/zc5;->w:Lcom/shabakaty/downloader/dd;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/dd;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p2, p3}, Lcom/google/android/gms/common/api/internal/c;->b(Lcom/shabakaty/downloader/zc5;)V

    .line 43
    :cond_1
    iget-object p1, p2, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b$a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/b$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 4
    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/api/b;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/api/a;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a$d;

    .line 9
    iget-object p1, p4, Lcom/google/android/gms/common/api/b$a;->b:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->e:Landroid/os/Looper;

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/j9;

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/j9;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;)V

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->d:Lcom/shabakaty/downloader/j9;

    .line 12
    new-instance p1, Lcom/google/android/gms/common/api/internal/s;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/s;-><init>(Lcom/google/android/gms/common/api/b;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->i:Lcom/google/android/gms/common/api/internal/c;

    .line 14
    iget-object p2, p1, Lcom/google/android/gms/common/api/internal/c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    .line 15
    iput p2, p0, Lcom/google/android/gms/common/api/b;->f:I

    .line 16
    iget-object p2, p4, Lcom/google/android/gms/common/api/b$a;->a:Lcom/shabakaty/downloader/h9;

    iput-object p2, p0, Lcom/google/android/gms/common/api/b;->h:Lcom/shabakaty/downloader/h9;

    .line 17
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0x1e

    if-lt v0, v3, :cond_2

    .line 2
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "REL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 3
    :cond_2
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x52

    if-lt v3, v4, :cond_3

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    :goto_2
    const/4 v1, 0x0

    goto :goto_5

    .line 7
    :cond_4
    sget-object v0, Lcom/shabakaty/downloader/uc3;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    :cond_5
    :try_start_0
    const-string v0, "google"

    .line 9
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v3, "RPP1"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v3, "RPP2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v3, 0x602711

    if-lt v0, v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 13
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uc3;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 14
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/shabakaty/downloader/uc3;->a:Ljava/lang/Boolean;

    .line 15
    :goto_4
    sget-object v0, Lcom/shabakaty/downloader/uc3;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "PlatformVersion"

    const-string v1, "Build version must be at least 6301457 to support R in gmscore"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_7
    sget-object v0, Lcom/shabakaty/downloader/uc3;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_8

    .line 18
    :try_start_1
    const-class v0, Landroid/content/Context;

    const-string v1, "getAttributionTag"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/t30$a;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/t30$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/t30$a;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->c0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->u:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/accounts/Account;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->u:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v2, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$a;

    if-eqz v2, :cond_2

    .line 7
    check-cast v1, Lcom/google/android/gms/common/api/a$d$a;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$a;->G0()Landroid/accounts/Account;

    move-result-object v3

    .line 8
    :cond_2
    :goto_0
    iput-object v3, v0, Lcom/shabakaty/downloader/t30$a;->a:Landroid/accounts/Account;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_3

    .line 10
    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->c0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->W0()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 14
    :goto_1
    iget-object v2, v0, Lcom/shabakaty/downloader/t30$a;->b:Lcom/shabakaty/downloader/dd;

    if-nez v2, :cond_4

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/dd;

    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/dd;-><init>(I)V

    .line 17
    iput-object v2, v0, Lcom/shabakaty/downloader/t30$a;->b:Lcom/shabakaty/downloader/dd;

    .line 18
    :cond_4
    iget-object v2, v0, Lcom/shabakaty/downloader/t30$a;->b:Lcom/shabakaty/downloader/dd;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/dd;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/shabakaty/downloader/t30$a;->d:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/shabakaty/downloader/t30$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b<",
            "+",
            "Lcom/shabakaty/downloader/ft3;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->i:Lcom/google/android/gms/common/api/internal/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/google/android/gms/common/api/internal/v;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/api/internal/v;-><init>(ILcom/google/android/gms/common/api/internal/b;)V

    .line 4
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    new-instance v2, Lcom/shabakaty/downloader/wa5;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v2, v1, v0, p0}, Lcom/shabakaty/downloader/wa5;-><init>(Lcom/google/android/gms/common/api/internal/u;ILcom/google/android/gms/common/api/b;)V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object p2
.end method

.method public final c(ILcom/shabakaty/downloader/yk4;)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(I",
            "Lcom/shabakaty/downloader/yk4<",
            "TA;TTResult;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->i:Lcom/google/android/gms/common/api/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->h:Lcom/shabakaty/downloader/h9;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Lcom/google/android/gms/common/api/internal/x;

    invoke-direct {v3, p1, p2, v0, v2}, Lcom/google/android/gms/common/api/internal/x;-><init>(ILcom/shabakaty/downloader/yk4;Lcom/shabakaty/downloader/zk4;Lcom/shabakaty/downloader/h9;)V

    .line 4
    iget-object p1, v1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    new-instance p2, Lcom/shabakaty/downloader/wa5;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p2, v3, v1, p0}, Lcom/shabakaty/downloader/wa5;-><init>(Lcom/google/android/gms/common/api/internal/u;ILcom/google/android/gms/common/api/b;)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    return-object p1
.end method
