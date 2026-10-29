.class public final Lcom/shabakaty/cinemana/local/PosterFallback;
.super Ljava/lang/Object;
.source "PosterFallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/local/PosterFallback$State;
    }
.end annotation


# static fields
.field private static final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/shabakaty/cinemana/local/PosterFallback$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/PosterFallback;->states:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static controller(Landroid/view/View;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Lcom/shabakaty/cinemana/local/PosterFallback;->states:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/local/PosterFallback$State;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :try_start_10
    const-string p0, "com.facebook.drawee.controller.ControllerListener"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    new-instance v6, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v1, p1}, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/local/PosterFallback$State;Ljava/lang/ref/WeakReference;Ljava/lang/Object;)V

    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "g"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception p0

    const-string p1, "poster_listener"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_45
    return-void
.end method

.method static synthetic lambda$controller$0(Ljava/lang/ref/WeakReference;Lcom/shabakaty/cinemana/local/PosterFallback$State;Ljava/lang/Object;)V
    .locals 5

    const-string v0, "poster_thumbnail_fallback key="

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_73

    sget-object v1, Lcom/shabakaty/cinemana/local/PosterFallback;->states:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_73

    iget-boolean v1, p1, Lcom/shabakaty/cinemana/local/PosterFallback$State;->attempted:Z

    if-nez v1, :cond_73

    iget-object v1, p1, Lcom/shabakaty/cinemana/local/PosterFallback$State;->thumbnail:Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/PosterFallback;->valid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p1, Lcom/shabakaty/cinemana/local/PosterFallback$State;->primary:Ljava/lang/String;

    iget-object v2, p1, Lcom/shabakaty/cinemana/local/PosterFallback$State;->thumbnail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_73

    :cond_29
    :try_start_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getController"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_3f

    return-void

    :cond_3f
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/shabakaty/cinemana/local/PosterFallback$State;->attempted:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/shabakaty/cinemana/local/PosterFallback$State;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setImageURI"

    new-array v2, p2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/shabakaty/cinemana/local/PosterFallback$State;->thumbnail:Ljava/lang/String;

    aput-object p1, p2, v3

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6c} :catch_6d

    goto :goto_73

    :catch_6d
    move-exception p0

    const-string p1, "poster_fallback"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    return-void
.end method

.method static synthetic lambda$controller$1(Lcom/shabakaty/cinemana/local/PosterFallback$State;Ljava/lang/ref/WeakReference;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p4

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne p4, v1, :cond_35

    const-string p0, "hashCode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p0, "equals"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    const/4 p0, 0x0

    aget-object p1, p5, p0

    if-ne p3, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_32
    const-string p0, "LocalPosterListener"

    return-object p0

    :cond_35
    const-string p3, "b"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_50

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "poster_ready key="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/shabakaty/cinemana/local/PosterFallback$State;->key:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    :cond_50
    const-string p3, "c"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_97

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "poster_failed key="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/shabakaty/cinemana/local/PosterFallback$State;->key:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " type="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_7b

    array-length p4, p5

    if-le p4, v2, :cond_7b

    aget-object p4, p5, v2

    instance-of p5, p4, Ljava/lang/Throwable;

    if-eqz p5, :cond_7b

    check-cast p4, Ljava/lang/Throwable;

    invoke-static {p4}, Lcom/shabakaty/cinemana/local/LocalRuntime;->causeTypes(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    goto :goto_7d

    :cond_7b
    const-string p4, "unknown"

    :goto_7d
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_97

    new-instance p4, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda1;

    invoke-direct {p4, p1, p0, p2}, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ref/WeakReference;Lcom/shabakaty/cinemana/local/PosterFallback$State;Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_97
    const/4 p0, 0x0

    return-object p0
.end method

.method public static source(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "poster_begin key="

    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_info_poster"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "simpleDraweeView2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_71

    if-nez v1, :cond_1f

    return-object p1

    :cond_1f
    const-string v1, ""

    if-nez p1, :cond_25

    move-object v2, v1

    goto :goto_26

    :cond_25
    move-object v2, p1

    :goto_26
    if-nez p2, :cond_29

    move-object p2, v1

    :cond_29
    :try_start_29
    invoke-static {v2}, Lcom/shabakaty/cinemana/local/PosterFallback;->valid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {p2}, Lcom/shabakaty/cinemana/local/PosterFallback;->valid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    move-object v2, p2

    :cond_36
    new-instance v1, Lcom/shabakaty/cinemana/local/PosterFallback$State;

    invoke-direct {v1, v2, p2}, Lcom/shabakaty/cinemana/local/PosterFallback$State;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/shabakaty/cinemana/local/PosterFallback;->states:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/shabakaty/cinemana/local/PosterFallback$State;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " source="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/PosterFallback;->valid(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " thumbnail="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/shabakaty/cinemana/local/PosterFallback;->valid(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6d} :catch_71

    if-eqz p0, :cond_70

    const/4 v2, 0x0

    :cond_70
    return-object v2

    :catch_71
    return-object p1
.end method

.method private static valid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p0, "https"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    const-string p0, "http"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    :cond_1e
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_25

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    :catch_25
    :cond_25
    return v0
.end method
