.class public final synthetic Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/shabakaty/cinemana/ca1/BatchDownload$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ca1/BatchDownload;->lambda$await$4(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Object;)V

    return-void
.end method
