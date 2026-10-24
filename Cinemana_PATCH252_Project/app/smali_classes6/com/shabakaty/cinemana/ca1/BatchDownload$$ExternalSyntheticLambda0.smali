.class public final synthetic Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->lambda$await$2([Ljava/lang/Object;ZLjava/util/concurrent/CountDownLatch;Ljava/lang/Object;)V

    return-void
.end method
