.class Lcom/shabakaty/cinemana/ca1/BatchDownload$2;
.super Ljava/lang/Object;
.source "BatchDownload.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/BatchDownload;->proxy(Ljava/lang/String;Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$2;->val$cb:Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 62
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "equals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    aget-object p2, p3, v2

    if-ne p1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "CA1 callback"

    return-object p1

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$2;->val$cb:Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;

    const/4 p2, 0x0

    if-eqz p3, :cond_5

    array-length v0, p3

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    aget-object p3, p3, v2

    goto :goto_1

    :cond_5
    :goto_0
    move-object p3, p2

    :goto_1
    invoke-interface {p1, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;->run(Ljava/lang/Object;)V

    return-object p2
.end method
