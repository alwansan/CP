.class public final synthetic Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda8;->f$0:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda8;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda8;->f$0:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda8;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->lambda$existing$6([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
