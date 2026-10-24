.class public final Lcom/shabakaty/downloader/ff;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/shabakaty/downloader/gf;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/shabakaty/downloader/zl2;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/xd5;

    invoke-direct {v1}, Lcom/shabakaty/downloader/xd5;-><init>()V

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/shabakaty/downloader/ff;->a:Lcom/google/android/gms/common/api/a;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/zl2;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/ff;->b:Lcom/shabakaty/downloader/zl2;

    return-void
.end method
