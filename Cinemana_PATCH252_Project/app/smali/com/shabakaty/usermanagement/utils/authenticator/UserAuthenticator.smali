.class public final Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;
.super Ljava/lang/Object;
.source "UserAuthenticator.kt"

# interfaces
.implements Lcom/shabakaty/downloader/if;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0019\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;",
        "Lcom/shabakaty/downloader/if;",
        "Lcom/shabakaty/downloader/ju3;",
        "route",
        "Lcom/shabakaty/downloader/ws3;",
        "response",
        "Lcom/shabakaty/downloader/vr3;",
        "authenticate",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lcom/shabakaty/usermanagement/UserManagement;",
        "userManagement",
        "Lcom/shabakaty/usermanagement/UserManagement;",
        "getUserManagement",
        "()Lcom/shabakaty/usermanagement/UserManagement;",
        "<init>",
        "(Lcom/shabakaty/usermanagement/UserManagement;)V",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final userManagement:Lcom/shabakaty/usermanagement/UserManagement;


# direct methods
.method public constructor <init>(Lcom/shabakaty/usermanagement/UserManagement;)V
    .locals 1

    const-string v0, "userManagement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;->userManagement:Lcom/shabakaty/usermanagement/UserManagement;

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/shabakaty/downloader/ju3;Lcom/shabakaty/downloader/ws3;)Lcom/shabakaty/downloader/vr3;
    .locals 7

    const-string p1, "response"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;->userManagement:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->getNewToken()V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p1, ""

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;->userManagement:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->getBearerToken()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/usermanagement/utils/authenticator/UserAuthenticator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    :goto_0
    iget-object p2, p2, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request"

    .line 9
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    iget-object v2, p2, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 12
    iget-object v3, p2, Lcom/shabakaty/downloader/vr3;->c:Ljava/lang/String;

    .line 13
    iget-object v5, p2, Lcom/shabakaty/downloader/vr3;->e:Lcom/shabakaty/downloader/yr3;

    .line 14
    iget-object v0, p2, Lcom/shabakaty/downloader/vr3;->f:Ljava/util/Map;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p2, Lcom/shabakaty/downloader/vr3;->f:Ljava/util/Map;

    const-string v1, "<this>"

    .line 18
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 20
    :goto_1
    iget-object p2, p2, Lcom/shabakaty/downloader/vr3;->d:Lcom/shabakaty/downloader/ts1;

    .line 21
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object p2

    const-string v1, "authorization"

    const-string v4, "name"

    .line 22
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "value"

    invoke-static {p1, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v4, Lcom/shabakaty/downloader/ts1;->s:Lcom/shabakaty/downloader/ts1$b;

    .line 26
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/ts1$b;->a(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4, p1, v1}, Lcom/shabakaty/downloader/ts1$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ts1$a;->f(Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    .line 29
    invoke-virtual {p2, v1, p1}, Lcom/shabakaty/downloader/ts1$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    if-eqz v2, :cond_3

    .line 30
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ts1$a;->d()Lcom/shabakaty/downloader/ts1;

    move-result-object v4

    .line 31
    sget-object p1, Lcom/shabakaty/downloader/ry4;->a:[B

    const-string p1, "$this$toImmutableMap"

    .line 32
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    sget-object p1, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    goto :goto_2

    .line 35
    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "Collections.unmodifiableMap(LinkedHashMap(this))"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move-object v6, p1

    .line 36
    new-instance p1, Lcom/shabakaty/downloader/vr3;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/vr3;-><init>(Lcom/shabakaty/downloader/qw1;Ljava/lang/String;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/yr3;Ljava/util/Map;)V

    return-object p1

    .line 37
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "url == null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
