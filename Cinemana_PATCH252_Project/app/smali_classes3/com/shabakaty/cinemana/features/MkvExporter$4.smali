.class Lcom/shabakaty/cinemana/features/MkvExporter$4;
.super Ljava/lang/Object;
.source "MkvExporter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/features/MkvExporter;->invokeSuspendAndWait(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;J)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$emptyContext:Ljava/lang/Object;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$resumed:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1352
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$4;->val$emptyContext:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/features/MkvExporter$4;->val$resumed:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/cinemana/features/MkvExporter$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1354
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1355
    const-string v0, "getContext"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$4;->val$emptyContext:Ljava/lang/Object;

    return-object p1

    .line 1356
    :cond_0
    const-string v0, "resumeWith"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1357
    iget-object p1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$4;->val$resumed:[Ljava/lang/Object;

    if-eqz p3, :cond_1

    array-length p2, p3

    if-lez p2, :cond_1

    aget-object p2, p3, v2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    aput-object p2, p1, v2

    .line 1358
    iget-object p1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1359
    return-object v1

    .line 1361
    :cond_2
    const-string v0, "toString"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "CinemanaMkvContinuation"

    return-object p1

    .line 1362
    :cond_3
    const-string v0, "hashCode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1363
    :cond_4
    const-string v0, "equals"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    aget-object v1, p3, v2

    :goto_1
    if-ne p1, v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1364
    :cond_7
    return-object v1
.end method
