.class public final Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;
.super Ljava/lang/Object;
.source "UserManagementModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/usermanagement/di/UserManagementModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;",
        "",
        "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "configuration",
        "Lcom/shabakaty/usermanagement/data/api/UserManagementApi;",
        "provideApiService$usermanagement_debug",
        "(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)Lcom/shabakaty/usermanagement/data/api/UserManagementApi;",
        "provideApiService",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/usermanagement/di/UserManagementModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideApiService$usermanagement_debug(Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;)Lcom/shabakaty/usermanagement/data/api/UserManagementApi;
    .locals 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/kw1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/kw1;-><init>(Lcom/shabakaty/downloader/kw1$b;I)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/kw1$a;->u:Lcom/shabakaty/downloader/kw1$a;

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/kw1;->b:Lcom/shabakaty/downloader/kw1$a;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/a63$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/a63$a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/a63$a;->a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/a63;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/a63$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a63$a;-><init>()V

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/a63;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    move-object v0, v1

    .line 10
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/lt3$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/lt3$b;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/lt3$b;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/lt3$b;

    .line 12
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/lt3$b;->c(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/lt3$b;

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/lr1;

    invoke-direct {p1}, Lcom/shabakaty/downloader/lr1;-><init>()V

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/nr1;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/nr1;-><init>(Lcom/shabakaty/downloader/lr1;)V

    .line 15
    iget-object p1, v1, Lcom/shabakaty/downloader/lt3$b;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/wv3;->b()Lcom/shabakaty/downloader/wv3;

    move-result-object p1

    .line 17
    iget-object v0, v1, Lcom/shabakaty/downloader/lt3$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/lt3$b;->b()Lcom/shabakaty/downloader/lt3;

    move-result-object p1

    .line 19
    const-class v0, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/lt3;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Retrofit.Builder()\n     \u2026anagementApi::class.java)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/shabakaty/usermanagement/data/api/UserManagementApi;

    return-object p1
.end method
