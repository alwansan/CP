.class public final synthetic Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Throwable;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->lambda$await$3([Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Object;)V

    return-void
.end method
