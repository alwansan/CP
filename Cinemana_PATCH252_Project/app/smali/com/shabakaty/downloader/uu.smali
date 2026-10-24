.class public final Lcom/shabakaty/downloader/uu;
.super Ljava/lang/Object;
.source "CameraXConfig.java"

# interfaces
.implements Lcom/shabakaty/downloader/qk4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/uu$a;,
        Lcom/shabakaty/downloader/uu$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/qk4<",
        "Lcom/shabakaty/downloader/tu;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/qt$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/mt$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/ix4$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Lcom/shabakaty/downloader/fu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/k83;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/shabakaty/downloader/qt$a;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.appConfig.cameraFactoryProvider"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/uu;->s:Lcom/shabakaty/downloader/o90$a;

    .line 4
    const-class v0, Lcom/shabakaty/downloader/mt$a;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.appConfig.deviceSurfaceManagerProvider"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/uu;->t:Lcom/shabakaty/downloader/o90$a;

    .line 7
    const-class v0, Lcom/shabakaty/downloader/ix4$b;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.appConfig.useCaseConfigFactoryProvider"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    sput-object v1, Lcom/shabakaty/downloader/uu;->u:Lcom/shabakaty/downloader/o90$a;

    .line 10
    const-class v0, Ljava/util/concurrent/Executor;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.appConfig.cameraExecutor"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    sput-object v1, Lcom/shabakaty/downloader/uu;->v:Lcom/shabakaty/downloader/o90$a;

    .line 13
    const-class v0, Landroid/os/Handler;

    .line 14
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.appConfig.schedulerHandler"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    sput-object v1, Lcom/shabakaty/downloader/uu;->w:Lcom/shabakaty/downloader/o90$a;

    .line 16
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.appConfig.minimumLoggingLevel"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    sput-object v1, Lcom/shabakaty/downloader/uu;->x:Lcom/shabakaty/downloader/o90$a;

    .line 19
    const-class v0, Lcom/shabakaty/downloader/fu;

    .line 20
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.appConfig.availableCamerasLimiter"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 21
    sput-object v1, Lcom/shabakaty/downloader/uu;->y:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/k83;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uu;->r:Lcom/shabakaty/downloader/k83;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/in3;->g(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/in3;->e(Lcom/shabakaty/downloader/jn3;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->c(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Lcom/shabakaty/downloader/o90$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lcom/shabakaty/downloader/o90$a;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->a(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->f(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/shabakaty/downloader/o90;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uu;->r:Lcom/shabakaty/downloader/k83;

    return-object v0
.end method

.method public synthetic m(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pk4;->a(Lcom/shabakaty/downloader/qk4;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic n(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/in3;->h(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic t(Ljava/lang/String;Lcom/shabakaty/downloader/o90$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/in3;->b(Lcom/shabakaty/downloader/jn3;Ljava/lang/String;Lcom/shabakaty/downloader/o90$b;)V

    return-void
.end method

.method public synthetic u(Lcom/shabakaty/downloader/o90$a;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/in3;->d(Lcom/shabakaty/downloader/jn3;Lcom/shabakaty/downloader/o90$a;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
