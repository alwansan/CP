.class public Lcom/facebook/login/LoginManager$LoginLoggerHolder;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginLoggerHolder"
.end annotation


# static fields
.field public static a:Lcom/facebook/login/LoginLogger;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    monitor-enter v0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    sget-object p0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 4
    sget-object p0, Lcom/facebook/FacebookSdk;->i:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    goto :goto_1

    .line 6
    :cond_1
    :try_start_1
    sget-object v1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->a:Lcom/facebook/login/LoginLogger;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/facebook/login/LoginLogger;

    sget-object v2, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 8
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 9
    sget-object v2, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->a:Lcom/facebook/login/LoginLogger;

    .line 11
    :cond_2
    sget-object p0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->a:Lcom/facebook/login/LoginLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
