.class Lcom/cinemana/pro/logo/LogoFeature$2;
.super Ljava/lang/Object;
.source "LogoFeature.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/LogoFeature;->registerLifecycle(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 55
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResumed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p3, v0

    invoke-static {v1}, Lcom/cinemana/pro/logo/LogoFeature;->access$400(Ljava/lang/Object;)V

    aget-object v1, p3, v0

    invoke-static {v1}, Lcom/cinemana/pro/logo/PerformanceTuner;->onResume(Ljava/lang/Object;)V

    .line 56
    :cond_0
    if-eqz p3, :cond_2

    array-length v1, p3

    if-lez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityPaused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityDestroyed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    aget-object v1, p3, v0

    invoke-static {v1}, Lcom/cinemana/pro/logo/LogoFeature;->access$500(Ljava/lang/Object;)V

    aget-object v1, p3, v0

    invoke-static {v1}, Lcom/cinemana/pro/logo/PerformanceTuner;->onPause(Ljava/lang/Object;)V

    .line 57
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hashCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 58
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "equals"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    array-length p2, p3

    if-lez p2, :cond_4

    aget-object p2, p3, v0

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 59
    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
