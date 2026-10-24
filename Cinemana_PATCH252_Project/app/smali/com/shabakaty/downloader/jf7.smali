.class public final Lcom/shabakaty/downloader/jf7;
.super Lcom/shabakaty/downloader/dt5;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/dt5;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jf7;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final g2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jf7;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/hv4;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p2, 0x0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jf7;->g2()V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/jf7;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/shabakaty/downloader/sc7;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/sc7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/sc7;->a()V

    goto/16 :goto_4

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/jf7;->g2()V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/jf7;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/shabakaty/downloader/ld4;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/ld4;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ld4;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p4

    .line 6
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->H:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz p4, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ld4;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/jf7;->a:Landroid/content/Context;

    .line 9
    new-instance v1, Lcom/google/android/gms/auth/api/signin/b;

    const-string v2, "null reference"

    .line 10
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/auth/api/signin/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string p1, "Result must not be null"

    const/4 v0, 0x3

    if-eqz p4, :cond_6

    .line 12
    iget-object p4, v1, Lcom/google/android/gms/common/api/b;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 13
    iget-object v2, v1, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/b;->e()I

    move-result v1

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 15
    :goto_0
    sget-object v1, Lcom/shabakaty/downloader/qo6;->a:Lcom/shabakaty/downloader/qk2;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v3, "Revoking access"

    invoke-virtual {v1, v3, p3}, Lcom/shabakaty/downloader/qk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {v2}, Lcom/shabakaty/downloader/ld4;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/ld4;

    move-result-object p3

    const-string v1, "refreshToken"

    .line 17
    invoke-virtual {p3, v1}, Lcom/shabakaty/downloader/ld4;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-static {v2}, Lcom/shabakaty/downloader/qo6;->b(Landroid/content/Context;)V

    if-eqz v0, :cond_5

    .line 19
    sget-object p4, Lcom/shabakaty/downloader/a56;->t:Lcom/shabakaty/downloader/qk2;

    if-nez p3, :cond_4

    .line 20
    new-instance p3, Lcom/google/android/gms/common/api/Status;

    const/4 p4, 0x4

    const/4 v0, 0x0

    .line 21
    invoke-direct {p3, p4, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 22
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/Status;->W0()Z

    move-result p1

    xor-int/2addr p1, p2

    const-string p4, "Status code must not be SUCCESS"

    invoke-static {p1, p4}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 24
    new-instance p1, Lcom/shabakaty/downloader/pb3;

    invoke-direct {p1, v0, p3}, Lcom/shabakaty/downloader/pb3;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/shabakaty/downloader/ft3;)V

    .line 25
    invoke-virtual {p1, p3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    goto :goto_1

    .line 26
    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/a56;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/a56;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance p3, Ljava/lang/Thread;

    invoke-direct {p3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 28
    iget-object p1, p1, Lcom/shabakaty/downloader/a56;->s:Lcom/shabakaty/downloader/bd4;

    goto :goto_1

    .line 29
    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/vz6;

    invoke-direct {p1, p4}, Lcom/shabakaty/downloader/vz6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p4, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    .line 30
    :goto_1
    new-instance p3, Lcom/shabakaty/downloader/pc5;

    invoke-direct {p3}, Lcom/shabakaty/downloader/pc5;-><init>()V

    .line 31
    sget-object p4, Lcom/shabakaty/downloader/ob3;->a:Lcom/shabakaty/downloader/ob3$b;

    .line 32
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 33
    new-instance v1, Lcom/shabakaty/downloader/mc5;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/shabakaty/downloader/mc5;-><init>(Lcom/shabakaty/downloader/nb3;Lcom/shabakaty/downloader/zk4;Lcom/shabakaty/downloader/ob3$a;Lcom/shabakaty/downloader/ob3$b;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d(Lcom/shabakaty/downloader/nb3$a;)V

    goto :goto_4

    .line 34
    :cond_6
    iget-object p4, v1, Lcom/google/android/gms/common/api/b;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 35
    iget-object v2, v1, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/b;->e()I

    move-result v1

    if-ne v1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 37
    :goto_2
    sget-object v1, Lcom/shabakaty/downloader/qo6;->a:Lcom/shabakaty/downloader/qk2;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v3, "Signing out"

    invoke-virtual {v1, v3, p3}, Lcom/shabakaty/downloader/qk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {v2}, Lcom/shabakaty/downloader/qo6;->b(Landroid/content/Context;)V

    if-eqz v0, :cond_8

    .line 39
    sget-object p3, Lcom/google/android/gms/common/api/Status;->w:Lcom/google/android/gms/common/api/Status;

    .line 40
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance p1, Lcom/shabakaty/downloader/bd4;

    invoke-direct {p1, p4}, Lcom/shabakaty/downloader/bd4;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 42
    invoke-virtual {p1, p3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/shabakaty/downloader/ft3;)V

    goto :goto_3

    .line 43
    :cond_8
    new-instance p1, Lcom/shabakaty/downloader/xr6;

    invoke-direct {p1, p4}, Lcom/shabakaty/downloader/xr6;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p4, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    .line 44
    :goto_3
    new-instance p3, Lcom/shabakaty/downloader/pc5;

    invoke-direct {p3}, Lcom/shabakaty/downloader/pc5;-><init>()V

    .line 45
    sget-object p4, Lcom/shabakaty/downloader/ob3;->a:Lcom/shabakaty/downloader/ob3$b;

    .line 46
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 47
    new-instance v1, Lcom/shabakaty/downloader/mc5;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/shabakaty/downloader/mc5;-><init>(Lcom/shabakaty/downloader/nb3;Lcom/shabakaty/downloader/zk4;Lcom/shabakaty/downloader/ob3$a;Lcom/shabakaty/downloader/ob3$b;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d(Lcom/shabakaty/downloader/nb3$a;)V

    :goto_4
    return p2
.end method
