.class Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$1;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->installObserver(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$1;->val$activity:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 54
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    .line 55
    const-string v0, "onChanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 56
    if-eqz p3, :cond_0

    array-length p1, p3

    if-lez p1, :cond_0

    aget-object p1, p3, v1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 57
    :goto_0
    iget-object p2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$1;->val$activity:Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->access$000(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    return-object v2

    .line 60
    :cond_1
    const-string v0, "toString"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "CinemanaSequentialSubtitleObserver"

    return-object p1

    .line 61
    :cond_2
    const-string v0, "hashCode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 62
    :cond_3
    const-string v0, "equals"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    array-length p2, p3

    if-lez p2, :cond_4

    aget-object p2, p3, v1

    if-ne p1, p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 63
    :cond_5
    return-object v2
.end method
