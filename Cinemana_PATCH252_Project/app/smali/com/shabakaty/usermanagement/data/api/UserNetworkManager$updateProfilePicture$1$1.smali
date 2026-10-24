.class public final Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1$1;
.super Ljava/lang/Object;
.source "UserNetworkManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/in1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1;->apply(Lcom/shabakaty/downloader/xs3;)Lcom/shabakaty/downloader/wj3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/in1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/xs3<",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "",
        "it",
        "Lcom/shabakaty/downloader/xs3;",
        "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
        "kotlin.jvm.PlatformType",
        "apply",
        "(Ljava/lang/Throwable;)Lcom/shabakaty/downloader/xs3;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1$1;

    invoke-direct {v0}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1$1;-><init>()V

    sput-object v0, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1$1;->INSTANCE:Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Throwable;)Lcom/shabakaty/downloader/xs3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/shabakaty/downloader/xs3<",
            "Lcom/shabakaty/usermanagement/data/model/response/UserInfoResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ws3$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ws3$a;-><init>()V

    const/16 v0, 0xc8

    .line 3
    iput v0, p1, Lcom/shabakaty/downloader/ws3$a;->c:I

    const-string v0, "OK"

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ws3$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ws3$a;

    sget-object v0, Lcom/shabakaty/downloader/mj3;->t:Lcom/shabakaty/downloader/mj3;

    .line 5
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ws3$a;->g(Lcom/shabakaty/downloader/mj3;)Lcom/shabakaty/downloader/ws3$a;

    new-instance v0, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    const-string v1, "http://localhost/"

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ws3$a;->h(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/ws3$a;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ws3$a;->a()Lcom/shabakaty/downloader/ws3;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/xs3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/xs3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/shabakaty/usermanagement/data/api/UserNetworkManager$updateProfilePicture$1$1;->apply(Ljava/lang/Throwable;)Lcom/shabakaty/downloader/xs3;

    move-result-object p1

    return-object p1
.end method
