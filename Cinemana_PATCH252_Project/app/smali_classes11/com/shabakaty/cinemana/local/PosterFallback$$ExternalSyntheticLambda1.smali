.class public final synthetic Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/ref/WeakReference;

.field public final synthetic f$1:Lcom/shabakaty/cinemana/local/PosterFallback$State;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/shabakaty/cinemana/local/PosterFallback$State;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda1;->f$0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda1;->f$1:Lcom/shabakaty/cinemana/local/PosterFallback$State;

    iput-object p3, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda1;->f$0:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda1;->f$1:Lcom/shabakaty/cinemana/local/PosterFallback$State;

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/PosterFallback$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/local/PosterFallback;->lambda$controller$0(Ljava/lang/ref/WeakReference;Lcom/shabakaty/cinemana/local/PosterFallback$State;Ljava/lang/Object;)V

    return-void
.end method
