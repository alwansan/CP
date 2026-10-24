.class Lcom/cinemana/pro/logo/TmdbSettings$1;
.super Ljava/lang/Object;
.source "TmdbSettings.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/TmdbSettings;->listener(Ljava/lang/String;Lcom/cinemana/pro/logo/TmdbSettings$Action;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lcom/cinemana/pro/logo/TmdbSettings$Action;


# direct methods
.method constructor <init>(Lcom/cinemana/pro/logo/TmdbSettings$Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/cinemana/pro/logo/TmdbSettings$1;->val$action:Lcom/cinemana/pro/logo/TmdbSettings$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 31
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    .line 32
    const-string v0, "onClick"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/cinemana/pro/logo/TmdbSettings$1;->val$action:Lcom/cinemana/pro/logo/TmdbSettings$Action;

    invoke-interface {p1}, Lcom/cinemana/pro/logo/TmdbSettings$Action;->run()V

    return-object v1

    .line 33
    :cond_0
    const-string v0, "hashCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 34
    :cond_1
    const-string v0, "equals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    aget-object p3, p3, p2

    if-ne p1, p3, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 35
    :cond_3
    return-object v1
.end method
