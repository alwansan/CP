.class public final Lcom/shabakaty/downloader/ef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/j06;

    invoke-direct {v1}, Lcom/shabakaty/downloader/j06;-><init>()V

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/ff;->a:Lcom/google/android/gms/common/api/a;

    .line 4
    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/shabakaty/downloader/ef;->a:Lcom/google/android/gms/common/api/a;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/ff;->b:Lcom/shabakaty/downloader/zl2;

    return-void
.end method
