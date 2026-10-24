.class Lcom/cinemana/pro/logo/LogoFeature$5;
.super Ljava/lang/Object;
.source "LogoFeature.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/LogoFeature;->draw(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/Object;

.field final synthetic val$detail:Ljava/lang/Object;

.field final synthetic val$pair:[Ljava/lang/Object;

.field final synthetic val$rating:Ljava/lang/Object;

.field final synthetic val$rootRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$rootRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$detail:Ljava/lang/Object;

    iput-object p3, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$content:Ljava/lang/Object;

    iput-object p4, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$rating:Ljava/lang/Object;

    iput-object p5, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$pair:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 314
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    .line 315
    const-string v0, "onScrollChanged"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "onGlobalLayout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
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

    .line 320
    :cond_1
    const-string v0, "equals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    aget-object p3, p3, p2

    if-ne p1, p3, :cond_2

    move p2, v1

    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 321
    :cond_3
    return-object v1

    .line 316
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$rootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    :try_start_0
    iget-object p2, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$detail:Ljava/lang/Object;

    iget-object p3, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$content:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$rating:Ljava/lang/Object;

    iget-object v2, p0, Lcom/cinemana/pro/logo/LogoFeature$5;->val$pair:[Ljava/lang/Object;

    invoke-static {p1, p2, p3, v0, v2}, Lcom/cinemana/pro/logo/LogoFeature;->access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 317
    :cond_5
    :goto_1
    return-object v1
.end method
