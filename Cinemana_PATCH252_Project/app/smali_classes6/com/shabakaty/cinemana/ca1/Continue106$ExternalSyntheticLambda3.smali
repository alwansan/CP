.class public final Lcom/shabakaty/cinemana/ca1/Continue106$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "ContinueCardAlias300.java"
.implements Ljava/lang/Runnable;
.field private final ref:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Continue106$ExternalSyntheticLambda3;->ref:Ljava/lang/ref/WeakReference;
    return-void
.end method
.method public run()V
    .locals 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Continue106$ExternalSyntheticLambda3;->ref:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->lambda$card$5(Ljava/lang/ref/WeakReference;)V
    return-void
.end method
