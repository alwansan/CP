.class public final Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;
.super Ljava/lang/Object;
.source "GoogleLogin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u001c\u0010\u0011\u001a\u00020\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;",
        "",
        "Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;",
        "value",
        "Lcom/shabakaty/downloader/qv4;",
        "setGoogleLoginCallbacks",
        "Landroid/app/Activity;",
        "activity",
        "",
        "googleClientId",
        "Landroid/content/Intent;",
        "getSigninIntent",
        "Lcom/shabakaty/downloader/uk4;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        "task",
        "Lcom/shabakaty/usermanagement/data/model/ClientInformation;",
        "clientInformation",
        "handleGoogleSigninResult",
        "googleLoginCallback",
        "Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;",
        "<init>",
        "()V",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;

.field public static googleLoginCallback:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;

    invoke-direct {v0}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;-><init>()V

    sput-object v0, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->INSTANCE:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGoogleLoginCallback$p(Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;)Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;
    .locals 0

    .line 1
    sget-object p0, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->googleLoginCallback:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;

    return-object p0
.end method


# virtual methods
.method public final getSigninIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 14

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->start(Landroid/app/Activity;)V

    move-object v0, p1

    move-object/from16 v8, p2

    const-string v1, "activity"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "googleClientId"

    invoke-static {v8, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->H:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v2, "null reference"

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v2, Ljava/util/HashSet;

    .line 6
    iget-object v3, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->s:Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-boolean v5, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->u:Z

    .line 9
    iget-object v3, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->x:Ljava/lang/String;

    .line 10
    iget-object v4, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->t:Landroid/accounts/Account;

    .line 11
    iget-object v9, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->y:Ljava/lang/String;

    .line 12
    iget-object v6, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->z:Ljava/util/ArrayList;

    .line 13
    invoke-static {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->D1(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    .line 14
    iget-object v11, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->A:Ljava/lang/String;

    const/4 v6, 0x1

    .line 15
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v12, 0x0

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v3, "two different server client ids provided"

    .line 17
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 18
    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->D:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->G:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->F:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    .line 21
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 22
    :cond_3
    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->E:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_4
    new-instance v13, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x3

    move-object v1, v13

    move-object/from16 v8, p2

    .line 24
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 25
    new-instance v1, Lcom/google/android/gms/auth/api/signin/b;

    invoke-direct {v1, p1, v13}, Lcom/google/android/gms/auth/api/signin/b;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 26
    iget-object v0, v1, Lcom/google/android/gms/common/api/b;->a:Landroid/content/Context;

    .line 27
    sget-object v2, Lcom/google/android/gms/auth/api/signin/c;->a:[I

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/b;->e()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v2, v2, v3

    if-eq v2, v4, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    .line 28
    iget-object v1, v1, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a$d;

    .line 29
    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 30
    sget-object v2, Lcom/shabakaty/downloader/qo6;->a:Lcom/shabakaty/downloader/qk2;

    new-array v3, v12, [Ljava/lang/Object;

    const-string v4, "getNoImplementationSignInIntent()"

    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/qk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/qo6;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.NO_IMPL"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 33
    :cond_5
    iget-object v1, v1, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a$d;

    .line 34
    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/qo6;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    .line 35
    :cond_6
    iget-object v1, v1, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/a$d;

    .line 36
    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 37
    sget-object v2, Lcom/shabakaty/downloader/qo6;->a:Lcom/shabakaty/downloader/qk2;

    new-array v3, v12, [Ljava/lang/Object;

    const-string v4, "getFallbackSignInIntent()"

    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/qk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/qo6;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    return-object v0
.end method

.method public final handleGoogleSigninResult(Lcom/shabakaty/downloader/uk4;Lcom/shabakaty/usermanagement/data/model/ClientInformation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uk4<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;",
            "Lcom/shabakaty/usermanagement/data/model/ClientInformation;",
            ")V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientInformation"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    const-class v0, Lcom/shabakaty/downloader/g9;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/uk4;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v0, "google_account_result_ok"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/a63;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a63;-><init>()V

    .line 3
    new-instance v1, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin$handleGoogleSigninResult$accessTokenCallback$1;

    invoke-direct {v1}, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin$handleGoogleSigninResult$accessTokenCallback$1;-><init>()V

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/th1$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5
    invoke-direct {v2, v3, v4}, Lcom/shabakaty/downloader/th1$a;-><init>(Ljava/nio/charset/Charset;I)V

    const-string v3, "grant_type"

    const-string v4, "authorization_code"

    .line 6
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/th1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/th1$a;

    const-string v3, "client_id"

    .line 7
    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getGoogleClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/th1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/th1$a;

    const-string v3, "client_secret"

    .line 8
    invoke-virtual {p2}, Lcom/shabakaty/usermanagement/data/model/ClientInformation;->getGoogleSecret()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lcom/shabakaty/downloader/th1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/th1$a;

    const-string p2, "redirect_uri"

    const-string v3, ""

    .line 9
    invoke-virtual {v2, p2, v3}, Lcom/shabakaty/downloader/th1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/th1$a;

    const-string p2, "code"

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->x:Ljava/lang/String;

    .line 11
    if-eqz p1, :missing_code
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    move-result v3
    if-nez v3, :has_code
    :missing_code
    const-string v0, "google_authorization_code_missing"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->fail()V
    return-void
    :has_code
    invoke-virtual {v2, p2, p1}, Lcom/shabakaty/downloader/th1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/th1$a;

    .line 12
    invoke-virtual {v2}, Lcom/shabakaty/downloader/th1$a;->b()Lcom/shabakaty/downloader/th1;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {p2}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    const-string v2, "https://www.googleapis.com/oauth2/v4/token"

    .line 14
    invoke-virtual {p2, v2}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    const-string v2, "POST"

    .line 15
    invoke-virtual {p2, v2, p1}, Lcom/shabakaty/downloader/vr3$a;->g(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/vr3$a;

    .line 16
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/pn3;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/pn3;->l0(Lcom/shabakaty/downloader/wq;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/g9; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :auth_unexpected

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    iget-object v0, p1, Lcom/shabakaty/downloader/g9;->r:Lcom/google/android/gms/common/api/Status;
    iget v0, v0, Lcom/google/android/gms/common/api/Status;->s:I
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->googleError(I)V
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->fail()V

    goto :goto_0
    :auth_unexpected
    move-exception p1
    const-string v0, "google_result_processing_failure"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->emit(Ljava/lang/String;)V
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/AuthTrace;->fail()V
    :goto_0
    return-void
.end method

.method public final setGoogleLoginCallbacks(Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLogin;->googleLoginCallback:Lcom/shabakaty/usermanagement/utils/externalLogin/GoogleLoginCallback;

    return-void
.end method
